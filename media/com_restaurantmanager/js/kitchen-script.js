/**
 * Kitchen Interface JavaScript
 */

document.addEventListener('DOMContentLoaded', function() {
    const options = Joomla.getOptions('com_restaurantmanager_kitchen');
    
    if (options) {
        initKitchen(options);
    }
});

/**
 * Initialize kitchen interface
 */
function initKitchen(options) {
    // Update clock
    updateKitchenClock();
    setInterval(updateKitchenClock, 1000);
    
    // Load initial orders
    loadKitchenOrders(options);
    
    // Auto-refresh every 5 seconds
    setInterval(function() {
        loadKitchenOrders(options);
    }, 5000);
    
    // Event delegation for complete buttons
    document.addEventListener('change', function(e) {
        if (e.target.classList.contains('rbm-complete-checkbox')) {
            const orderId = parseInt(e.target.dataset.orderId);
            if (e.target.checked) {
                completeItem(orderId, options);
            }
        }
    });
    
    document.addEventListener('click', function(e) {
        if (e.target.closest('.rbm-complete-table-btn')) {
            const button = e.target.closest('.rbm-complete-table-btn');
            const tableNumber = parseInt(button.dataset.table);
            completeTable(tableNumber, options, button);
        }
    });
}

/**
 * Update kitchen clock
 */
function updateKitchenClock() {
    const clockElement = document.getElementById('rbm-kitchen-clock-time');
    if (!clockElement) return;
    
    const now = new Date();
    const hours = String(now.getHours()).padStart(2, '0');
    const minutes = String(now.getMinutes()).padStart(2, '0');
    const seconds = String(now.getSeconds()).padStart(2, '0');
    clockElement.textContent = hours + ':' + minutes + ':' + seconds;
}

/**
 * Load kitchen orders
 */
function loadKitchenOrders(options) {
    const formData = new FormData();
    formData.append(options.token, '1');
    formData.append('task', 'kitchen.getOrders');
    
    fetch(options.ajaxUrl, {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(result => {
        if (result.success) {
            displayKitchenOrders(result.orders);
        }
    })
    .catch(error => {
        console.error('Error loading kitchen orders:', error);
    });
}

/**
 * Display kitchen orders
 */
function displayKitchenOrders(orders) {
    const container = document.getElementById('rbm-kitchen-orders');
    
    if (!orders || orders.length === 0) {
        container.innerHTML = `
            <div class="rbm-no-orders">
                <div class="rbm-no-orders-icon">👨‍🍳</div>
                <h2>No Orders in Kitchen</h2>
                <p>Waiting for new orders...</p>
            </div>
        `;
        return;
    }
    
    let html = '';
    
    orders.forEach(table => {
        const allCompleted = table.all_completed;
        const completedClass = allCompleted ? 'all-completed' : '';
        
        html += `
            <div class="rbm-table-order ${completedClass}">
                <div class="rbm-table-header">
                    <div class="rbm-table-number">TABLE ${table.table_number}</div>
                    <div class="rbm-sent-time">Sent: ${formatTime(table.sent_date)}</div>
                </div>
                
                <div class="rbm-order-items">
        `;
        
        table.items.forEach(item => {
            const isCompleted = item.kitchen_status === 'completed';
            const itemClass = isCompleted ? 'completed' : 'pending';
            const checked = isCompleted ? 'checked disabled' : '';
            
            // Calculate preparation time
            let prepTime = '';
            if (isCompleted && item.kitchen_completed_date && item.sent_to_kitchen_date) {
                const sentTime = new Date(item.sent_to_kitchen_date);
                const completedTime = new Date(item.kitchen_completed_date);
                const diffMinutes = Math.floor((completedTime - sentTime) / 60000);
                prepTime = `<div class="rbm-prep-time">⏱️ ${diffMinutes} min</div>`;
            } else if (!isCompleted && item.sent_to_kitchen_date) {
                const sentTime = new Date(item.sent_to_kitchen_date);
                const now = new Date();
                const diffMinutes = Math.floor((now - sentTime) / 60000);
                prepTime = `<div class="rbm-prep-time-active">⏱️ ${diffMinutes} min (in progress)</div>`;
            }
            
            html += `
                <div class="rbm-order-item ${itemClass}">
                    <div class="rbm-item-info">
                        <input type="checkbox" 
                               class="rbm-complete-checkbox" 
                               data-order-id="${item.id}"
                               ${checked}>
                        <div class="rbm-item-details">
                            <div class="rbm-item-name">
                                <span class="rbm-item-quantity">${item.quantity}x</span>
                                ${escapeHtml(item.item_name)}
                            </div>
                            ${item.notes ? `<div class="rbm-item-notes">Note: ${escapeHtml(item.notes)}</div>` : ''}
                            ${prepTime}
                        </div>
                    </div>
                    <div class="rbm-item-price">€${parseFloat(item.item_price * item.quantity).toFixed(2)}</div>
                </div>
            `;
        });
        
        html += `
                </div>
                
                <div class="rbm-table-actions">
                    <button type="button" 
                            class="rbm-complete-table-btn" 
                            data-table="${table.table_number}"
                            ${allCompleted ? 'disabled' : ''}>
                        ✓ Complete Table ${table.table_number}
                    </button>
                </div>
            </div>
        `;
    });
    
    container.innerHTML = html;
}

/**
 * Complete single item
 */
function completeItem(orderId, options) {
    const formData = new FormData();
    formData.append(options.token, '1');
    formData.append('task', 'kitchen.completeItem');
    formData.append('order_id', orderId);
    
    fetch(options.ajaxUrl, {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(result => {
        if (result.success) {
            loadKitchenOrders(options);
        } else {
            alert('Error completing item');
        }
    })
    .catch(error => {
        console.error('Error completing item:', error);
    });
}

/**
 * Complete all items for table
 */
function completeTable(tableNumber, options, button) {
    button.disabled = true;
    button.textContent = 'Completing...';
    
    const formData = new FormData();
    formData.append(options.token, '1');
    formData.append('task', 'kitchen.completeTable');
    formData.append('table_number', tableNumber);
    
    fetch(options.ajaxUrl, {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(result => {
        if (result.success) {
            loadKitchenOrders(options);
        } else {
            alert('Error completing table');
            button.disabled = false;
            button.textContent = '✓ Complete Table ' + tableNumber;
        }
    })
    .catch(error => {
        console.error('Error completing table:', error);
        button.disabled = false;
        button.textContent = '✓ Complete Table ' + tableNumber;
    });
}

/**
 * Format time
 */
function formatTime(dateString) {
    const date = new Date(dateString);
    const hours = String(date.getHours()).padStart(2, '0');
    const minutes = String(date.getMinutes()).padStart(2, '0');
    return hours + ':' + minutes;
}

/**
 * Escape HTML
 */
function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
}
