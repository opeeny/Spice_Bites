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
use Joomla\CMS\Session\Session;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Router\Route;

/**
 * Cashier controller
 */
class CashierController extends BaseController
{
    /**
     * The default view.
     *
     * @var    string
     */
    protected $default_view = 'cashier';
    
    /**
     * Get cashier data via AJAX
     *
     * @return  void
     */
    public function getData()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Cashier', 'Administrator');
        
        $data = $model->getDashboardData();
        
        if ($data) {
            echo json_encode([
                'success' => true,
                'data' => $data
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_LOADING_DATA')
            ]);
        }
        
        $app->close();
    }
    
    /**
     * Mark table as paid via AJAX
     *
     * @return  void
     */
    public function markPaid()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Cashier', 'Administrator');
        
        $tableNumber = $app->input->getInt('table_number', 0);
        
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
        
        if ($model->markTablePaid($tableNumber)) {
            echo json_encode([
                'success' => true,
                'message' => Text::_('COM_RESTAURANTMANAGER_TABLE_MARKED_PAID')
            ]);
        } else {
            echo json_encode([
                'success' => false,
                'message' => Text::_('COM_RESTAURANTMANAGER_ERROR_MARKING_PAID')
            ]);
        }
        
        $app->close();
    }
}
