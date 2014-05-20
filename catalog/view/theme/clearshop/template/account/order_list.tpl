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

					<?php if ($orders) { ?>

					<div id="order-list">
						
						<?php foreach ($orders as $order) { ?>

							<div class="contentset"><?php echo $text_order_id; ?> <?php echo $order['order_id']; ?></div>

							<div class="row-fluid">
								
								<div class="span3">
									<small><?php echo $text_date_added; ?></small> <?php echo $order['date_added']; ?><br>
									<small><?php echo $text_status; ?></small> <?php echo $order['status']; ?> <br/>
									
								</div>

								<div class="order-contents span4">
									<b><?php echo $text_customer; ?></b> <?php echo $order['name']; ?>
								</div>

								<div class="span2">
									<?php echo $text_products; ?> <?php echo $order['products']; ?> <br/>
									<b><?php echo $text_total; ?></b> <?php echo $order['total']; ?>
								</div>
								
								<div class="span3 list-actions">
									<a href="<?php echo $order['href']; ?>" class="button button-mini" title="<?php echo $button_view; ?>"><?php echo $button_view; ?></a>
									<a href="<?php echo $order['reorder']; ?>" class="button button-mini button-cart" title="<?php echo $button_reorder; ?>"><?php echo $button_reorder; ?></a>
								</div>

							</div>
					<?php } ?>

					</div>

					<div class="pagination"><?php echo $pagination; ?></div>

					<?php } else { ?>

					<div class="content"><?php echo $text_empty; ?></div>

					<?php } ?>

					<div class="form-actions">
						<a href="<?php echo $continue; ?>" class="button button-inverse"><?php echo $button_continue; ?></a>
					</div>

				</div>

			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div> <!-- .row -->

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>