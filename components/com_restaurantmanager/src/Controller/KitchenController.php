<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

namespace Joomla\Component\RestaurantManager\Site\Controller;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\Controller\BaseController;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Session\Session;

/**
 * Kitchen controller
 */
class KitchenController extends BaseController
{
    /**
     * The default view.
     *
     * @var    string
     */
    protected $default_view = 'kitchen';
    
    /**
     * Get kitchen orders via AJAX
     *
     * @return  void
     */
    public function getOrders()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Kitchen', 'Site');
        
        $orders = $model->getKitchenOrders();
        
        if ($orders !== false) {
            echo json_encode([
                'success' => true,
                'orders' => $orders
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_LOADING_ORDERS')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Mark item as completed
     *
     * @return  void
     */
    public function completeItem()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Kitchen', 'Site');
        
        $orderId = $app->input->getInt('order_id', 0);
        
        if (!$orderId) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        if ($model->completeItem($orderId)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_ITEM_COMPLETED')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_COMPLETING_ITEM')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Mark entire table order as completed
     *
     * @return  void
     */
    public function completeTable()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Kitchen', 'Site');
        
        $tableNumber = $app->input->getInt('table_number', 0);
        
        if (!$tableNumber) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        if ($model->completeTableOrders($tableNumber)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_TABLE_COMPLETED')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_COMPLETING_TABLE')
            ]);
        }
        
        $app->close();
    }
}
