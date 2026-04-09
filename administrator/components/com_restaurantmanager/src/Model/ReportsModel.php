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

/**
 * Reports model
 */
class ReportsModel extends BaseDatabaseModel
{
    /**
     * Get reports data
     *
     * @return  object|false
     */
    public function getReportsData()
    {
        $db = $this->getDatabase();
        
        try {
            // Today's revenue
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
            $today = (float) $db->loadResult();
            
            // This week's revenue
            $query = $db->getQuery(true);
            $query->select('COALESCE(SUM(' . $db->quoteName('m.item_price') . ' * ' . $db->quoteName('o.quantity') . '), 0)')
                ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
                ->leftJoin(
                    $db->quoteName('#__restaurantmanager_menu', 'm'),
                    $db->quoteName('o.item_number') . ' = ' . $db->quoteName('m.item_number')
                )
                ->where($db->quoteName('o.is_paid') . ' = 1')
                ->where('YEARWEEK(' . $db->quoteName('o.paid_date') . ', 1) = YEARWEEK(CURDATE(), 1)');
            
            $db->setQuery($query);
            $week = (float) $db->loadResult();
            
            // This month's revenue
            $query = $db->getQuery(true);
            $query->select('COALESCE(SUM(' . $db->quoteName('m.item_price') . ' * ' . $db->quoteName('o.quantity') . '), 0)')
                ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
                ->leftJoin(
                    $db->quoteName('#__restaurantmanager_menu', 'm'),
                    $db->quoteName('o.item_number') . ' = ' . $db->quoteName('m.item_number')
                )
                ->where($db->quoteName('o.is_paid') . ' = 1')
                ->where('YEAR(' . $db->quoteName('o.paid_date') . ') = YEAR(CURDATE())')
                ->where('MONTH(' . $db->quoteName('o.paid_date') . ') = MONTH(CURDATE())');
            
            $db->setQuery($query);
            $month = (float) $db->loadResult();
            
            // Daily breakdown for this week
            $query = $db->getQuery(true);
            $query->select([
                'DATE(' . $db->quoteName('o.paid_date') . ') as date',
                'COALESCE(SUM(' . $db->quoteName('m.item_price') . ' * ' . $db->quoteName('o.quantity') . '), 0) as revenue'
            ])
            ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
            ->leftJoin(
                $db->quoteName('#__restaurantmanager_menu', 'm'),
                $db->quoteName('o.item_number') . ' = ' . $db->quoteName('m.item_number')
            )
            ->where($db->quoteName('o.is_paid') . ' = 1')
            ->where('YEARWEEK(' . $db->quoteName('o.paid_date') . ', 1) = YEARWEEK(CURDATE(), 1)')
            ->group('DATE(' . $db->quoteName('o.paid_date') . ')')
            ->order('date ASC');
            
            $db->setQuery($query);
            $dailyWeek = $db->loadObjectList();
            
            // Top selling dishes this month
            $query = $db->getQuery(true);
            $query->select([
                $db->quoteName('m.item_name'),
                $db->quoteName('m.item_number'),
                'SUM(' . $db->quoteName('o.quantity') . ') as total_quantity',
                'COALESCE(SUM(' . $db->quoteName('m.item_price') . ' * ' . $db->quoteName('o.quantity') . '), 0) as total_revenue'
            ])
            ->from($db->quoteName('#__restaurantmanager_orders', 'o'))
            ->leftJoin(
                $db->quoteName('#__restaurantmanager_menu', 'm'),
                $db->quoteName('o.item_number') . ' = ' . $db->quoteName('m.item_number')
            )
            ->where($db->quoteName('o.is_paid') . ' = 1')
            ->where('YEAR(' . $db->quoteName('o.paid_date') . ') = YEAR(CURDATE())')
            ->where('MONTH(' . $db->quoteName('o.paid_date') . ') = MONTH(CURDATE())')
            ->group($db->quoteName('o.item_number'))
            ->order('total_quantity DESC')
            ->setLimit(10);
            
            $db->setQuery($query);
            $topDishes = $db->loadObjectList();
            
            return (object) [
                'today' => $today,
                'week' => $week,
                'month' => $month,
                'dailyWeek' => $dailyWeek,
                'topDishes' => $topDishes
            ];
            
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
}
