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
use Joomla\CMS\Component\ComponentHelper;

/**
 * Waiter controller
 */
class WaiterController extends BaseController
{
    /**
     * The default view.
     *
     * @var    string
     */
    protected $default_view = 'waiter';
    
    /**
     * Add order via AJAX
     *
     * @return  void
     */
    public function addOrder()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Waiter', 'Site');
        
        $tableNumber = $app->input->getInt('table_number', 0);
        $itemNumber = $app->input->getInt('item_number', 0);
        $quantity = $app->input->getInt('quantity', 1);
        $notes = $app->input->getString('notes', '');
        
        // Get max tables from settings
        $params = ComponentHelper::getParams('com_restaurantmanager');
        $maxTables = (int) $params->get('number_of_tables', 30);
        
        if ($tableNumber < 1 || $tableNumber > $maxTables) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_TABLE')
            ]);
            $app->close();
        }
        
        if ($model->addOrder($tableNumber, $itemNumber, $quantity, $notes)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_ORDER_ADDED')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_ADDING_ORDER')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Get orders for a table via AJAX
     *
     * @return  void
     */
    public function getOrders()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Waiter', 'Site');
        
        $tableNumber = $app->input->getInt('table_number', 0);
        
        $orders = $model->getTableOrders($tableNumber);
        
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
     * Get table statuses via AJAX
     *
     * @return  void
     */
    public function getTableStatuses()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Waiter', 'Site');
        
        $statuses = $model->getTableStatuses();
        
        if ($statuses !== false) {
            echo json_encode([
                'success' => true,
                'statuses' => $statuses
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_LOADING_STATUSES')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Send table orders to kitchen
     *
     * @return  void
     */
    public function sendToKitchen()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Waiter', 'Site');
        
        $tableNumber = $app->input->getInt('table_number', 0);
        
        if (!$tableNumber) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        if ($model->sendTableToKitchen($tableNumber)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_SENT_TO_KITCHEN')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_SENDING_TO_KITCHEN')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Clear table orders (delete unpaid orders)
     *
     * @return  void
     */
    public function clearTable()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Waiter', 'Site');
        
        $tableNumber = $app->input->getInt('table_number', 0);
        
        if (!$tableNumber) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        if ($model->clearTableOrders($tableNumber)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_TABLE_CLEARED')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_CLEARING_TABLE')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Get single order for editing
     *
     * @return  void
     */
    public function getOrder()
    {
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Waiter', 'Site');
        
        $orderId = $app->input->getInt('order_id', 0);
        
        if (!$orderId) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        $order = $model->getOrder($orderId);
        
        if ($order) {
            echo json_encode([
                'success' => true,
                'order' => $order
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_LOADING_ORDER')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Update existing order
     *
     * @return  void
     */
    public function updateOrder()
    {
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Waiter', 'Site');
        
        $orderId = $app->input->getInt('order_id', 0);
        $itemNumber = $app->input->getInt('item_number', 0);
        $quantity = $app->input->getInt('quantity', 1);
        $notes = $app->input->getString('notes', '');
        
        if (!$orderId || !$itemNumber) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        $orderData = [
            'id' => $orderId,
            'item_number' => $itemNumber,
            'quantity' => $quantity,
            'notes' => $notes
        ];
        
        if ($model->updateOrder($orderData)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_ORDER_UPDATED')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_UPDATING_ORDER')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Delete order
     *
     * @return  void
     */
    public function deleteOrder()
    {
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Waiter', 'Site');
        
        $orderId = $app->input->getInt('order_id', 0);
        
        if (!$orderId) {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_INVALID_DATA')
            ]);
            $app->close();
        }
        
        if ($model->deleteOrder($orderId)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_ORDER_DELETED')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_DELETING_ORDER')
            ]);
        }
        
        $app->close();
    }
}
