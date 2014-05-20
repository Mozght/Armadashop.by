<?php echo $header; ?>

	<div id="maintop-container">

		<div class="container">

		<?php echo $content_top; ?>
		
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>		

		<?php if ($error_warning) { ?>
			<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>
		

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

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="forgotten" class="form-horizontal">

						<p><?php echo $text_email; ?></p>

						<div class="contentset"><?php echo $text_your_email; ?></div>

						<div class="control-group">
							<label for="email" class="control-label">
								<b><?php echo $entry_email; ?></b>
							</label>
							<div class="controls">
								<input type="email" name="email" id="email" value="" class="required span6" required />
							</div>
						</div>

						<div class="form-actions">
							<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
							<input type="submit" value="<?php echo $button_continue; ?>" class="button button-inverse" />
						</div>

					</form>

				</div>

			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div> <!-- .row -->

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>