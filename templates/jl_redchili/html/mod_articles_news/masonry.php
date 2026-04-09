<?php

/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_news
 *
 * @copyright   (C) 2006 Open Source Matters, Inc. <https://www.joomla.org>
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\CMS\Helper\ModuleHelper;

if (!$list) {
    return;
}
$n = count($list);
$item = '';
if ($n == 2 || $n == 3) {
	$item = $n;
} else {
	$item = '4';
}
?>
<div class="jl-grid jl-child-width-1-1 jl-child-width-1-<?php echo $item; ?>@m jl-grid-column-small jl-flex-top jl-flex-wrap-top" jl-grid="masonry: next; parallax: 0; parallax-justify: true; parallax-start: 100vh; parallax-end: 100vh;">
    <?php foreach ($list as $item) : ?>
        <div itemscope itemtype="https://schema.org/Article">
            <?php require ModuleHelper::getLayoutPath('mod_articles_news', '_item_grid'); ?>
        </div>
    <?php endforeach; ?>
</div>
