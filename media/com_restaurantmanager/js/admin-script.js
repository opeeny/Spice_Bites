/**
 * Restaurant Manager - Admin JavaScript for Joomla 6
 */

(function() {
    'use strict';
    
    let autoRefreshInterval = null;
    
    document.addEventListener('DOMContentLoaded', function() {
        
        // Initialize clock
        initClock();
        
        // Get options from Joomla
        const options = Joomla.getOptions('com_restaurantmanager');
        if (!options) return;
        
        // Menu Management
        const menuTable = document.getElementById('rbm-menu-table');
        if (menuTable) {
            initMenuManagement(options);
        }
        
        // Cashier Dashboard
        const cashierDashboard = document.querySelector('.rbm-admin-container');
        if (cashierDashboard && document.getElementById('rbm-today-revenue')) {
            initCashierDashboard(options);
        }
        
        // Reports Page
        const reportsPage = document.querySelector('.rbm-reports-section');
        if (reportsPage) {
            initReports(options);
        }
    });
    
    /**
     * Initialize clock
     */
    function initClock() {
        function updateClock() {
            const clockElement = document.getElementById('rbm-toolbar-clock');
            if (!clockElement) return;
            
            const now = new Date();
            const hours = String(now.getHours()).padStart(2, '0');
            const minutes = String(now.getMinutes()).padStart(2, '0');
            clockElement.textContent = hours + ':' + minutes;
        }
        
        updateClock();
        setInterval(updateClock, 1000);
    }
    
    /**
     * View table orders in modal
     */
    function viewTableOrders(tableNumber, options) {
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'cashier.getData');
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(result => {
            if (result.success && result.data) {
                displayOrderModal(tableNumber, result.data.orders);
            }
        })
        .catch(error => {
            console.error('Error loading orders:', error);
        });
    }
    
    /**
     * Display order modal
     */
    function displayOrderModal(tableNumber, allOrders) {
        // Filter orders for this table
        const tableOrders = allOrders.filter(order => order.table_number == tableNumber);
        
        const modal = document.getElementById('rbm-order-modal');
        const modalTable = document.getElementById('rbm-modal-table');
        const modalList = document.getElementById('rbm-modal-orders-list');
        
        modalTable.textContent = tableNumber;
        
        if (tableOrders.length === 0) {
            modalList.innerHTML = '<p style="text-align: center; color: #999; padding: 20px;">No orders for this table</p>';
        } else {
            let html = '';
            let total = 0;
            
            tableOrders.forEach(function(order) {
                const itemTotal = parseFloat(order.item_price) * parseInt(order.quantity);
                total += itemTotal;
                
                html += '<div class="rbm-order-detail-item">';
                html += '  <div class="rbm-order-detail-header">';
                html += '    <span class="rbm-order-detail-name">' + escapeHtml(order.item_name) + '</span>';
                html += '    <span class="rbm-order-detail-price">€' + itemTotal.toFixed(2) + '</span>';
                html += '  </div>';
                html += '  <div class="rbm-order-detail-info">';
                html += '    Quantity: ' + order.quantity + ' × €' + parseFloat(order.item_price).toFixed(2);
                html += '    <br>Ordered: ' + formatDateTime(order.order_date);
                html += '  </div>';
                
                if (order.notes) {
                    html += '  <div class="rbm-order-detail-notes">';
                    html += '    Note: ' + escapeHtml(order.notes);
                    html += '  </div>';
                }
                
                html += '</div>';
            });
            
            html += '<div class="rbm-order-detail-total">';
            html += 'Total: €' + total.toFixed(2);
            html += '</div>';
            
            modalList.innerHTML = html;
        }
        
        modal.style.display = 'flex';
    }
    
    /**
     * Close order modal
     */
    window.closeOrderModal = function() {
        const modal = document.getElementById('rbm-order-modal');
        modal.style.display = 'none';
    }
    
    /**
     * Format datetime
     */
    function formatDateTime(dateString) {
        const date = new Date(dateString);
        return date.toLocaleString();
    }
    
    /**
     * Initialize Menu Management
     */
    function initMenuManagement(options) {
        // Save item buttons
        document.addEventListener('click', function(e) {
            if (e.target.closest('.rbm-save-item')) {
                const button = e.target.closest('.rbm-save-item');
                const row = button.closest('tr');
                const itemId = parseInt(button.dataset.id);
                saveMenuItem(itemId, row, options);
            }
            
            // Delete item buttons
            if (e.target.closest('.rbm-delete-item')) {
                const button = e.target.closest('.rbm-delete-item');
                const row = button.closest('tr');
                const itemId = parseInt(button.dataset.id);
                if (confirm('Are you sure you want to delete this item?')) {
                    deleteMenuItem(itemId, row, options);
                }
            }
        });
    }
    
    /**
     * Save single menu item
     */
    function saveMenuItem(itemId, row, options) {
        const itemNumber = parseInt(row.querySelector('.item-number').value);
        const itemName = row.querySelector('.item-name').value.trim();
        const itemPrice = parseFloat(row.querySelector('.item-price').value);
        const itemDescription = row.querySelector('.item-description').value.trim();
        const isActive = row.querySelector('.item-active').checked ? 1 : 0;
        
        if (!itemName) {
            alert('Item name is required');
            return;
        }
        
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'menu.saveItem');
        formData.append('id', itemId);
        formData.append('item_number', itemNumber);
        formData.append('item_name', itemName);
        formData.append('item_price', itemPrice);
        formData.append('item_description', itemDescription);
        formData.append('is_active', isActive);
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(result => {
            if (result.success) {
                showMessage(result.message, 'success');
                // Flash the row to indicate save
                row.style.backgroundColor = '#d4edda';
                setTimeout(() => {
                    row.style.backgroundColor = '';
                }, 1000);
            } else {
                showMessage(result.message, 'error');
            }
        })
        .catch(error => {
            console.error('Error saving item:', error);
            showMessage('Error saving item', 'error');
        });
    }
    
    /**
     * Delete menu item
     */
    function deleteMenuItem(itemId, row, options) {
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'menu.deleteItem');
        formData.append('id', itemId);
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(result => {
            if (result.success) {
                row.remove();
                showMessage(result.message, 'success');
            } else {
                showMessage(result.message, 'error');
            }
        })
        .catch(error => {
            console.error('Error deleting item:', error);
            showMessage('Error deleting item', 'error');
        });
    }
    
    /**
     * Add new menu item row
     */
    function addMenuItem() {
        const tbody = document.getElementById('rbm-menu-items');
        const newRow = document.createElement('tr');
        newRow.innerHTML = `
            <td><input type="number" class="form-control item-number" value="" min="1" required></td>
            <td><input type="text" class="form-control item-name" value="" required></td>
            <td>
                <div class="input-group">
                    <span class="input-group-text">€</span>
                    <input type="number" class="form-control item-price" value="0.00" step="0.01" min="0" required>
                </div>
            </td>
            <td><textarea class="form-control item-description" rows="2"></textarea></td>
            <td class="text-center">
                <input type="checkbox" class="form-check-input item-active" checked>
            </td>
            <td class="text-center">
                <button type="button" class="btn btn-sm btn-danger rbm-delete-item">
                    <span class="icon-delete"></span>
                </button>
            </td>
        `;
        tbody.appendChild(newRow);
    }
    
    /**
     * Save menu items
     */
    function saveMenu(options) {
        const menuItems = [];
        const rows = document.querySelectorAll('#rbm-menu-items tr');
        
        rows.forEach(function(row) {
            const itemNumber = row.querySelector('.item-number').value;
            const itemName = row.querySelector('.item-name').value;
            const itemPrice = row.querySelector('.item-price').value;
            const itemDescription = row.querySelector('.item-description').value;
            const isActive = row.querySelector('.item-active').checked ? 1 : 0;
            
            if (itemNumber && itemName) {
                menuItems.push({
                    item_number: parseInt(itemNumber),
                    item_name: itemName,
                    item_price: parseFloat(itemPrice),
                    item_description: itemDescription,
                    is_active: isActive
                });
            }
        });
        
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('menu_items', JSON.stringify(menuItems));
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                showMessage(data.message || 'Menu saved successfully', 'success');
            } else {
                showMessage(data.message || 'Error saving menu', 'danger');
            }
        })
        .catch(error => {
            showMessage('Error saving menu', 'danger');
            console.error('Error:', error);
        });
    }
    
    /**
     * Initialize Cashier Dashboard
     */
    function initCashierDashboard(options) {
        loadCashierData(options);
        
        // Auto-refresh every 10 seconds
        autoRefreshInterval = setInterval(function() {
            loadCashierData(options);
        }, 10000);
        
        // Mark as paid buttons
        document.addEventListener('click', function(e) {
            if (e.target.closest('.rbm-mark-paid')) {
                const button = e.target.closest('.rbm-mark-paid');
                const tableNumber = parseInt(button.dataset.table);
                markTableAsPaid(tableNumber, options);
            }
            
            // View orders button
            if (e.target.closest('.rbm-view-orders')) {
                const button = e.target.closest('.rbm-view-orders');
                const tableNumber = parseInt(button.dataset.table);
                viewTableOrders(tableNumber, options);
            }
        });
    }
    
    /**
     * Load cashier data
     */
    function loadCashierData(options) {
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'cashier.getData');
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(result => {
            if (result.success && result.data) {
                updateCashierDisplay(result.data);
            }
        })
        .catch(error => {
            console.error('Error loading cashier data:', error);
        });
    }
    
    /**
     * Update cashier display
     */
    function updateCashierDisplay(data) {
        // Update today's revenue
        const revenueElem = document.getElementById('rbm-today-revenue');
        if (revenueElem) {
            revenueElem.textContent = '€' + parseFloat(data.todayRevenue || 0).toFixed(2);
        }
        
        // Update table cards - get all cards dynamically
        const tableCards = document.querySelectorAll('.rbm-table-card[data-table]');
        tableCards.forEach(function(card) {
            const tableNumber = parseInt(card.dataset.table);
            const amount = data.tableTotals[tableNumber] || 0;
            const kitchenStatus = data.tableKitchenStatus[tableNumber] || 'none';
            const amountElem = card.querySelector('.rbm-table-amount');
            const statusElem = card.querySelector('.rbm-table-status');
            const paidButton = card.querySelector('.rbm-mark-paid');
            const viewButton = card.querySelector('.rbm-view-orders');
            
            if (amount > 0) {
                card.classList.add('occupied');
                amountElem.textContent = '€' + parseFloat(amount).toFixed(2);
                
                // Set status based on kitchen status
                if (kitchenStatus === 'in_progress') {
                    statusElem.textContent = 'Service in Progress';
                    statusElem.className = 'rbm-table-status status-in-progress';
                } else if (kitchenStatus === 'completed') {
                    statusElem.textContent = 'Service Completed';
                    statusElem.className = 'rbm-table-status status-completed';
                } else {
                    statusElem.textContent = 'Occupied';
                    statusElem.className = 'rbm-table-status';
                }
                
                if (paidButton) paidButton.style.display = 'inline-block';
                if (viewButton) viewButton.style.display = 'inline-block';
            } else {
                card.classList.remove('occupied');
                amountElem.textContent = '€0.00';
                statusElem.textContent = 'Free';
                statusElem.className = 'rbm-table-status';
                if (paidButton) paidButton.style.display = 'none';
                if (viewButton) viewButton.style.display = 'none';
            }
        });
    }
    
    /**
     * Mark table as paid
     */
    function markTableAsPaid(tableNumber, options) {
        if (!confirm('Mark table ' + tableNumber + ' as paid?')) {
            return;
        }
        
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'cashier.markPaid');
        formData.append('table_number', tableNumber);
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                showMessage(data.message || 'Table marked as paid', 'success');
                loadCashierData(options);
            } else {
                showMessage(data.message || 'Error marking table as paid', 'danger');
            }
        })
        .catch(error => {
            showMessage('Error marking table as paid', 'danger');
            console.error('Error:', error);
        });
    }
    
    /**
     * Initialize Reports
     */
    function initReports(options) {
        loadReportsData(options);
    }
    
    /**
     * Load reports data
     */
    function loadReportsData(options) {
        const formData = new FormData();
        formData.append(options.token, '1');
        formData.append('task', 'reports.getData');
        
        fetch(options.ajaxUrl, {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(result => {
            if (result.success && result.data) {
                updateReportsDisplay(result.data);
            } else {
                console.error('Error loading reports:', result.message);
            }
        })
        .catch(error => {
            console.error('Error loading reports:', error);
        });
    }
    
    /**
     * Update reports display
     */
    function updateReportsDisplay(data) {
        // Update summary cards
        document.getElementById('rbm-report-today').textContent = '€' + parseFloat(data.today || 0).toFixed(2);
        document.getElementById('rbm-report-week').textContent = '€' + parseFloat(data.week || 0).toFixed(2);
        document.getElementById('rbm-report-month').textContent = '€' + parseFloat(data.month || 0).toFixed(2);
        
        // Update top dishes table
        const tbody = document.getElementById('rbm-top-dishes');
        if (tbody && data.topDishes) {
            tbody.innerHTML = '';
            
            if (data.topDishes.length === 0) {
                tbody.innerHTML = '<tr><td colspan="3" class="text-center">No data available</td></tr>';
                return;
            }
            
            data.topDishes.forEach(function(dish) {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${escapeHtml(dish.item_name)} (#${dish.item_number})</td>
                    <td>${dish.total_quantity}</td>
                    <td>€${parseFloat(dish.total_revenue).toFixed(2)}</td>
                `;
                tbody.appendChild(row);
            });
        }
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
     * Escape HTML
     */
    function escapeHtml(text) {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
    }
    
})();
