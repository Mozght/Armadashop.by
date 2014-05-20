<?php echo $header; ?>

	<div id="maintop-container">

		<div class="container">

		<?php echo $content_top; ?>

		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<?php echo $breadcrumb['separator']; ?>
				<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
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

			<?php echo $column_left ?>

			<section id="maincontent" class="<?php echo $main; ?> comparison" role="main">

				<div class="mainborder">

					<?php if ($column_left || $column_right) { ?>
						<div id="toggle_sidebar"></div>
					<?php } ?>

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<?php if ($products) { ?>
					
					<div class="nav-container">

						<ul class="pager">
							<li class="previous">
								<a href="" id="previous-column" title="<?php echo $this->language->get('text_prev'); ?>"><i class="icon-prev"></i> <?php echo $this->language->get('text_prev'); ?> </a>
							</li>
							<li class="next">
								<a href="" id="next-column" title="<?php echo $this->language->get('text_next'); ?>"><?php echo $this->language->get('text_next'); ?> <i class="icon-next"></i></a>
							</li>
						</ul>

					</div>

					<div id="compare-wrapper">

						<table class="table table-bordered table-striped compare-info">
							
								<thead>
									<tr>
										<td></td>
									
										<?php foreach ($products as $product) { ?>
											<td class="name">
												<a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a>
											</td>
										<?php } ?>
									</tr>
								</thead>

							<tbody>
								<tr>
									<td colspan="<?php echo count($products) + 1; ?>" class="divider"></td>
								</tr>
								<tr>
									<td class="title"><?php echo $text_image; ?></td>
									
									<?php foreach ($products as $product) { ?>
									<td class="image">
										<?php if ($product['price'] && $product['special']) { ?>
										<span class="onsale">
											<?php $this->language->load('module/clearshop');
											echo $this->language->get('text_onsale'); ?>
										</span>
										<?php } ?>
										
										<?php if ($products[$product['product_id']]['thumb']) { ?>
											<a href="<?php echo $products[$product['product_id']]['href']; ?>"><img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" /></a>
										<?php } ?>
									</td>
									<?php } ?>
								</tr>

								<tr>
									<td class="title"><?php echo $text_price; ?></td>

									<?php foreach ($products as $product) { ?>

									<td class="price">
										<?php if ($products[$product['product_id']]['price']) { ?>
										
											<?php if (!$products[$product['product_id']]['special']) { ?>
												<?php echo $products[$product['product_id']]['price']; ?>
											<?php } else { ?>
												<span class="price-old"><?php echo $products[$product['product_id']]['price']; ?></span> 
												<span class="price-new"><?php echo $products[$product['product_id']]['special']; ?></span>
											<?php } ?>
										<?php } ?>
									</td>
									<?php } ?>
								</tr>

								<tr>
									<td class="title"><?php echo $text_model; ?></td>
									
									<?php foreach ($products as $product) { ?>
									<td><?php echo $products[$product['product_id']]['model']; ?></td>
									<?php } ?>
								</tr>
								<tr>
									<td class="title"><?php echo $text_manufacturer; ?></td>

									<?php foreach ($products as $product) { ?>
									<td><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
									<?php } ?>
								</tr>
								<tr>
									<td class="title"><?php echo $text_availability; ?></td>
									<?php foreach ($products as $product) { ?>
									<td><?php echo $products[$product['product_id']]['availability']; ?></td>
									<?php } ?>
								</tr>
								<?php if ($review_status) { ?>
								<tr>
									<td class="title"><?php echo $text_rating; ?></td>
									<?php foreach ($products as $product) { ?>
									<td>
										<img src="catalog/view/theme/clearshop/images/stars-<?php echo $products[$product['product_id']]['rating']; ?>.png" alt="<?php echo $products[$product['product_id']]['reviews']; ?>" /><br />
										<small><?php echo $products[$product['product_id']]['reviews']; ?></small>
									</td>
									<?php } ?>
								</tr>
								<?php } ?>
								<tr>
									<td class="title"><?php echo $text_summary; ?></td>
									<?php foreach ($products as $product) { ?>
									<td class="description">
										<?php echo $products[$product['product_id']]['description']; ?>
									</td>
									<?php } ?>
								</tr>
								<tr>
									<td class="title"><?php echo $text_weight; ?></td>
									
									<?php foreach ($products as $product) { ?>
									<td><?php echo $products[$product['product_id']]['weight']; ?></td>
									<?php } ?>
								</tr>
								<tr>
									<td class="title"><?php echo $text_dimension; ?></td>
									<?php foreach ($products as $product) { ?>
									<td><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></td>
								<?php } ?>
								</tr>
							</tbody>
							<?php foreach ($attribute_groups as $attribute_group) { ?>
							<thead>
								<tr>
									<td class="compare-attribute" colspan="<?php echo count($products) + 1; ?>">
										<?php echo $attribute_group['name']; ?>
									</td>
								</tr>
							</thead>
							<tbody>
							<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
							
								<tr>
								<td class="title"><?php echo $attribute['name']; ?></td>
								<?php foreach ($products as $product) { ?>
								<?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
								<td><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
								<?php } else { ?>
								<td></td>
								<?php } ?>
								<?php } ?>
								</tr>
							
							<?php } ?>
							</tbody>
							<?php } ?>
							<tfoot>
								<tr>
									<td></td>
									<?php foreach ($products as $product) { ?>
									<td><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button button-cart button-small" /></td>
									<?php } ?>
								</tr>
								<tr>
									<td></td>
									<?php foreach ($products as $product) { ?>
									<td>
									
									<a href="<?php echo $product['remove']; ?>" title="<?php echo $button_remove; ?>" class="tooltp"><i class="icon-remove-sign"></i></a>

									</td>
									<?php } ?>
								</tr>
							</tfoot>
						</table>
					
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

			<?php echo $content_bottom; ?>

		</div>

		<script type="text/javascript">

			$(document).ready(function() {
				$('#next-column').click(function(event) {
					event.preventDefault();
					$('#compare-wrapper').animate({scrollLeft:'+=95'}, 'medium');        
				});
				$('#previous-column').click(function(event) {
					event.preventDefault();
					$('#compare-wrapper').animate({scrollLeft:'-=95'}, 'medium');        
				});
			});

		</script>
	
<?php echo $footer; ?>