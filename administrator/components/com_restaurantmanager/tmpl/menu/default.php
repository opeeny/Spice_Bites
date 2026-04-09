<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

defined('_JEXEC') or die;

use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Session\Session;

/** @var Joomla\CMS\WebAsset\WebAssetManager $wa */
$wa = $this->document->getWebAssetManager();
$wa->useScript('keepalive')
   ->useScript('form.validate');

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
        <h2><?php echo Text::_('COM_RESTAURANTMANAGER_MENU_MANAGEMENT'); ?></h2>
        <p><?php echo Text::_('COM_RESTAURANTMANAGER_MENU_DESC'); ?></p>
        <?php 
        $params = \Joomla\CMS\Component\ComponentHelper::getParams('com_restaurantmanager');
        $maxItems = (int) $params->get('number_of_menu_items', 200);
        $currentCount = count($this->items);
        ?>
        <div class="alert alert-info">
            <strong><?php echo Text::_('COM_RESTAURANTMANAGER_SHOWING'); ?>:</strong> 
            <?php echo $currentCount; ?> / <?php echo $maxItems; ?> <?php echo Text::_('COM_RESTAURANTMANAGER_ITEMS'); ?>
            <?php if ($currentCount < $maxItems) : ?>
                (<?php echo Text::_('COM_RESTAURANTMANAGER_ALL_ITEMS_SHOWN'); ?>)
            <?php endif; ?>
        </div>
    </div>
    
    <div class="rbm-menu-editor">
        <table class="table table-striped" id="rbm-menu-table">
            <thead>
                <tr>
                    <th width="10%"><?php echo Text::_('COM_RESTAURANTMANAGER_ITEM_NUMBER'); ?></th>
                    <th width="25%"><?php echo Text::_('COM_RESTAURANTMANAGER_ITEM_NAME'); ?></th>
                    <th width="15%"><?php echo Text::_('COM_RESTAURANTMANAGER_ITEM_PRICE'); ?></th>
                    <th width="35%"><?php echo Text::_('COM_RESTAURANTMANAGER_ITEM_DESCRIPTION'); ?></th>
                    <th width="10%"><?php echo Text::_('COM_RESTAURANTMANAGER_ITEM_ACTIVE'); ?></th>
                    <th width="5%"><?php echo Text::_('COM_RESTAURANTMANAGER_ACTIONS'); ?></th>
                </tr>
            </thead>
            <tbody id="rbm-menu-items">
                <?php foreach ($this->items as $i => $item) : ?>
                <tr data-id="<?php echo $item->id; ?>">
                    <td>
                        <input type="number" 
                               class="form-control item-number" 
                               value="<?php echo $this->escape($item->item_number); ?>" 
                               min="1" 
                               required>
                    </td>
                    <td>
                        <input type="text" 
                               class="form-control item-name" 
                               value="<?php echo $this->escape($item->item_name); ?>" 
                               required>
                    </td>
                    <td>
                        <div class="input-group">
                            <span class="input-group-text">€</span>
                            <input type="number" 
                                   class="form-control item-price" 
                                   value="<?php echo number_format($item->item_price, 2, '.', ''); ?>" 
                                   step="0.01" 
                                   min="0" 
                                   required>
                        </div>
                    </td>
                    <td>
                        <textarea class="form-control item-description" 
                                  rows="2"><?php echo $this->escape($item->item_description); ?></textarea>
                    </td>
                    <td class="text-center">
                        <input type="checkbox" 
                               class="form-check-input item-active" 
                               <?php echo $item->is_active ? 'checked' : ''; ?>>
                    </td>
                    <td class="text-center">
                        <button type="button" 
                                class="btn btn-sm btn-success rbm-save-item me-1" 
                                data-id="<?php echo $item->id; ?>"
                                title="<?php echo Text::_('JTOOLBAR_SAVE'); ?>">
                            <span class="icon-save"></span>
                        </button>
                        <button type="button" 
                                class="btn btn-sm btn-danger rbm-delete-item" 
                                data-id="<?php echo $item->id; ?>"
                                title="<?php echo Text::_('JACTION_DELETE'); ?>">
                            <span class="icon-delete"></span>
                        </button>
                    </td>
                </tr>
                <?php endforeach; ?>
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

