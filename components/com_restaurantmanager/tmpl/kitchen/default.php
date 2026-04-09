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

/** @var Joomla\CMS\WebAsset\WebAssetManager $wa */
$wa = $this->document->getWebAssetManager();
$wa->useScript('keepalive');

// Add custom CSS and JS
$wa->registerAndUseStyle('com_restaurantmanager.kitchen', 'media/com_restaurantmanager/css/kitchen-style.css');
$wa->registerAndUseScript('com_restaurantmanager.kitchen', 'media/com_restaurantmanager/js/kitchen-script.js');

// Add inline script for AJAX URL and token
$this->document->addScriptOptions('com_restaurantmanager_kitchen', [
    'ajaxUrl' => Route::_('index.php?option=com_restaurantmanager'),
    'token' => Session::getFormToken()
]);
?>

<div class="rbm-kitchen-container">
    <div class="rbm-kitchen-header">
        <h1><?php echo Text::_('COM_RESTAURANTMANAGER_KITCHEN_ORDERS'); ?></h1>
        <div class="rbm-kitchen-clock">
            <span class="rbm-clock-icon">🕐</span>
            <span id="rbm-kitchen-clock-time">--:--:--</span>
        </div>
    </div>
    
    <div id="rbm-kitchen-orders" class="rbm-kitchen-orders">
        <div class="rbm-loading"><?php echo Text::_('COM_RESTAURANTMANAGER_LOADING'); ?>...</div>
    </div>
</div>
