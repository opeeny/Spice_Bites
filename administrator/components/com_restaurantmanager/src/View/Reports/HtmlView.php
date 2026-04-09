<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

namespace Joomla\Component\RestaurantManager\Administrator\View\Reports;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;
use Joomla\CMS\Toolbar\Toolbar;
use Joomla\CMS\Toolbar\ToolbarHelper;
use Joomla\CMS\Language\Text;

/**
 * View class for reports
 */
class HtmlView extends BaseHtmlView
{
    /**
     * Display the view
     *
     * @param   string  $tpl  The name of the template file to parse
     *
     * @return  void
     */
    public function display($tpl = null)
    {
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
        ToolbarHelper::title(Text::_('COM_RESTAURANTMANAGER_REVENUE_REPORTS'), 'icon-chart');
        
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
