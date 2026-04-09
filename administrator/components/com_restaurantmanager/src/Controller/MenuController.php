<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

namespace Joomla\Component\RestaurantManager\Administrator\Controller;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\Controller\BaseController;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Session\Session;

/**
 * Menu controller
 */
class MenuController extends BaseController
{
    /**
     * The default view.
     *
     * @var    string
     */
    protected $default_view = 'menu';
    
    /**
     * Save menu items via AJAX
     *
     * @return  void
     */
    public function save()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Menu', 'Administrator');
        
        // Get menu items from POST
        $menuItems = $app->input->get('menu_items', '', 'raw');
        $menuItems = json_decode($menuItems, true);
        
        if (!$menuItems || !is_array($menuItems)) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        // Save menu
        if ($model->saveMenu($menuItems)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_MENU_SAVED')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_SAVING_MENU')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Save single menu item via AJAX
     *
     * @return  void
     */
    public function saveItem()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Menu', 'Administrator');
        
        // Get item data from POST
        $itemId = $app->input->getInt('id', 0);
        $itemNumber = $app->input->getInt('item_number', 0);
        $itemName = $app->input->getString('item_name', '');
        $itemPrice = $app->input->getFloat('item_price', 0);
        $itemDescription = $app->input->getString('item_description', '');
        $isActive = $app->input->getInt('is_active', 0);
        
        if (!$itemId || !$itemNumber || !$itemName) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        $itemData = [
            'id' => $itemId,
            'item_number' => $itemNumber,
            'item_name' => $itemName,
            'item_price' => $itemPrice,
            'item_description' => $itemDescription,
            'is_active' => $isActive
        ];
        
        // Save single item
        if ($model->saveMenuItem($itemData)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_ITEM_SAVED')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_SAVING_ITEM')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Delete menu item via AJAX
     *
     * @return  void
     */
    public function deleteItem()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Menu', 'Administrator');
        
        $itemId = $app->input->getInt('id', 0);
        
        if (!$itemId) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        // Delete item
        if ($model->deleteMenuItem($itemId)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_ITEM_DELETED')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_DELETING_ITEM')
            ]);
        }
        
        $app->close();
    }
}
