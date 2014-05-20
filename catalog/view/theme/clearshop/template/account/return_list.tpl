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

			<?php echo $column_left ?>

			<section id="maincontent" class="<?php echo $main; ?>" role="main">

				<div class="mainborder">

					<?php if ($column_left || $column_right) { ?>
						<div id="toggle_sidebar"></div>
					<?php } ?>

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<?php if ($returns) { ?>

						<div class="return-list">

							<?php foreach ($returns as $return) { ?>

								<div class="contentset"><?php echo $text_return_id; ?> <?php echo $return['return_id']; ?></b></div>

								<div class="row-fluid">

									<div class="span3">
										
										<b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?> <br>
										<small><?php echo $return['date_added']; ?></small>
									</div>

									<div class="span3">
										<b><?php echo $text_status; ?></b> <?php echo $return['status']; ?>
									</div>

									<div class="span4">
										<b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?>
									</div>

									<div class="span2 list-actions">
										<a href="<?php echo $return['href']; ?>" class="button button-mini" title="<?php echo $button_view; ?>"><?php echo $button_view; ?></a>
									</div>

								</div>

							<?php } ?>

						</div>
					
						<div class="pagination"><?php echo $pagination; ?></div>

						<div class="form-actions">
							<a href="<?php echo $continue; ?>" class="button button-inverse"><?php echo $button_continue; ?></a>
						</div>

					<?php } else { ?>
					
						<div class="empty">
							<div class="empty-inner">
								<p><?php echo $text_empty; ?></p>
								<div class="buttons">
									<a href="<?php echo $continue; ?>" class="button button-inverse"><?php echo $button_continue; ?></a>
								</div>
							</div>
						</div>

					<?php } ?>

				</div>

			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div> <!-- .row -->

	<?php echo $content_bottom; ?>
	
<?php echo $footer; ?>