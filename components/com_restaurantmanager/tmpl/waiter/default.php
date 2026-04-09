<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

defined('_JEXEC') or die;

use Joomla\CMS\Language\Text;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Session\Session;
use Joomla\CMS\Component\ComponentHelper;

/** @var Joomla\CMS\WebAsset\WebAssetManager $wa */
$wa = $this->document->getWebAssetManager();

// Add custom CSS and JS
$wa->registerAndUseStyle('com_restaurantmanager.frontend', 'media/com_restaurantmanager/css/frontend-style.css');
$wa->registerAndUseScript('com_restaurantmanager.frontend', 'media/com_restaurantmanager/js/frontend-script.js');

// Add inline script for AJAX URL and token
$this->document->addScriptOptions('com_restaurantmanager', [
    'ajaxUrl' => Route::_('index.php?option=com_restaurantmanager'),
    'token' => Session::getFormToken()
]);

// Get number of tables from settings
$params = ComponentHelper::getParams('com_restaurantmanager');
$numTables = (int) $params->get('number_of_tables', 30);
?>

<div class="rbm-waiter-interface">
    <div class="rbm-header">
        <div class="rbm-header-content">
            <div>
                <h2><?php echo Text::_('COM_RESTAURANTMANAGER_WAITER_SYSTEM'); ?></h2>
                <p><?php echo Text::_('COM_RESTAURANTMANAGER_WAITER_DESC'); ?></p>
            </div>
            <div class="rbm-header-clock">
                <span class="rbm-clock-icon">🕐</span>
                <span id="rbm-waiter-clock">--:--:--</span>
            </div>
        </div>
    </div>
    
    <!-- Tables Grid -->
    <div class="rbm-tables-section">
        <h3><?php echo Text::_('COM_RESTAURANTMANAGER_TABLES'); ?></h3>
        <div class="rbm-tables-grid-frontend">
            <?php for ($i = 1; $i <= $numTables; $i++) : ?>
            <button class="rbm-table-btn" data-table="<?php echo $i; ?>">
                <span class="rbm-table-number"><?php echo $i; ?></span>
                <span class="rbm-table-status-icon"></span>
            </button>
            <?php endfor; ?>
        </div>
    </div>
    
    <!-- Selected Table Info -->
    <div id="rbm-table-section" style="display:none;">
        <div class="rbm-selected-table">
            <h3><?php echo Text::_('COM_RESTAURANTMANAGER_TABLE'); ?> <span id="rbm-current-table">-</span></h3>
        </div>
        
        <!-- Add Order Form -->
        <div class="rbm-order-form">
            <h4><?php echo Text::_('COM_RESTAURANTMANAGER_ADD_ORDER'); ?></h4>
            <form id="rbm-add-order-form">
                <input type="hidden" id="rbm-order-table" name="table_number">
                
                <div class="rbm-form-row">
                    <label for="rbm-order-item">
                        <?php echo Text::_('COM_RESTAURANTMANAGER_DISH'); ?>
                    </label>
                    <select id="rbm-order-item" name="item_number" required class="form-select">
                        <option value=""><?php echo Text::_('COM_RESTAURANTMANAGER_SELECT_DISH'); ?></option>
                        <?php foreach ($this->items as $item) : ?>
                        <option value="<?php echo $this->escape($item->item_number); ?>" 
                                data-price="<?php echo $this->escape($item->item_price); ?>">
                            <?php echo $this->escape($item->item_number); ?> - 
                            <?php echo $this->escape($item->item_name); ?> 
                            (€<?php echo number_format($item->item_price, 2); ?>)
                        </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                
                <div class="rbm-form-row">
                    <label for="rbm-order-quantity">
                        <?php echo Text::_('COM_RESTAURANTMANAGER_QUANTITY'); ?>
                    </label>
                    <input type="number" 
                           id="rbm-order-quantity" 
                           name="quantity" 
                           value="1" 
                           min="1" 
                           required
                           class="form-control">
                </div>
                
                <div class="rbm-form-row">
                    <label for="rbm-order-notes">
                        <?php echo Text::_('COM_RESTAURANTMANAGER_NOTES'); ?>
                    </label>
                    <textarea id="rbm-order-notes" 
                              name="notes" 
                              rows="3" 
                              class="form-control"
                              placeholder="<?php echo $this->escape(Text::_('COM_RESTAURANTMANAGER_NOTES_PLACEHOLDER')); ?>"></textarea>
                </div>
                
                <button type="submit" class="btn btn-primary rbm-btn-primary">
                    <span class="icon-plus"></span>
                    <?php echo Text::_('COM_RESTAURANTMANAGER_ADD_ORDER'); ?>
                </button>
            </form>
        </div>
        
        <!-- Current Orders for Selected Table -->
        <div class="rbm-current-orders">
            <h4><?php echo Text::_('COM_RESTAURANTMANAGER_CURRENT_ORDERS_TABLE'); ?></h4>
            <div id="rbm-orders-list">
                <p class="rbm-no-orders"><?php echo Text::_('COM_RESTAURANTMANAGER_NO_ORDERS'); ?></p>
            </div>
            
            <!-- Action Buttons -->
            <div id="rbm-table-actions" style="display: none; margin-top: 20px; display: flex; gap: 10px;">
                <button type="button" 
                        id="rbm-send-to-kitchen" 
                        class="btn btn-success"
                        style="flex: 1;">
                    <span class="icon-publish"></span>
                    <?php echo Text::_('COM_RESTAURANTMANAGER_SEND_TO_KITCHEN'); ?>
                </button>
                <button type="button" 
                        id="rbm-clear-table" 
                        class="btn btn-danger">
                    <span class="icon-delete"></span>
                    <?php echo Text::_('COM_RESTAURANTMANAGER_CLEAR_TABLE'); ?>
                </button>
            </div>
        </div>
    </div>
    
    <!-- Messages -->
    <div id="rbm-message" class="alert" style="display:none;"></div>
    
    <!-- Footer with link -->
    <div class="rbm-footer">
        <p>
            <?php echo Text::_('COM_RESTAURANTMANAGER_POWERED_BY'); ?> 
            <a href="https://freecmsplugins.com" target="_blank" rel="noopener">
                <strong>FreeCMSPlugins.com</strong>
            </a> - 
            <?php echo Text::_('COM_RESTAURANTMANAGER_BY'); ?> 
            <strong>Michele Bruno</strong>
        </p>
    </div>
</div>
