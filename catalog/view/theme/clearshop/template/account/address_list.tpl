<?php echo $header; ?>

	<div id="maintop-container">

		<div class="container">

		<?php echo $content_top; ?>
		
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>

		<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
		<?php } ?>
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

					<div class="contentset"><i class="icon-map-marker"></i><?php echo $text_address_book; ?></div>

					<div id="address-list">

						<?php foreach ($addresses as $result) { ?>

							<div class="row-fluid">

								<div class="span6">
									<address><?php echo $result['address']; ?></address>
								</div>

								<div class="span6 list-actions">
									<a href="<?php echo $result['update']; ?>" class="button button-mini" title="<?php echo $button_edit; ?>"><?php echo $button_edit; ?></a>
									
									<a href="<?php echo $result['delete']; ?>" title="<?php echo $button_delete; ?>"><i class="icon-remove-sign"></i></a>

								</div>
								
							</div>

						<?php } ?>

					</div>

					<div class="form-actions">
						<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
						<a href="<?php echo $insert; ?>" class="button button-inverse"><?php echo $button_new_address; ?></a>
					</div>
				
				</div>

			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div> <!-- .row -->

	<?php echo $content_bottom; ?>
	
<?php echo $footer; ?>