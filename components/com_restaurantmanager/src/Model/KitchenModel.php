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

/**
 * Kitchen model
 */
class KitchenModel extends BaseDatabaseModel
{
    /**
     * Get all orders sent to kitchen
     *
     * @return  array|false
     */
    public function getKitchenOrders()
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
                    $db->quoteName('o.sent_to_kitchen_date'),
                    $db->quoteName('o.kitchen_status'),
                    $db->quoteName('o.kitchen_completed_date'),
                    $db->quoteName('m.item_name'),
                    $db->quoteName('m.item_price')
                ])
                ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
                ->join('LEFT', $db->quoteName('#__restaurantmanager_menu', 'm') . 
                       ' ON ' . $db->quoteName('m.item_number') . ' = ' . $db->quoteName('o.item_number'))
                ->where($db->quoteName('o.sent_to_kitchen') . ' = 1')
                ->where($db->quoteName('o.is_paid') . ' = 0')
                ->order($db->quoteName('o.sent_to_kitchen_date') . ' ASC, ' . 
                        $db->quoteName('o.table_number') . ' ASC');
            
            $db->setQuery($query);
            $orders = $db->loadObjectList();
            
            // Group by table number
            $groupedOrders = [];
            foreach ($orders as $order) {
                $tableNum = $order->table_number;
                if (!isset($groupedOrders[$tableNum])) {
                    $groupedOrders[$tableNum] = [
                        'table_number' => $tableNum,
                        'sent_date' => $order->sent_to_kitchen_date,
                        'items' => [],
                        'all_completed' => true
                    ];
                }
                
                $groupedOrders[$tableNum]['items'][] = $order;
                
                if ($order->kitchen_status !== 'completed') {
                    $groupedOrders[$tableNum]['all_completed'] = false;
                }
            }
            
            return array_values($groupedOrders);
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Mark single item as completed
     *
     * @param   int  $orderId  Order ID
     *
     * @return  boolean
     */
    public function completeItem($orderId)
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->update($db->quoteName('#__restaurantmanager_orders'))
                ->set($db->quoteName('kitchen_status') . ' = ' . $db->quote('completed'))
                ->set($db->quoteName('kitchen_completed_date') . ' = NOW()')
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
    
    /**
     * Mark all items for a table as completed
     *
     * @param   int  $tableNumber  Table number
     *
     * @return  boolean
     */
    public function completeTableOrders($tableNumber)
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->update($db->quoteName('#__restaurantmanager_orders'))
                ->set($db->quoteName('kitchen_status') . ' = ' . $db->quote('completed'))
                ->set($db->quoteName('kitchen_completed_date') . ' = NOW()')
                ->where($db->quoteName('table_number') . ' = :tableNumber')
                ->where($db->quoteName('sent_to_kitchen') . ' = 1')
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
}
