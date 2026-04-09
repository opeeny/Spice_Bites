<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_restaurantmanager
 *
 * @copyright   Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.
 * @license     GNU General Public License version 2 or later
 */

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Installer\InstallerAdapter;
use Joomla\CMS\Installer\InstallerScriptInterface;
use Joomla\CMS\Language\Text;
use Joomla\Database\DatabaseInterface;
use Joomla\DI\Container;
use Joomla\DI\ServiceProviderInterface;

return new class () implements ServiceProviderInterface {
    public function register(Container $container): void
    {
        $container->set(
            InstallerScriptInterface::class,
            new class () implements InstallerScriptInterface {
                private $minimumPhp = '8.1.0';
                private $minimumJoomla = '6.0.0';

                public function install(InstallerAdapter $adapter): bool
                {
                    return true;
                }

                public function update(InstallerAdapter $adapter): bool
                {
                    return true;
                }

                public function uninstall(InstallerAdapter $adapter): bool
                {
                    return true;
                }

                public function preflight(string $type, InstallerAdapter $adapter): bool
                {
                    if (version_compare(PHP_VERSION, $this->minimumPhp, '<')) {
                        Factory::getApplication()->enqueueMessage(
                            sprintf(
                                Text::_('COM_RESTAURANTMANAGER_ERROR_PHP_VERSION'),
                                $this->minimumPhp,
                                PHP_VERSION
                            ),
                            'error'
                        );
                        return false;
                    }

                    if (version_compare(JVERSION, $this->minimumJoomla, '<')) {
                        Factory::getApplication()->enqueueMessage(
                            sprintf(
                                Text::_('COM_RESTAURANTMANAGER_ERROR_JOOMLA_VERSION'),
                                $this->minimumJoomla,
                                JVERSION
                            ),
                            'error'
                        );
                        return false;
                    }

                    return true;
                }

                public function postflight(string $type, InstallerAdapter $adapter): bool
                {
                    if ($type === 'install') {
                        Factory::getApplication()->enqueueMessage(
                            Text::_('COM_RESTAURANTMANAGER_INSTALL_SUCCESS'),
                            'message'
                        );
                    }

                    return true;
                }
            }
        );
    }
};
