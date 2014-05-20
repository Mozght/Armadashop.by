<?php if ($modules) { ?>

<?php 
	$width = $this->config->get('clearshop_sidebar_left_width');
	(isset($width)) ? '' : $width = 3;
?>

<aside id="column-left" class="span<?php echo $width; ?> hidden-phone sidebar" role="complementary">
	<div class="inner">
		<?php foreach ($modules as $module) { ?>
			<?php echo $module; ?>
		<?php } ?>
	</div>
</aside>

<?php } ?>