<?php

/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_news
 *
 * @copyright   (C) 2010 Open Source Matters, Inc. <https://www.joomla.org>
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\CMS\Layout\LayoutHelper;

?>

<a class="jl-accordion-title" href>
	<?php echo $item->title; ?>
	<span jl-accordion-icon></span>
</a>
    
<div class="jl-accordion-content">

	<?php if ($params->get('img_intro_full') !== 'none' && !empty($item->imageSrc)) : ?>
		<figure class="newsflash-image">
			<?php echo LayoutHelper::render(
				'joomla.html.image',
				[
					'src' => $item->imageSrc,
					'alt' => $item->imageAlt,
				]
			); ?>
			<?php if (!empty($item->imageCaption)) : ?>
				<figcaption>
					<?php echo $item->imageCaption; ?>
				</figcaption>
			<?php endif; ?>
		</figure>
	<?php endif; ?>

	<?php if (!$params->get('intro_only')) : ?>
		<?php echo $item->afterDisplayTitle; ?>
	<?php endif; ?>

	<?php echo $item->beforeDisplayContent; ?>

	<?php if ($params->get('show_introtext', 1)) : ?>
		<div class="el-content jl-panel">
			<?php echo strip_tags($item->introtext); ?>
		</div>
	<?php endif; ?>

	<?php echo $item->afterDisplayContent; ?>

<?php if (isset($item->link) && $item->readmore != 0 && $params->get('readmore')) : ?>
    <?php // Overwrite global article setting if needed ?>
    <?php if ($params->get('readmore_title', '') !== '') : ?>
        <?php $item->params->set('show_readmore_title', $params->get('readmore_title')); ?>
    <?php endif; ?>
    <?php echo LayoutHelper::render('joomla.content.readmore', ['item' => $item, 'params' => $item->params, 'link' => $item->link]); ?>
<?php endif; ?>

</div>