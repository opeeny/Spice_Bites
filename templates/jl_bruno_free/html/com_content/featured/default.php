<?php

/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   (C) 2006 Open Source Matters, Inc. <https://www.joomla.org>
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\CMS\Language\Text;

// Get common parameters
$numLeadingArticles = (int) $this->params->get('num_leading_articles', 1);
$numColumns = (int) $this->params->get('num_columns', 1);

?>
<div class="blog-featured" itemscope itemtype="https://schema.org/Blog">
    <?php if ($this->params->get('show_page_heading') != 0) : ?>
    <div class="page-header">
        <h1>
        <?php echo $this->escape($this->params->get('page_heading')); ?>
        </h1>
    </div>
    <?php endif; ?>

    <?php // Leading Articles ?>
    <?php if (!empty($this->lead_items)) : ?>
        <?php
        $leadingClass = $this->params->get('blog_class_leading', '');
        $leadingGridClass = 'jl-grid jl-child-width-1-1';
        if ($numLeadingArticles > 1) {
            $leadingGridClass .= ' jl-grid-match';
        }
        if ($leadingClass) {
            $leadingGridClass .= ' ' . $leadingClass;
        }
        ?>
        <div class="<?php echo trim($leadingGridClass); ?>"<?php echo $numLeadingArticles > 1 ? ' jl-grid' : ''; ?>>
            <?php foreach ($this->lead_items as &$item) : ?>
                <div class="el-blog-item" itemprop="blogPost" itemscope itemtype="https://schema.org/BlogPosting">
                    <?php
                    $this->item = &$item;
                    echo $this->loadTemplate('item');
                    ?>
                </div>
            <?php endforeach; ?>
        </div>
    <?php endif; ?>

    <?php // Intro Articles ?>
    <?php if (!empty($this->intro_items)) : ?>
        <?php
        $blogClass = $this->params->get('blog_class', '');
        $introGridClass = 'jl-grid';
        
        // Add column classes
        if ($numColumns > 1) {
            $introGridClass .= ' jl-child-width-1-' . $numColumns . '@m';
        } else {
            $introGridClass .= ' jl-child-width-1-1';
        }
        
        // Add custom class if set
        if ($blogClass) {
            $introGridClass .= ' ' . $blogClass;
        }
        ?>
        <div class="<?php echo trim($introGridClass); ?>" jl-grid>
            <?php foreach ($this->intro_items as $key => &$item) : ?>
                <div class="el-blog-item" itemprop="blogPost" itemscope itemtype="https://schema.org/BlogPosting">
                    <?php
                    $this->item = &$item;
                    echo $this->loadTemplate('item');
                    ?>
                </div>
            <?php endforeach; ?>
        </div>
    <?php endif; ?>

    <?php // Link Items (More Articles) ?>
    <?php if (!empty($this->link_items)) : ?>
        <div class="jl-padding-large items-more">
            <h3><?php echo Text::_('COM_CONTENT_MORE_ARTICLES'); ?></h3>
            <?php echo $this->loadTemplate('links'); ?>
        </div>
    <?php endif; ?>

    <?php if ($this->params->def('show_pagination', 2) == 1  || ($this->params->get('show_pagination') == 2 && $this->pagination->pagesTotal > 1)) : ?>
        <div class="jl-margin">
            <?php if ($this->params->def('show_pagination_results', 1)) : ?>
                <p class="jl-text-center counter">
                    <?php echo $this->pagination->getPagesCounter(); ?>
                </p>
            <?php endif; ?>
            <?php echo $this->pagination->getPagesLinks(); ?>
        </div>
    <?php endif; ?>
</div>