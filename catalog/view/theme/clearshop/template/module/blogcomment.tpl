<div class="box blogModule <?php echo $classSuffix; ?>">
	<div class="box-heading"><?php echo $heading_title; ?></div>
	<div class="box-content box-category">
		<ul class="recentComments">
		<?php foreach ($comments as $comment) { ?>
			<li>
				<a href="<?php echo $comment['link']; ?>" title="<?php echo $comment['name']; ?>"><?php echo $comment['avatar']; ?></a>
				<?php echo $comment['author']; ?> <i>on</i>
				<a href="<?php echo $comment['link']; ?>" title="<?php echo $comment['article']; ?>" class="title"><?php echo $comment['article']; ?></a>
			</li>
		<?php } ?>
		</ul>
	</div>
	<div class="box-footer"><span></span></div>
</div>