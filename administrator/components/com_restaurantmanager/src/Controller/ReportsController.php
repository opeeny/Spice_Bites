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

/**
 * Reports controller
 */
class ReportsController extends BaseController
{
    /**
     * The default view.
     *
     * @var    string
     */
    protected $default_view = 'reports';
    
    /**
     * Get reports data via AJAX
     *
     * @return  void
     */
    public function getData()
    {
        // Check for request forgeries
        Session::checkToken() or jexit(Text::_('JINVALID_TOKEN'));
        
        $app = $this->app;
        $model = $this->getModel('Reports', 'Administrator');
        
        $data = $model->getReportsData();
        
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
}
