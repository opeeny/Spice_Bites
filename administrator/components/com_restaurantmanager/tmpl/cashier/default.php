<?php
/**
 * @package     Joomla.Administrator
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
$wa->useScript('keepalive');

// Add custom CSS and JS
$wa->registerAndUseStyle('com_restaurantmanager.admin', 'media/com_restaurantmanager/css/admin-style.css');
$wa->registerAndUseScript('com_restaurantmanager.admin', 'media/com_restaurantmanager/js/admin-script.js');

// Add inline script for AJAX URL and token
$this->document->addScriptOptions('com_restaurantmanager', [
    'ajaxUrl' => Route::_('index.php?option=com_restaurantmanager'),
    'token' => Session::getFormToken()
]);

// Get number of tables from settings
$params = ComponentHelper::getParams('com_restaurantmanager');
$numTables = (int) $params->get('number_of_tables', 30);
?>

<div class="rbm-admin-container">
    <div class="rbm-header">
        <h2><?php echo Text::_('COM_RESTAURANTMANAGER_CASHIER_DASHBOARD'); ?></h2>
        <p><?php echo Text::_('COM_RESTAURANTMANAGER_CASHIER_DESC'); ?></p>
    </div>
    
    <!-- Revenue Summary -->
    <div class="rbm-stats-row">
        <div class="rbm-stat-card">
            <div class="rbm-stat-label"><?php echo Text::_('COM_RESTAURANTMANAGER_TODAY_REVENUE'); ?></div>
            <div class="rbm-stat-value" id="rbm-today-revenue">€0.00</div>
        </div>
    </div>
    
    <!-- Tables Grid -->
    <div class="rbm-tables-section">
        <h3><?php echo Text::_('COM_RESTAURANTMANAGER_ACTIVE_TABLES'); ?></h3>
        <div class="rbm-tables-grid">
            <?php for ($i = 1; $i <= $numTables; $i++) : ?>
            <div class="rbm-table-card" data-table="<?php echo $i; ?>">
                <div class="rbm-table-number"><?php echo $i; ?></div>
                <div class="rbm-table-amount">€0.00</div>
                <div class="rbm-table-status"><?php echo Text::_('COM_RESTAURANTMANAGER_FREE'); ?></div>
                <button class="btn btn-info btn-sm rbm-view-orders" 
                        style="display:none;"
                        data-table="<?php echo $i; ?>">
                    <span class="icon-eye"></span>
                    <?php echo Text::_('COM_RESTAURANTMANAGER_VIEW_ORDERS'); ?>
                </button>
                <button class="btn btn-success btn-sm rbm-mark-paid" 
                        style="display:none;"
                        data-table="<?php echo $i; ?>">
                    <?php echo Text::_('COM_RESTAURANTMANAGER_MARK_PAID'); ?>
                </button>
            </div>
            <?php endfor; ?>
        </div>
    </div>
    
    <!-- Order Details Modal -->
    <div id="rbm-order-modal" class="rbm-modal" style="display:none;">
        <div class="rbm-modal-content">
            <div class="rbm-modal-header">
                <h3><?php echo Text::_('COM_RESTAURANTMANAGER_TABLE_ORDERS'); ?> <span id="rbm-modal-table">-</span></h3>
                <button class="rbm-modal-close" onclick="closeOrderModal()">&times;</button>
            </div>
            <div class="rbm-modal-body">
                <div id="rbm-modal-orders-list"></div>
            </div>
        </div>
    </div>
    
    <div id="rbm-message" class="alert" style="display:none; margin-top: 20px;"></div>
    
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
