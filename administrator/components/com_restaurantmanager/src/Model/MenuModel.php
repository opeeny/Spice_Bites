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

use Joomla\CMS\MVC\Model\ListModel;
use Joomla\Database\ParameterType;

/**
 * Menu list model
 */
class MenuModel extends ListModel
{
    /**
     * Constructor.
     *
     * @param   array  $config  An optional associative array of configuration settings.
     */
    public function __construct($config = [])
    {
        if (empty($config['filter_fields'])) {
            $config['filter_fields'] = [
                'id', 'm.id',
                'item_number', 'm.item_number',
                'item_name', 'm.item_name',
                'item_price', 'm.item_price',
                'is_active', 'm.is_active',
                'ordering', 'm.ordering'
            ];
        }

        parent::__construct($config);
    }

    /**
     * Method to build an SQL query to load the list data.
     *
     * @return  \Joomla\Database\DatabaseQuery
     */
    protected function getListQuery()
    {
        $db = $this->getDatabase();
        $query = $db->getQuery(true);

        $query->select([
            $db->quoteName('m.id'),
            $db->quoteName('m.item_number'),
            $db->quoteName('m.item_name'),
            $db->quoteName('m.item_price'),
            $db->quoteName('m.item_description'),
            $db->quoteName('m.is_active'),
            $db->quoteName('m.ordering'),
            $db->quoteName('m.created'),
            $db->quoteName('m.modified')
        ])
        ->from($db->quoteName('#__restaurantmanager_menu', 'm'));

        // Filter by active state
        $state = $this->getState('filter.is_active');
        if (is_numeric($state)) {
            $query->where($db->quoteName('m.is_active') . ' = :state')
                ->bind(':state', $state, ParameterType::INTEGER);
        }

        // Filter by search
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            $search = '%' . str_replace(' ', '%', $db->escape(trim($search), true) . '%');
            $query->where(
                '(' . $db->quoteName('m.item_name') . ' LIKE :search1'
                . ' OR ' . $db->quoteName('m.item_description') . ' LIKE :search2'
                . ' OR ' . $db->quoteName('m.item_number') . ' LIKE :search3)'
            )
            ->bind([':search1', ':search2', ':search3'], $search);
        }

        // Add the list ordering clause
        $orderCol = $this->state->get('list.ordering', 'm.ordering');
        $orderDirn = $this->state->get('list.direction', 'ASC');

        $query->order($db->escape($orderCol) . ' ' . $db->escape($orderDirn));

        return $query;
    }

    /**
     * Method to get a store id based on model configuration state.
     *
     * @param   string  $id  A prefix for the store id.
     *
     * @return  string
     */
    protected function getStoreId($id = '')
    {
        $id .= ':' . $this->getState('filter.search');
        $id .= ':' . $this->getState('filter.is_active');

        return parent::getStoreId($id);
    }

    /**
     * Method to auto-populate the model state.
     *
     * @param   string  $ordering   An optional ordering field.
     * @param   string  $direction  An optional direction (asc|desc).
     *
     * @return  void
     */
    protected function populateState($ordering = 'm.ordering', $direction = 'ASC')
    {
        // Get component params FIRST to get the correct limit
        $params = \Joomla\CMS\Component\ComponentHelper::getParams('com_restaurantmanager');
        $limit = (int) $params->get('number_of_menu_items', 200);
        
        $search = $this->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);

        $state = $this->getUserStateFromRequest($this->context . '.filter.is_active', 'filter_is_active', '');
        $this->setState('filter.is_active', $state);

        // Call parent
        parent::populateState($ordering, $direction);
        
        // FORCE override list limit - do not let parent's value persist
        // Clear any cached session values by forcing new values
        $app = \Joomla\CMS\Factory::getApplication();
        $app->setUserState($this->context . '.list.limit', $limit);
        $app->setUserState($this->context . '.list.start', 0);
        
        $this->setState('list.limit', $limit);
        $this->setState('list.start', 0);
    }

    /**
     * Save menu items
     *
     * @param   array  $items  Menu items data
     *
     * @return  boolean
     */
    public function saveMenu($items)
    {
        $db = $this->getDatabase();
        
        try {
            foreach ($items as $item) {
                $query = $db->getQuery(true);
                
                // Check if item exists
                $query->select('id')
                    ->from($db->quoteName('#__restaurantmanager_menu'))
                    ->where($db->quoteName('item_number') . ' = :itemNumber')
                    ->bind(':itemNumber', $item['item_number'], ParameterType::INTEGER);
                
                $db->setQuery($query);
                $existingId = $db->loadResult();
                
                if ($existingId) {
                    // Update existing item
                    $query = $db->getQuery(true);
                    $query->update($db->quoteName('#__restaurantmanager_menu'))
                        ->set($db->quoteName('item_name') . ' = :itemName')
                        ->set($db->quoteName('item_price') . ' = :itemPrice')
                        ->set($db->quoteName('item_description') . ' = :itemDescription')
                        ->set($db->quoteName('is_active') . ' = :isActive')
                        ->set($db->quoteName('modified') . ' = NOW()')
                        ->where($db->quoteName('id') . ' = :id')
                        ->bind(':itemName', $item['item_name'])
                        ->bind(':itemPrice', $item['item_price'], ParameterType::STRING)
                        ->bind(':itemDescription', $item['item_description'])
                        ->bind(':isActive', $item['is_active'], ParameterType::INTEGER)
                        ->bind(':id', $existingId, ParameterType::INTEGER);
                    
                    $db->setQuery($query);
                    $db->execute();
                } else {
                    // Insert new item
                    $query = $db->getQuery(true);
                    $query->insert($db->quoteName('#__restaurantmanager_menu'))
                        ->columns([
                            $db->quoteName('item_number'),
                            $db->quoteName('item_name'),
                            $db->quoteName('item_price'),
                            $db->quoteName('item_description'),
                            $db->quoteName('is_active'),
                            $db->quoteName('created')
                        ])
                        ->values(':itemNumber, :itemName, :itemPrice, :itemDescription, :isActive, NOW()')
                        ->bind(':itemNumber', $item['item_number'], ParameterType::INTEGER)
                        ->bind(':itemName', $item['item_name'])
                        ->bind(':itemPrice', $item['item_price'], ParameterType::STRING)
                        ->bind(':itemDescription', $item['item_description'])
                        ->bind(':isActive', $item['is_active'], ParameterType::INTEGER);
                    
                    $db->setQuery($query);
                    $db->execute();
                }
            }
            
            return true;
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Save single menu item
     *
     * @param   array  $item  Menu item data
     *
     * @return  boolean
     */
    public function saveMenuItem($item)
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->update($db->quoteName('#__restaurantmanager_menu'))
                ->set($db->quoteName('item_number') . ' = :itemNumber')
                ->set($db->quoteName('item_name') . ' = :itemName')
                ->set($db->quoteName('item_price') . ' = :itemPrice')
                ->set($db->quoteName('item_description') . ' = :itemDescription')
                ->set($db->quoteName('is_active') . ' = :isActive')
                ->set($db->quoteName('modified') . ' = NOW()')
                ->where($db->quoteName('id') . ' = :id')
                ->bind(':itemNumber', $item['item_number'], ParameterType::INTEGER)
                ->bind(':itemName', $item['item_name'])
                ->bind(':itemPrice', $item['item_price'], ParameterType::STRING)
                ->bind(':itemDescription', $item['item_description'])
                ->bind(':isActive', $item['is_active'], ParameterType::INTEGER)
                ->bind(':id', $item['id'], ParameterType::INTEGER);
            
            $db->setQuery($query);
            $db->execute();
            
            return true;
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
    
    /**
     * Delete menu item
     *
     * @param   int  $itemId  Menu item ID
     *
     * @return  boolean
     */
    public function deleteMenuItem($itemId)
    {
        $db = $this->getDatabase();
        
        try {
            $query = $db->getQuery(true);
            $query->delete($db->quoteName('#__restaurantmanager_menu'))
                ->where($db->quoteName('id') . ' = :id')
                ->bind(':id', $itemId, ParameterType::INTEGER);
            
            $db->setQuery($query);
            $db->execute();
            
            return true;
        } catch (\Exception $e) {
            $this->setError($e->getMessage());
            return false;
        }
    }
}
