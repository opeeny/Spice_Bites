<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

namespace Joomla\Component\RestaurantManager\Administrator\Model;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\Model\BaseDatabaseModel;
use Joomla\Database\ParameterType;
use Joomla\CMS\Component\ComponentHelper;

/**
 * Cashier model
 */
class CashierModel extends BaseDatabaseModel
{
    /**
     * Get dashboard data for cashier
     *
     * @return  object|false
     */
    public function getDashboardData()
    {
        $db = $this->getDatabase();
        $params = ComponentHelper::getParams('com_restaurantmanager');
        $numTables = (int) $params->get('number_of_tables', 30);
        
        try {
            // Get active orders
            $query = $db->getQuery(true);
            $query->select([
                $db->quoteName('o.id'),
                $db->quoteName('o.table_number'),
                $db->quoteName('o.item_number'),
                $db->quoteName('o.quantity'),
                $db->quoteName('o.notes'),
                $db->quoteName('o.order_date'),
                $db->quoteName('o.sent_to_kitchen'),
                $db->quoteName('o.kitchen_status'),
                $db->quoteName('m.item_name'),
                $db->quoteName('m.item_price')
            ])
            ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
            ->leftJoin(
                $db->quoteName('#__restaurantmanager_menu', 'm'),
                $db->quoteName('o.item_number') . ' = ' . $db->quoteName('m.item_number')
            )
            ->where($db->quoteName('o.is_paid') . ' = 0')
            ->order($db->quoteName('o.table_number') . ', ' . $db->quoteName('o.order_date'));
            
            $db->setQuery($query);
            $activeOrders = $db->loadObjectList();
            
            // Calculate table totals - use dynamic number from settings
            $tableTotals = [];
            $tableKitchenStatus = [];
            for ($i = 1; $i <= $numTables; $i++) {
                $tableTotals[$i] = 0;
                $tableKitchenStatus[$i] = 'none'; // none, in_progress, completed
            }
            
            foreach ($activeOrders as $order) {
                $tableTotals[$order->table_number] += ($order->item_price * $order->quantity);
                
                // Determine kitchen status for this table
                if ($order->sent_to_kitchen == 1) {
                    if ($order->kitchen_status !== 'completed') {
                        // If any item is not completed, table is in progress
                        $tableKitchenStatus[$order->table_number] = 'in_progress';
                    } elseif ($tableKitchenStatus[$order->table_number] !== 'in_progress') {
                        // If all items so far are completed
                        $tableKitchenStatus[$order->table_number] = 'completed';
                    }
                }
            }
            
            // Get today's revenue
            $query = $db->getQuery(true);
            $query->select('COALESCE(SUM(' . $db->quoteName('m.item_price') . ' * ' . $db->quoteName('o.quantity') . '), 0)')
                ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
                ->leftJoin(
                    $db->quoteName('#__restaurantmanager_menu', 'm'),
                    $db->quoteName('o.item_number') . ' = ' . $db->quoteName('m.item_number')
                )
                ->where($db->quoteName('o.is_paid') . ' = 1')
                ->where('DATE(' . $db->quoteName('o.paid_date') . ') = CURDATE()');
            
            $db->setQuery($query);
            $todayRevenue = (float) $db->loadResult();
            
            return (object) [
                'orders' => $activeOrders,
                'tableTotals' => $tableTotals,
                'tableKitchenStatus' => $tableKitchenStatus,
                'todayRevenue' => $todayRevenue
            ];
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Mark table as paid
     *
     * @param   int  $tableNumber  Table number
     *
     * @return  boolean
     */
    public function markTablePaid($tableNumber)
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->update($db->quoteName('#__restaurantmanager_orders'))
                ->set($db->quoteName('is_paid') . ' = 1')
                ->set($db->quoteName('paid_date') . ' = NOW()')
                ->where($db->quoteName('table_number') . ' = :tableNumber')
                ->where($db->quoteName('is_paid') . ' = 0')
                ->bind(':tableNumber', $tableNumber, ParameterType::INTEGER);
            
            $db->setQuery($query);
            return $db->execute();
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
}
