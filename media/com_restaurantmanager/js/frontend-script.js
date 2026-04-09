/**
 * Restaurant Manager - Frontend JavaScript for Joomla 6
 */

(function() {
    'use strict';
    
    let currentTable = null;
    let refreshInterval = null;
    
    document.addEventListener('DOMContentLoaded', function() {
        
        // Get options from Joomla
        const options = Joomla.getOptions('com_restaurantmanager');
        if (!options) return;
        
        // Initialize clock
        updateWaiterClock();
        setInterval(updateWaiterClock, 1000);
        
        // Initialize
        initWaiterInterface(options);
    });
    
    /**
     * Update waiter clock
     */
    function updateWaiterClock() {
        const clockElement = document.getElementById('rbm-waiter-clock');
        if (!clockElement) return;
        
        const now = new Date();
        const hours = String(now.getHours()).padStart(2, '0');
        const minutes = String(now.getMinutes()).padStart(2, '0');
        const seconds = String(now.getSeconds()).padStart(2, '0');
        clockElement.textContent = hours + ':' + minutes + ':' + seconds;
    }
    
    /**
     * Initialize Waiter Interface
     */
    function initWaiterInterface(options) {
        // Table buttons
        const tableButtons = document.querySelectorAll('.rbm-table-btn');
        tableButtons.forEach(function(button) {
            button.addEventListener('click', function() {
                const tableNumber = parseInt(this.dataset.table);
                selectTable(tableNumber, options);
            });
        });
        
        // Order form submission
        const orderForm = document.getElementById('rbm-add-order-form');
        if (orderForm) {
            orderForm.addEventListener('submit', function(e) {
                e.preventDefault();
                addOrder(options);
            });
        }
        
        // Use event delegation for Send to Kitchen button (created dynamically)
        document.addEventListener('click', function(e) {
            if (e.target.id === 'rbm-send-to-kitchen' || e.target.closest('#rbm-send-to-kitchen')) {
                if (currentTable && confirm('Send all orders for this table to kitchen?')) {
                    sendToKitchen(currentTable, options);
                }
            }
            
            // Clear Table button
            if (e.target.id === 'rbm-clear-table' || e.target.closest('#rbm-clear-table')) {
                if (currentTable && confirm('Clear all orders for this table?')) {
                    clearTable(currentTable, options);
                }
            }
            
            // Delete order button
            if (e.target.closest('.rbm-delete-order-btn')) {
                const button = e.target.closest('.rbm-delete-order-btn');
                const orderId = parseInt(button.dataset.orderId);
                if (confirm('Delete this order?')) {
                    deleteOrder(orderId, currentTable, options);
                }
            }
        });
        
        // Load table statuses
        loadTableStatuses(options);
        
        // Auto-refresh table statuses every 15 seconds
        refreshInterval = setInterval(function() {
            loadTableStatuses(options);
            if (currentTable) {
                loadTableOrders(currentTable, options);
            }
        }, 15000);
    }
    
    /**
     * Select a table
     */
    function selectTable(tableNumber, options) {
        currentTable = tableNumber;
        
        // Update UI
        const tableButtons = document.querySelectorAll('.rbm-table-btn');
        tableButtons.forEach(function(btn) {
            btn.classList.remove('active');
        });
        
        const selectedButton = document.querySelector('.rbm-table-btn[data-table="' + tableNumber + '"]');
        if (selectedButton) {
            selectedButton.classList.add('active');
        }
        
        // Show table section
        document.getElementById('rbm-table-section').style.display = 'block';
        document.getElementById('rbm-current-table').textContent = tableNumber;
        document.getElementById('rbm-order-table').value = tableNumber;
        
        // Load orders for this table
        loadTableOrders(tableNumber, options);
        
        // Reset form
        document.getElementById('rbm-add-order-form').reset();
        document.getElementById('rbm-order-table').value = tableNumber;
    }
    
    /**
     * Load table statuses
     */
    function loadTableStatuses(options) {
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'waiter.getTableStatuses');
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success && data.statuses) {
                updateTableButtons(data.statuses);
            }
        })
        .catch(error => {
            console.error('Error loading table statuses:', error);
        });
    }
    
    /**
     * Update table buttons based on statuses
     */
    function updateTableButtons(statuses) {
        for (let tableNum in statuses) {
            const button = document.querySelector('.rbm-table-btn[data-table="' + tableNum + '"]');
            if (button) {
                if (statuses[tableNum]) {
                    button.classList.add('has-orders');
                } else {
                    button.classList.remove('has-orders');
                }
            }
        }
    }
    
    /**
     * Load orders for a table
     */
    function loadTableOrders(tableNumber, options) {
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'waiter.getOrders');
        formData.append('table_number', tableNumber);
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                displayOrders(data.orders || []);
            }
        })
        .catch(error => {
            console.error('Error loading orders:', error);
        });
    }
    
    /**
     * Display orders in the list
     */
    function displayOrders(orders) {
        const ordersList = document.getElementById('rbm-orders-list');
        const tableActions = document.getElementById('rbm-table-actions');
        
        if (orders.length === 0) {
            ordersList.innerHTML = '<p class="rbm-no-orders">No orders yet for this table</p>';
            if (tableActions) tableActions.style.display = 'none';
            return;
        }
        
        let html = '';
        let total = 0;
        
        orders.forEach(function(order) {
            const itemTotal = parseFloat(order.item_price) * parseInt(order.quantity);
            total += itemTotal;
            
            // Check if order was already sent to kitchen
            const sentToKitchen = order.sent_to_kitchen == 1;
            const disabledClass = sentToKitchen ? 'disabled' : '';
            
            html += '<div class="rbm-order-item" data-order-id="' + order.id + '">';
            html += '  <div class="rbm-order-item-header">';
            html += '    <span class="rbm-order-item-name">' + escapeHtml(order.item_name) + '</span>';
            html += '    <div class="rbm-order-item-actions">';
            
            if (!sentToKitchen) {
                html += '      <button type="button" class="rbm-delete-order-btn" data-order-id="' + order.id + '" title="Delete">';
                html += '        <span class="icon-delete"></span>';
                html += '      </button>';
            } else {
                html += '      <span class="rbm-sent-badge">Sent to Kitchen</span>';
            }
            
            html += '    </div>';
            html += '  </div>';
            html += '  <div class="rbm-order-item-details">';
            html += '    <div class="rbm-order-quantity-price">';
            html += '      <span>Quantity: ' + order.quantity + ' × €' + parseFloat(order.item_price).toFixed(2) + '</span>';
            html += '      <span class="rbm-order-item-price">€' + itemTotal.toFixed(2) + '</span>';
            html += '    </div>';
            html += '    <div>Ordered: ' + formatDateTime(order.order_date) + '</div>';
            html += '  </div>';
            
            if (order.notes) {
                html += '  <div class="rbm-order-item-notes">';
                html += '    Note: ' + escapeHtml(order.notes);
                html += '  </div>';
            }
            
            html += '</div>';
        });
        
        html += '<div style="margin-top: 15px; padding-top: 15px; border-top: 2px solid #333; text-align: right; font-size: 18px; font-weight: bold;">';
        html += 'Total: €' + total.toFixed(2);
        html += '</div>';
        
        ordersList.innerHTML = html;
        
        // Show action buttons when there are orders
        if (tableActions) tableActions.style.display = 'flex';
    }
    
    /**
     * Add order
     */
    function addOrder(options) {
        const form = document.getElementById('rbm-add-order-form');
        const formData = new FormData(form);
        formData.append(options.token, '1');
        formData.append('task', 'waiter.addOrder');
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                showMessage(data.message || 'Order added successfully', 'success');
                
                // Reset form
                form.reset();
                document.getElementById('rbm-order-table').value = currentTable;
                
                // Reload orders
                loadTableOrders(currentTable, options);
                loadTableStatuses(options);
            } else {
                showMessage(data.message || 'Error adding order', 'danger');
            }
        })
        .catch(error => {
            showMessage('Error adding order', 'danger');
            console.error('Error:', error);
        });
    }
    
    /**
     * Send table orders to kitchen
     */
    function sendToKitchen(tableNumber, options) {
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'waiter.sendToKitchen');
        formData.append('table_number', tableNumber);
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(result => {
            if (result.success) {
                showMessage('Orders sent to kitchen successfully!', 'success');
                loadTableOrders(tableNumber, options);
                loadTableStatuses(options);
            } else {
                showMessage(result.message || 'Error sending orders to kitchen', 'danger');
            }
        })
        .catch(error => {
            showMessage('Error sending orders to kitchen', 'danger');
            console.error('Error:', error);
        });
    }
    
    /**
     * Clear table orders
     */
    function clearTable(tableNumber, options) {
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'waiter.clearTable');
        formData.append('table_number', tableNumber);
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(result => {
            if (result.success) {
                showMessage('Table cleared successfully!', 'success');
                loadTableOrders(tableNumber, options);
                loadTableStatuses(options);
            } else {
                showMessage(result.message || 'Error clearing table', 'danger');
            }
        })
        .catch(error => {
            showMessage('Error clearing table', 'danger');
            console.error('Error:', error);
        });
    }
    
    /**
     * Edit order
     */
    
    /**
     * Delete order
     */
    function deleteOrder(orderId, tableNumber, options) {
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'waiter.deleteOrder');
        formData.append('order_id', orderId);
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(result => {
            if (result.success) {
                showMessage('Order deleted successfully!', 'success');
                loadTableOrders(tableNumber, options);
                loadTableStatuses(options);
            } else {
                showMessage(result.message || 'Error deleting order', 'danger');
            }
        })
        .catch(error => {
            showMessage('Error deleting order', 'danger');
            console.error('Error:', error);
        });
    }
    
    /**
     * Show message
     */
    function showMessage(message, type) {
        const messageBox = document.getElementById('rbm-message');
        if (!messageBox) return;
        
        messageBox.className = 'alert alert-' + type;
        messageBox.textContent = message;
        messageBox.style.display = 'block';
        
        setTimeout(function() {
            messageBox.style.display = 'none';
        }, 3000);
    }
    
    /**
     * Format datetime
     */
    function formatDateTime(dateString) {
        const date = new Date(dateString);
        return date.toLocaleString();
    }
    
    /**
     * Escape HTML
     */
    function escapeHtml(text) {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
    }
    
})();
