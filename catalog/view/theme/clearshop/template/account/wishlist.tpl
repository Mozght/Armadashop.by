<?php echo $header; ?>

	<div id="maintop-container">

		<div class="container">

		<?php echo $content_top; ?>

		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		
		<div id="notification"></div>

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

			<?php echo $column_left;?>

			<section id="maincontent" class="<?php echo $main; ?>" role="main">

				<div class="mainborder">

					<?php if ($column_left || $column_right) { ?>
						<div id="toggle_sidebar"></div>
					<?php } ?>

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<?php if ($products) { ?>

						<div id="wish-list">

							<?php foreach ($products as $product) { ?>

								<div id="wishlist-row<?php echo $product['product_id']; ?>" class="row-fluid">
							
									<div class="span2 image">
										<?php if ($product['thumb']) { ?>
										<a href="<?php echo $product['href']; ?>">
											<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
										</a>
										<?php } ?>
									</div>
									
									<div class="span5 name">
										<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
										<small><?php echo $column_model; ?>:</small> <?php echo $product['model']; ?><br>
										<small><?php echo $column_stock; ?>:</small> <span class="stock"><?php echo $product['stock']; ?></span>
									</div>
									
									<div class="span2 price">
										<?php if ($product['price']) { ?>
											<?php if (!$product['special']) { ?>
												<?php echo $product['price']; ?>
											<?php } else { ?>
												<div class="price-old"><?php echo $product['price']; ?></div>
												<div class="price-new"><?php echo $product['special']; ?></div>
											<?php } ?>
										<?php } ?>
									</div>
									
									<div class="span3 list-actions">
										<input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button button-cart button-small" /> 
																				
										<a href="<?php echo $product['remove']; ?>" title="<?php echo $button_remove; ?>"><i class="icon-remove-sign"></i></a>
									</div>

								</div>

							<?php } ?>

						</div> <!-- #wish-list -->
					
						<div class="form-actions">
							<a href="<?php echo $continue; ?>" class="button button-inverse"><?php echo $button_continue; ?></a>
						</div>

					<?php } else { ?>

						<div class="content empty">
							<p><?php echo $text_empty; ?></p>
							<div class="form-actions">
								<a href="<?php echo $continue; ?>" class="button button-inverse"><?php echo $button_continue; ?></a>
							</div>
						</div>

					<?php } ?>

				</div>

			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div> <!-- .row-fluid -->
	
	<?php echo $content_bottom; ?>

<?php echo $footer; ?>