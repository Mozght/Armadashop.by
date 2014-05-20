<?php if ($modules): ?>

	<section class="content-bottom">
		<div class="container">
			<?php foreach ($modules as $module) { ?>
				<?php echo $module; ?>
			<?php } ?>
		</div>
	</section>
	
<?php endif ?>