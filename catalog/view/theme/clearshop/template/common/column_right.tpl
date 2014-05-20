<?php if ($modules) { ?>

<?php 
	$width = $this->config->get('clearshop_sidebar_right_width');
	(isset($width)) ? '' : $width = 3;
?>

<aside id="column-right" class="span<?php echo $width; ?> hidden-phone sidebar" role="complementary" >
	<div class="inner">
		<?php foreach ($modules as $module) { ?>
		<?php echo $module; ?>
		<?php } ?>
	</div>
</aside>

<?php } ?>
