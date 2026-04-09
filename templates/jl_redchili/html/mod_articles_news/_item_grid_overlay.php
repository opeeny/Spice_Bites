<?php

/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_news
 *
 * @copyright   (C) 2010 Open Source Matters, Inc. <https://www.joomla.org>
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

 defined('_JEXEC') or die;

 use Joomla\CMS\Uri\Uri;
 use Joomla\CMS\Language\Text;
 
 $imageurl = $item->imageSrc;
 $baseurl = strpos($imageurl, 'http') === 0 ? '' : Uri::base();
 
 ?>

<article class="el-item jl-light">
	<a class="jl-cover-container jl-link-toggle jl-display-block" href="<?php echo $item->link; ?>">  

		<div class="jl-height-medium jl-background-cover jl-flex jl-flex-center jl-flex-middle" data-src="<?php echo $baseurl . $imageurl; ?>" jl-img="loading: eager">

			<div class="jl-overlay-primary jl-position-cover jl-light">

				<div class="jl-position-bottom-left jl-panel jl-padding jl-margin-remove-first-child">

					<?php if ($params->get('item_title')) : ?>
						<?php $item_heading = $params->get('item_heading', 'h3'); ?>
						<<?php echo $item_heading; ?> class="el-title jl-h4 jl-margin-small-top jl-margin-remove-bottom">
							<?php echo $item->title; ?>
						</<?php echo $item_heading; ?>>
					<?php endif; ?>

					<?php if (!$params->get('intro_only')) : ?>
						<?php echo $item->afterDisplayTitle; ?>
					<?php endif; ?>

					<?php echo $item->beforeDisplayContent; ?>

					<?php if ($params->get('show_introtext', 1)) : ?>
						<div class="el-content jl-panel jl-margin-top">
							<?php echo substr(strip_tags($item->introtext), 0, 100) . '...'; ?>
						</div>
					<?php endif; ?>

					<?php echo $item->afterDisplayContent; ?>

					<?php if (isset($item->link) && $item->readmore != 0 && $params->get('readmore')) : ?>
						<?php echo LayoutHelper::render('joomla.content.readmore', ['item' => $item, 'params' => $item->params, 'link' => $item->link]); ?>
					<?php endif; ?>

				</div>

			</div>

		</div>

	</a>
</article>
