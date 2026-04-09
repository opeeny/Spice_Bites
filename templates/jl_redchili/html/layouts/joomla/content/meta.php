<?php

/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   (C) 2017 Open Source Matters, Inc. <https://www.joomla.org>
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\CMS\Router\Route;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\Component\Content\Site\Helper\RouteHelper;

// Extract data from displayData
$item = $displayData['item'] ?? $displayData;
$params = $displayData['params'] ?? $item->params;
$blockPosition = $params->get('info_block_position', 0);
$position = $displayData['position'] ?? 'above';

// Determine if we should show this block based on position
$showBlock = (
    ($position === 'above' && ($blockPosition == 0 || $blockPosition == 2)) ||
    ($position === 'below' && ($blockPosition == 1))
);

if (!$showBlock) {
    return;
}

// Prepare author information
$author = '';
if ($params->get('show_author') && !empty($item->author)) {
    $author = $item->created_by_alias ?: $item->author;
    if (!empty($item->contact_link) && $params->get('link_author')) {
        $author = HTMLHelper::_('link', $item->contact_link, $author, ['rel' => 'author']);
    } else {
        $author = '<span rel="author">' . htmlspecialchars($author, ENT_QUOTES, 'UTF-8') . '</span>';
    }
}

// Prepare publish date
$published = '';
if ($params->get('show_publish_date') && !empty($item->publish_up)) {
    $dateFormat = $params->get('date_format', Text::_('DATE_FORMAT_LC3'));
    $published = HTMLHelper::_('date', $item->publish_up, $dateFormat);
    $published = '<time datetime="' . HTMLHelper::_('date', $item->publish_up, 'c') . '">' . $published . '</time>';
}

// Prepare category
$category = '';
if ($params->get('show_category') && !empty($item->category_title)) {
    $category = htmlspecialchars($item->category_title, ENT_QUOTES, 'UTF-8');
    if ($params->get('link_category') && !empty($item->catid)) {
        $categoryUrl = Route::_(RouteHelper::getCategoryRoute($item->catid, $item->language ?? null));
        $category = HTMLHelper::_('link', $categoryUrl, $category, ['rel' => 'category']);
    }
}

?>

<?php if (!$params->get('info_block_show_title', 1)) : ?>
    <span class="visually-hidden"><?php echo Text::_('COM_CONTENT_ARTICLE_INFO'); ?></span>
<?php endif; ?>

<p class="jl-margin-top jl-margin-remove-bottom jl-article-meta">
    <?php // Primary meta information ?>
    <?php if ($author && $published) : ?>
        <?php echo Text::sprintf('G5_META_AUTHOR_DATE', $author, $published); ?>
    <?php elseif ($author) : ?>
        <?php echo Text::sprintf('G5_META_AUTHOR', $author); ?>
    <?php elseif ($published) : ?>
        <?php echo Text::sprintf('G5_META_DATE', $published); ?>
    <?php endif; ?>
    <?php if ($category) : ?>
        <?php echo Text::sprintf('G5_META_CATEGORY', $category); ?>
    <?php endif; ?>
</p>