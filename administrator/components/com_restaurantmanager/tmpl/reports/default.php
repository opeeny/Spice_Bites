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
?>

<div class="rbm-admin-container">
    <div class="rbm-header">
        <h2><?php echo Text::_('COM_RESTAURANTMANAGER_REVENUE_REPORTS'); ?></h2>
        <p><?php echo Text::_('COM_RESTAURANTMANAGER_REPORTS_DESC'); ?></p>
    </div>
    
    <!-- Summary Cards -->
    <div class="rbm-stats-row">
        <div class="rbm-stat-card">
            <div class="rbm-stat-label"><?php echo Text::_('COM_RESTAURANTMANAGER_TODAY'); ?></div>
            <div class="rbm-stat-value" id="rbm-report-today">€0.00</div>
        </div>
        <div class="rbm-stat-card">
            <div class="rbm-stat-label"><?php echo Text::_('COM_RESTAURANTMANAGER_THIS_WEEK'); ?></div>
            <div class="rbm-stat-value" id="rbm-report-week">€0.00</div>
        </div>
        <div class="rbm-stat-card">
            <div class="rbm-stat-label"><?php echo Text::_('COM_RESTAURANTMANAGER_THIS_MONTH'); ?></div>
            <div class="rbm-stat-value" id="rbm-report-month">€0.00</div>
        </div>
    </div>
    
    <!-- Top Dishes -->
    <div class="rbm-reports-section">
        <h3><?php echo Text::_('COM_RESTAURANTMANAGER_TOP_DISHES_MONTH'); ?></h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th><?php echo Text::_('COM_RESTAURANTMANAGER_DISH'); ?></th>
                    <th><?php echo Text::_('COM_RESTAURANTMANAGER_QUANTITY'); ?></th>
                    <th><?php echo Text::_('COM_RESTAURANTMANAGER_REVENUE'); ?></th>
                </tr>
            </thead>
            <tbody id="rbm-top-dishes">
                <tr>
                    <td colspan="3" class="text-center">
                        <?php echo Text::_('COM_RESTAURANTMANAGER_LOADING'); ?>
                    </td>
                </tr>
            </tbody>
        </table>
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

