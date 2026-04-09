<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

namespace Joomla\Component\RestaurantManager\Site\Model;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\Model\BaseDatabaseModel;
use Joomla\Database\ParameterType;
use Joomla\CMS\Component\ComponentHelper;

/**
 * Waiter model
 */
class WaiterModel extends BaseDatabaseModel
{
    /**
     * Get active menu items
     *
     * @return  array|false
     */
    public function getMenuItems()
    {
        $db = $this->getDatabase();
        $params = ComponentHelper::getParams('com_restaurantmanager');
        $maxMenuItems = (int) $params->get('number_of_menu_items', 200);
        
        try {
            $query = $db->getQuery(true);
            $query->select('*')
                ->from($db->quoteName('#__restaurantmanager_menu'))
                ->where($db->quoteName('is_active') . ' = 1')
                ->order($db->quoteName('item_number'))
                ->setLimit($maxMenuItems);
            
            $db->setQuery($query);
            return $db->loadObjectList();
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Add order
     *
     * @param   int     $tableNumber  Table number
     * @param   int     $itemNumber   Item number
     * @param   int     $quantity     Quantity
     * @param   string  $notes        Notes
     *
     * @return  boolean
     */
    public function addOrder($tableNumber, $itemNumber, $quantity, $notes = '')
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->insert($db->quoteName('#__restaurantmanager_orders'))
                ->columns([
                    $db->quoteName('table_number'),
                    $db->quoteName('item_number'),
                    $db->quoteName('quantity'),
                    $db->quoteName('notes'),
                    $db->quoteName('order_date')
                ])
                ->values(':tableNumber, :itemNumber, :quantity, :notes, NOW()')
                ->bind(':tableNumber', $tableNumber, ParameterType::INTEGER)
                ->bind(':itemNumber', $itemNumber, ParameterType::INTEGER)
                ->bind(':quantity', $quantity, ParameterType::INTEGER)
                ->bind(':notes', $notes);
            
            $db->setQuery($query);
            return $db->execute();
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Get orders for a table
     *
     * @param   int  $tableNumber  Table number
     *
     * @return  array|false
     */
    public function getTableOrders($tableNumber)
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->select([
                $db->quoteName('o.id'),
                $db->quoteName('o.table_number'),
                $db->quoteName('o.item_number'),
                $db->quoteName('o.quantity'),
                $db->quoteName('o.notes'),
                $db->quoteName('o.order_date'),
                $db->quoteName('o.sent_to_kitchen'),
                $db->quoteName('m.item_name'),
                $db->quoteName('m.item_price')
            ])
            ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
            ->leftJoin(
                $db->quoteName('#__restaurantmanager_menu', 'm'),
                $db->quoteName('o.item_number') . ' = ' . $db->quoteName('m.item_number')
            )
            ->where($db->quoteName('o.table_number') . ' = :tableNumber')
            ->where($db->quoteName('o.is_paid') . ' = 0')
            ->order($db->quoteName('o.order_date') . ' DESC')
            ->bind(':tableNumber', $tableNumber, ParameterType::INTEGER);
            
            $db->setQuery($query);
            return $db->loadObjectList();
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Get table statuses
     *
     * @return  array|false
     */
    public function getTableStatuses()
    {
        $db = $this->getDatabase();
        $params = ComponentHelper::getParams('com_restaurantmanager');
        $numTables = (int) $params->get('number_of_tables', 30);
        
        try {
            $query = $db->getQuery(true);
            $query->select([
                $db->quoteName('o.table_number'),
                'COUNT(*) as order_count'
            ])
            ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
            ->where($db->quoteName('o.is_paid') . ' = 0')
            ->group($db->quoteName('o.table_number'));
            
            $db->setQuery($query);
            $results = $db->loadObjectList('table_number');
            
            $statuses = [];
            for ($i = 1; $i <= $numTables; $i++) {
                $statuses[$i] = isset($results[$i]) && $results[$i]->order_count > 0;
            }
            
            return $statuses;
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Send table orders to kitchen
     *
     * @param   int  $tableNumber  Table number
     *
     * @return  boolean
     */
    public function sendTableToKitchen($tableNumber)
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->update($db->quoteName('#__restaurantmanager_orders'))
                ->set($db->quoteName('sent_to_kitchen') . ' = 1')
                ->set($db->quoteName('sent_to_kitchen_date') . ' = NOW()')
                ->set($db->quoteName('kitchen_status') . ' = ' . $db->quote('pending'))
                ->where($db->quoteName('table_number') . ' = :tableNumber')
                ->where($db->quoteName('sent_to_kitchen') . ' = 0')
                ->where($db->quoteName('is_paid') . ' = 0')
                ->bind(':tableNumber', $tableNumber, ParameterType::INTEGER);
            
            $db->setQuery($query);
            $db->execute();
            
            return true;
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Clear table orders (delete unpaid orders)
     *
     * @param   int  $tableNumber  Table number
     *
     * @return  boolean
     */
    public function clearTableOrders($tableNumber)
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->delete($db->quoteName('#__restaurantmanager_orders'))
                ->where($db->quoteName('table_number') . ' = :tableNumber')
                ->where($db->quoteName('is_paid') . ' = 0')
                ->bind(':tableNumber', $tableNumber, ParameterType::INTEGER);
            
            $db->setQuery($query);
            $db->execute();
            
            return true;
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Get single order
     *
     * @param   int  $orderId  Order ID
     *
     * @return  object|false
     */
    public function getOrder($orderId)
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->select([
                    $db->quoteName('o.id'),
                    $db->quoteName('o.table_number'),
                    $db->quoteName('o.item_number'),
                    $db->quoteName('o.quantity'),
                    $db->quoteName('o.notes'),
                    $db->quoteName('o.sent_to_kitchen')
                ])
                ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
                ->where($db->quoteName('o.id') . ' = :orderId')
                ->where($db->quoteName('o.is_paid') . ' = 0')
                ->bind(':orderId', $orderId, ParameterType::INTEGER);
            
            $db->setQuery($query);
            return $db->loadObject();
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Update order
     *
     * @param   array  $orderData  Order data
     *
     * @return  boolean
     */
    public function updateOrder($orderData)
    {
        $db = $this->getDatabase();
        
        try {
            // Only allow updating if not sent to kitchen yet
            $query = $db->getQuery(true);
            $query->select($db->quoteName('sent_to_kitchen'))
                ->from($db->quoteName('#__restaurantmanager_orders'))
                ->where($db->quoteName('id') . ' = :orderId')
                ->bind(':orderId', $orderData['id'], ParameterType::INTEGER);
            
            $db->setQuery($query);
            $sentToKitchen = $db->loadResult();
            
            if ($sentToKitchen == 1) {
                $this->setError('Cannot update order already sent to kitchen');
                return false;
            }
            
            // Update order
            $query = $db->getQuery(true);
            $query->update($db->quoteName('#__restaurantmanager_orders'))
                ->set($db->quoteName('item_number') . ' = :itemNumber')
                ->set($db->quoteName('quantity') . ' = :quantity')
                ->set($db->quoteName('notes') . ' = :notes')
                ->set($db->quoteName('modified') . ' = NOW()')
                ->where($db->quoteName('id') . ' = :orderId')
                ->bind(':itemNumber', $orderData['item_number'], ParameterType::INTEGER)
                ->bind(':quantity', $orderData['quantity'], ParameterType::INTEGER)
                ->bind(':notes', $orderData['notes'])
                ->bind(':orderId', $orderData['id'], ParameterType::INTEGER);
            
            $db->setQuery($query);
            $db->execute();
            
            return true;
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Delete order
     *
     * @param   int  $orderId  Order ID
     *
     * @return  boolean
     */
    public function deleteOrder($orderId)
    {
        $db = $this->getDatabase();
        
        try {
            // Only allow deleting if not sent to kitchen yet
            $query = $db->getQuery(true);
            $query->select($db->quoteName('sent_to_kitchen'))
                ->from($db->quoteName('#__restaurantmanager_orders'))
                ->where($db->quoteName('id') . ' = :orderId')
                ->bind(':orderId', $orderId, ParameterType::INTEGER);
            
            $db->setQuery($query);
            $sentToKitchen = $db->loadResult();
            
            if ($sentToKitchen == 1) {
                $this->setError('Cannot delete order already sent to kitchen');
                return false;
            }
            
            // Delete order
            $query = $db->getQuery(true);
            $query->delete($db->quoteName('#__restaurantmanager_orders'))
                ->where($db->quoteName('id') . ' = :orderId')
                ->bind(':orderId', $orderId, ParameterType::INTEGER);
            
            $db->setQuery($query);
            $db->execute();
            
            return true;
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
}
