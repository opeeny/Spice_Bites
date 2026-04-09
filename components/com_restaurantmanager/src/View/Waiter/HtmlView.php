<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

namespace Joomla\Component\RestaurantManager\Site\View\Waiter;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;
use Joomla\CMS\Factory;

/**
 * View class for waiter interface
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
        // Get data from the model
        $this->items = $this->get('MenuItems');

        // Check for errors
        if (count($errors = $this->get('Errors'))) {
            throw new \Exception(implode("\n", $errors), 500);
        }

        // Display the template
        parent::display($tpl);
    }
}
