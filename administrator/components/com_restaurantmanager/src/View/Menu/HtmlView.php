<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

namespace Joomla\Component\RestaurantManager\Administrator\View\Menu;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;
use Joomla\CMS\Toolbar\Toolbar;
use Joomla\CMS\Toolbar\ToolbarHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Factory;

/**
 * View class for menu management
 */
class HtmlView extends BaseHtmlView
{
    /**
     * The menu items
     *
     * @var    array
     */
    protected $items;

    /**
     * Display the view
     *
     * @param   string  $tpl  The name of the template file to parse
     *
     * @return  void
     */
    public function display($tpl = null)
    {
        // Force reload of component params to get fresh values
        $params = \Joomla\CMS\Component\ComponentHelper::getParams('com_restaurantmanager');
        
        // Get the model and clear any cached state
        $model = $this->getModel();
        
        // Get data from the model
        $this->items = $this->get('Items');

        // Check for errors
        if (count($errors = $this->get('Errors'))) {
            throw new \Exception(implode("\n", $errors), 500);
        }

        // Set the toolbar
        $this->addToolbar();

        // Display the template
        parent::display($tpl);
    }

    /**
     * Add the page title and toolbar.
     *
     * @return  void
     */
    protected function addToolbar()
    {
        ToolbarHelper::title(Text::_('COM_RESTAURANTMANAGER_MENU_MANAGER'), 'icon-list');
        
        $toolbar = Toolbar::getInstance();
        
        // Add clock as button-like element before preferences
        $clockHtml = '<button type="button" class="btn btn-secondary" disabled style="cursor: default; opacity: 1;">
                        <span class="icon-clock" aria-hidden="true"></span>
                        <span id="rbm-toolbar-clock">--:--</span>
                      </button>';
        $toolbar->appendButton('Custom', $clockHtml);
        
        ToolbarHelper::preferences('com_restaurantmanager');
    }
}
