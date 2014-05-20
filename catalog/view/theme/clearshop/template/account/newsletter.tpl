<?php echo $header; ?>

	<div id="maintop-container">

		<div class="container">

		<?php echo $content_top; ?>
		
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		
		<?php 

		$this->language->load('module/clearshop');
		
		$sbleft= $this->config->get('clearshop_sidebar_left_width');
		$sbright= $this->config->get('clearshop_sidebar_right_width');
		
		if ($column_left && $column_right) { 
			$main_width = 12 - $sbleft - $sbright;
			$main = "middle sideleft "; }
		else if ($column_left) {
			$main_width = 12 - $sbleft;
			$main ="sideleft "; }
		else if ($column_right) {
			$main_width = 12 - $sbright;
			$main ="sideright "; }
		else { 
			$main_width = 12; $main = ""; }

		$main .= "span".$main_width;

		?>

		<div class="row-fluid">

			<?php echo $column_left; ?>

			<section id="maincontent" class="<?php echo $main; ?>" role="main">

				<div class="mainborder">

					<?php if ($column_left || $column_right) { ?>
						<div id="toggle_sidebar"></div>
					<?php } ?>

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="newsletter" class="form-horizontal">

						<div class="control-group">
							
							<label class="control-label"><?php echo $entry_newsletter; ?></label>
							
							<div class="controls">
								<?php if ($newsletter) { ?>
									<label class="radio inline"><input type="radio" name="newsletter" value="1" checked="checked" /><?php echo $text_yes; ?></label>
									<label class="radio inline"><input type="radio" name="newsletter" value="0" /><?php echo $text_no; ?></label>
								<?php } else { ?>
									<label class="radio inline"><input type="radio" name="newsletter" value="1" /><?php echo $text_yes; ?></label>
									<label class="radio inline"><input type="radio" name="newsletter" value="0" checked="checked" /><?php echo $text_no; ?></label>
								<?php } ?>
							</div>
						</div>
						
						<div class="form-actions">
							<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
							<input type="submit" value="<?php echo $button_continue; ?>" class="button button-inverse" />
						</div>

					</form>

				</div>
				
			</section>

			<?php echo $column_right; ?>

		</div> <!-- .row -->
	
	<?php echo $content_bottom; ?>

<?php echo $footer; ?>