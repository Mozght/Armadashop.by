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

			<?php echo $column_left; ?>

			<section id="maincontent" class="<?php echo $main; ?> search listing" role="main">

				<div class="mainborder">

					<?php if ($column_left || $column_right) { ?>
						<div id="toggle_sidebar"></div>
					<?php } ?>

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<div class="search-criteria">
						
						<div class="contentset center"><?php echo $text_critea; ?></div>
							
						<div class="controls">
							<?php if ($search) { ?>
							  <input type="text" name="search" class="search-box span6" value="<?php echo $search; ?>" />
							  <?php } else { ?>
							  <input type="text" name="search" class="search-box span6" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
							  <?php } ?>
						</div>

						<select name="category_id" class="filter-category span4">

							<option value="0"><?php echo $text_category; ?></option>
							<?php foreach ($categories as $category_1) { ?>
							<?php if ($category_1['category_id'] == $category_id) { ?>
							<option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
							<?php } ?>
							<?php foreach ($category_1['children'] as $category_2) { ?>
							<?php if ($category_2['category_id'] == $category_id) { ?>
							<option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;-&nbsp;<?php echo $category_2['name']; ?></option>
							<?php } ?>
							<?php foreach ($category_2['children'] as $category_3) { ?>
							<?php if ($category_3['category_id'] == $category_id) { ?>
							<option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;<?php echo $category_3['name']; ?></option>
							<?php } ?>
							<?php } ?>
							<?php } ?>
							<?php } ?>

						</select>

						<div class="controls">
							
							<label class="checkbox inline">

								<?php if ($sub_category) { ?>
									<input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
								<?php } else { ?>
									<input type="checkbox" name="sub_category" value="1" id="sub_category" />
								<?php } ?>
								<?php echo $text_sub_category; ?>

							</label>

							<label class="checkbox inline">

								<?php if ($description) { ?>
									<input type="checkbox" name="description" value="1" id="description" checked="checked" />
								<?php } else { ?>
									<input type="checkbox" name="description" value="1" id="description" />
								<?php } ?>
								<?php echo $entry_description; ?>

							</label>

						</div>
				
						<div class="buttons">
							<input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button button-inverse" />
						</div>

					</div>

					

					<!-- Products -->

					<?php if ($products) { ?>


						<div class="contentset center"><?php echo $text_search; ?></div>

						<!-- Grid/Lis view, filters -->

						<div class="product-filter">

							<div class="options">

								<div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>

								<div class="button-group display" data-toggle="buttons-radio">
								
									<button id="grid" class="button tooltp active" rel="tooltip" title="<?php echo $text_grid; ?>" onclick="display('grid');"><i class="icon-th-large"></i></button>
								
									<button id="list" class="button tooltp" rel="tooltip" title="<?php echo $text_list; ?>" onclick="display('list');"><i class="icon-th-list"></i></button>
								
								</div>

							</div> <!-- .options -->

							
							<div class="list-options"> 

								<div class="sort">

									<?php echo $text_sort; ?>

									<select onchange="location = this.value;">
										<?php foreach ($sorts as $sorts) { ?>
										<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
										<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
										<?php } else { ?>
										<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
										<?php } ?>
										<?php } ?>
									</select>

								</div> <!-- .sort -->

								<div class="limit">

									<?php echo $text_limit; ?>

									<select onchange="location = this.value;">
										
										<?php foreach ($limits as $limits) { ?>

											<?php if ($limits['value'] == $limit) { ?>

												<option value="<?php echo $limits['href']; ?>" selected="selected">
													<?php echo $limits['text']; ?>
												</option>

											<?php } else { ?>

												<option value="<?php echo $limits['href']; ?>">
													<?php echo $limits['text']; ?>
												</option>

											<?php } ?>

										<?php } ?>

									</select>

								</div> <!-- .limit -->

							</div> <!-- .list-options -->

						</div> <!-- .product-filter -->
					
						
						<!-- Product list (Default to Grid) -->

						<?php if($this->config->get('clearshop_product_columns') == '4') $productcols = 'cols-4'; 
							else $productcols = 'cols-3'; ?>


							<div class="product-listing">

								<div class="product-grid row-fluid <?php echo $productcols; ?>">

									<?php foreach ($products as $product) { ?>

									<div class="grid-box">

										<div class="inner">

											<div class="inner2">

												<?php if ($product['thumb']) { ?>
													<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
												<?php } ?>

												<?php if ($product['price'] && $product['special']) { ?>
													<div class="onsale"><span><?php echo $this->language->get('text_onsale'); ?></span></div>
												<?php } ?>

												<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>

												<div class="description"><?php echo $product['description']; ?></div>

												<?php if ($product['price']) { ?>

													<div class="price">
														
														<?php if (!$product['special']) { ?>
															<?php echo $product['price']; ?>
														<?php } else { ?>
															<span class="price-old"><?php echo $product['price']; ?></span>
															<span class="price-new"><?php echo $product['special']; ?></span>
														<?php } ?>

														<?php if ($product['tax']) { ?>
															<br />
															<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
														<?php } ?>

													</div>

												<?php } ?>

												<?php if ($product['rating']) { ?>
													<div class="rating"><img src="catalog/view/theme/clearshop/images/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
												<?php } ?>

												<div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>

												<div class="links">
													<span class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>" class="tooltp" ><i class="icon-heart"></i></a></span>
													
													<span class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>" class="tooltp" ><i class="icon-plus"></i></a></span>
												</div>

											</div> <!-- .inner2 -->
											
										</div> <!-- .inner -->

									</div> <!-- .grid-box -->

									<?php } ?>

								</div> <!-- .produc-grid -->

							</div> <!-- .product-listing -->


							<div class="pagination"><?php echo $pagination; ?></div>
					
					<?php } else { ?>

						<div class="empty search">
							<div class="empty-inner"><?php echo $text_empty; ?></div>
						</div>

					<?php } ?>

				</div>

			</section><!-- #maincontent -->
			
			<?php echo $column_right; ?>

		</div> <!-- .row -->
		
		<?php echo $content_bottom; ?>

	<script type="text/javascript">

		$('#maincontent input[name=\'search\']').keydown(function(e) {
			if (e.keyCode == 13) {
				$('#button-search').trigger('click');
			}
		});

		$('select[name=\'category_id\']').bind('change', function() {
			if (this.value == '0') {
				$('input[name=\'sub_category\']').attr('disabled', 'disabled');
				$('input[name=\'sub_category\']').removeAttr('checked');
			} else {
				$('input[name=\'sub_category\']').removeAttr('disabled');
			}
		});

		$('select[name=\'category_id\']').trigger('change');

		$('#button-search').bind('click', function() {
			url = 'index.php?route=product/search';
	
			var search = $('#maincontent input[name=\'search\']').attr('value');
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}

			var category_id = $('#maincontent select[name=\'category_id\']').attr('value');
			
			if (category_id > 0) {
				url += '&category_id=' + encodeURIComponent(category_id);
			}
			
			var sub_category = $('#maincontent input[name=\'sub_category\']:checked').attr('value');
			
			if (sub_category) {
				url += '&sub_category=true';
			}
				
			var filter_description = $('#maincontent input[name=\'description\']:checked').attr('value');
			
			if (filter_description) {
				url += '&description=true';
			}

			location = url;
		});

	</script> 

<?php echo $footer; ?>