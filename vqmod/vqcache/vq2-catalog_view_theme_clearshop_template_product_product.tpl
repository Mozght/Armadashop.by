<?php echo $header; ?>

	<div id="maintop-container">

			<?php $this->language->load('module/clearshop'); ?>

				<div class="container">

					<div itemscope itemtype="http://schema.org/Product"><?php echo $content_top; ?>
				
					<div class="breadcrumb">
						<?php foreach ($breadcrumbs as $breadcrumb) { ?>
						<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
						<?php } ?>
					</div>

					
				<div class="prevnext <?php echo $this->config->get('clearshop_prevnext_mode'); ?>">
					<ul class="pager">
						<?php if (isset($prev_url)) { ?>
						<li class="previous">
							<a href="<?php echo $prev_url; ?>" title="<?php echo $prev_title;?>" class="tooltp"><i class="icon-caret-left"></i><span class="name"><?php echo $prev_title;?></span><span class="dir"><?php echo $this->language->get('text_prev'); ?></span></a>
						</li>
						<?php } ?>
						<?php if (isset($next_url)) { ?>
						<li class="next">
							<a href="<?php echo $next_url; ?>" title="<?php echo $next_title;?>" class="tooltp"><i class="icon-caret-right"></i><span class="name"><?php echo $next_title;?></span><span class="dir"><?php echo $this->language->get('text_next'); ?></span></a>
						</li>
						<?php } ?>
					</ul>
				</div>
			

					<div id="notification"></div>

					<?php 

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

						<section id="maincontent" class="product-info <?php echo $main; ?>" role="main">

							<div class="mainborder  layout-<?php echo $this->config->get('clearshop_product_layout'); ?>">

								<?php if ($column_left || $column_right) { ?>
									<div id="toggle_sidebar"></div>
								<?php } ?>

								<?php switch ($this->config->get('clearshop_product_layout')) {
									case '1': 
									if($column_left || $column_right) $spanval1 = 7; else $spanval1 = 8;
									  $spanval2 = 12; break;
									case '2': $spanval1 = 5; $spanval2 = 7; break;
									case '3': $spanval1 = 12; $spanval2 = 6; break;
									default: break;
								} ?>

								<?php if ($this->config->get('clearshop_product_layout') == 3) { ?>

									<header class="page-header full-width">
										<?php if ($price && $special) { ?>
										<div class="onsale"><span><?php echo $this->language->get('text_onsale'); ?></span></div>
										<?php } ?>
										<h1><span itemprop="name"><?php echo $heading_title; ?></span></h1>
									</header>

								<?php } ?>

								<div class="row-fluid">

									<div class="span<?php echo $spanval1; ?> leftcol">

										<?php if ($thumb || $images) { ?>

											<?php if ($thumb) { ?>

												<div class="image">

												<?php if($this->config->get('clearshop_status') == 1 && $this->config->get('clearshop_cloud_zoom') == 1) { 

													if($this->config->get('clearshop_zoom_autosize') == 1) {
														$zwidth = 'auto';
														$zheight = 'auto';
													} else {
														$zwidth = $this->config->get('clearshop_zoom_width');
														$zheight = $this->config->get('clearshop_zoom_height');
													}

													?>

													<!-- image zoom  -->

													<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom" id='image' data-options="adjustX: 10, adjustY:-4, tint:false,lensOpacity:0.2, zoomWidth:'<?php echo $zwidth ?>', zoomHeight:'<?php echo $zheight; ?>', position:'<?php echo $this->config->get('clearshop_zoom_position'); ?>', showTitle:false"><img src="<?php echo $thumb; ?>" itemprop="image"  title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a><a href="<?php echo $popup; ?>" id="zoom-image" title=" <?php echo $heading_title; ?>" class="colorbox tooltp" ><span><i class="icon-zoom-in"></i> <?php echo $this->language->get('text_zoom'); ?></span></a>

												<?php } else { ?>

													<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>

												<?php } ?>

												</div>

											<?php } ?>

											<?php if ($images) { ?>

												<div class="image-additional">

													<ul>
														<?php if($this->config->get('clearshop_status') == 1 && $this->config->get('clearshop_cloud_zoom') == 1) { ?>

														<li><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" data-options="useZoom: 'image', smallImage: '<?php echo $thumb; ?>' "><img src="<?php echo $small; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>

														<?php } ?>

													<?php foreach ($images as $image) { ?>

														<?php if($this->config->get('clearshop_status')== 1 && $this->config->get('clearshop_cloud_zoom') == 1) { ?>

															<li><a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" data-options="useZoom: 'image', smallImage: '<?php echo $image['thumb']; ?>' "><img src="<?php echo $image['small']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a><a href="<?php echo $image['popup']; ?>" class="colorbox" style="display:none"></a></li>

														<?php } else { 

															if($image['small']) { ?>

																<li><a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" ><img src="<?php echo $image['small']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>

															<?php } else { ?>

																<li><a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" ><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>

															<?php } ?>

														<?php } ?>

													<?php } ?>

													</ul>

												</div>

											<?php } ?>

										<?php } ?> 
									
									</div> <!-- .span6 LEFT BOX-->

								<?php if ($this->config->get('clearshop_product_layout') == 3) { ?>
								</div>
								<div class="row-fluid">
								<?php } ?>

									<div class="span<?php echo 12-$spanval1; ?> rightcol">

										<?php if ($this->config->get('clearshop_product_layout') != 3) { ?>

											<?php if ($price && $special) { ?>
											<div class="onsale"><span><?php echo $this->language->get('text_onsale'); ?></span></div>
											<?php } ?>

											<header class="page-header">
												<h1><span itemprop="name"><?php echo $heading_title; ?></span></h1>
											</header>

										<?php } ?>

										<div class="row-fluid">
											<div class="span<?php echo $spanval2; ?> detailscol">
												<div>&nbsp;</div>
												<?php if ($price) { ?>

												<div class="price">
												
												<div itemprop="offers" itemscope itemtype="http://schema.org/Offer"><?php echo $text_price; ?><meta itemprop="priceCurrency" content="<?php echo $currencycode; ?>" /><link itemprop="availability" href="http://schema.org/InStock" /><br>

													<?php if (!$special) { ?>
														<span class="price-normal"><span itemprop="price"><?php echo $price; ?></span></span>
													<?php } else { ?>
														<span class="price-old"><?php echo $price; ?></span> <span class="price-new"><span itemprop="price"><?php echo $special; ?></span></span>
													<?php } ?>

													<?php if ($tax) { ?>
														<div class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></div>
													<?php } ?>

													<?php if ($points) { ?>
														<div class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></div>
													<?php } ?>

													<?php if ($discounts) { ?>
													<div class="discount">
														<ul>
														<?php foreach ($discounts as $discount) { ?>
															<li><?php echo sprintf($text_discount, $discount['quantity'], "<span>".$discount['price']."</span>"); ?></li>
														<?php } ?>
														</ul>
													</div>
													<?php } ?>

</div>
												</div> <!-- .price -->

												<?php } ?>

												<div class="stock">
			<?php if ($quantity <= 0) { ?>
			<span class="outstock"><i class="icon-remove"></i> <?php echo $stock; ?></span>
			<?php } else { ?>
			<?php $this->language->load('module/clearshop'); ?>
			<span class="instock"><i class="icon-ok"></i> <?php echo $this->language->get('text_in_stock'); ?> <span class="stockqty">(<?php echo $stock; ?>)</span></span>
			<?php } ?>
			</div>

												<div class="description">

													<?php if ($manufacturer) { ?>
														<span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>" id="brand"><?php echo $manufacturer; ?></a><br />
													<?php } ?>
													
													<span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
													<?php if ($reward) { ?>
													<span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
													<?php } ?>

												</div> <!-- .description -->

												<?php if ($options) { ?>
												
													<div class="options">

														<?php foreach ($options as $option) { ?>

															<!-- Select -->
														
															<?php if ($option['type'] == 'select') { ?>
																<form>
																<div data-value="<?php echo $option['product_option_id']; ?>" class="option">
																	
																	<label for="option[<?php echo $option['product_option_id']; ?>]">
																		
																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<div class="controls">
                                                                  	
																		<?php 
                                                                           $hh ='';
                                                                           if(substr($option['o_cata'], 0, 1) == '0') { ;  
                                                                                  $qq = '1'; ?>
                                                                          <select id="ddd"  value="<?php echo $option['product_option_id']; ?>" name="option[<?php echo $option['product_option_id']; ?>]">
																			<option value=""><?php echo $text_select; ?></option>
																			
																			<?php foreach ($option['option_value'] as $option_value) { ?>
																				
                                                                                
                                                                                	
																				<option data-id="<?php echo $option_value['option_value_id'] ?>" value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                                                <?php if ($option_value['price']) { ?>
                                                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                                                <?php } ?>
                                                                                </option>
                                                                                <?php  } } else { ?> 
                                                                                <select id="ddd-<?php echo $qq?>"  value="<?php echo $option['product_option_id']; ?>" name="option[<?php echo $option['product_option_id']; ?>]">
                                                                                <option value=""><?php echo $text_select; ?></option>
                                                                                <?php $qq ++; } ?>

														
																		</select>
																	</div>

																</div>
																</form>
															<?php } ?>

															<!-- Radio -->

															<?php if ($option['type'] == 'radio') { ?>

																<div id="option-<?php echo $option['product_option_id']; ?>" class="control">

																	<label class="control-label">

																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<?php foreach ($option['option_value'] as $option_value) { ?>						
																		
																		<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>" class="radio">
																			
																			<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />

																			<?php echo $option_value['name']; ?>

																			<?php if ($option_value['price']) { ?>
																				(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
																			<?php } ?>

																		</label>

																	<?php } ?>

																</div>

															<?php } ?>

															<!-- Checkbox -->

															<?php if ($option['type'] == 'checkbox') { ?>

																<div id="option-<?php echo $option['product_option_id']; ?>" class="control-group">

																	<label class="control-label">
																		
																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<?php foreach ($option['option_value'] as $option_value) { ?>
																	
																		<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>" class="checkbox">
																			<input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
																	
																			<?php echo $option_value['name']; ?>
																	
																			<?php if ($option_value['price']) { ?>
																				(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
																			<?php } ?>
																	
																		</label>
																	
																	<?php } ?>
																
																</div>

															<?php } ?>

															<!-- Image -->

															<?php if ($option['type'] == 'image') { ?>

																<div id="option-<?php echo $option['product_option_id']; ?>" class="control-group">

																	<label class="control-label">

																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<?php foreach ($option['option_value'] as $option_value) { ?>						
																		
																		<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>" class="radio option-image">
																			
																			<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />

																			<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" />
																			<?php echo $option_value['name']; ?>
																			<?php if ($option_value['price']) { ?>
																				(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
																			<?php } ?>

																		</label>

																	<?php } ?>

																</div>

															<?php } ?>

															<!-- Text field -->

															<?php if ($option['type'] == 'text') { ?>

																<div id="option-<?php echo $option['product_option_id']; ?>" class="control-group">

																	<label for="option[<?php echo $option['product_option_id']; ?>]" class="control-label">
																		
																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<div class="controls">
																		<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>"  class="span10" />
																	</div>

																</div>

															<?php } ?>

															<!-- Textarea -->

															<?php if ($option['type'] == 'textarea') { ?>

																<div id="option-<?php echo $option['product_option_id']; ?>" class="control-group">

																	<label for="option[<?php echo $option['product_option_id']; ?>]" class="control-label">
																		
																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<div class="controls">
																		<textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"  class="span10"><?php echo $option['option_value']; ?></textarea>
																	</div>

																</div>

															<?php } ?>

															<!-- File -->

															<?php if ($option['type'] == 'file') { ?>

																<div id="option-<?php echo $option['product_option_id']; ?>" class="control-group">

																	<label for="option[<?php echo $option['product_option_id']; ?>]" class="control-label">

																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<div class="controls">
																		<a id="button-option-<?php echo $option['product_option_id']; ?>" class="button button-success button-small"><i class="icon-upload icon-white"></i> <?php echo $button_upload; ?></a>
																		<input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
																	</div>

																</div>

															<?php } ?>

															<!-- Date -->

															<?php if ($option['type'] == 'date') { ?>

																<div id="option-<?php echo $option['product_option_id']; ?>" class="control-group">

																	<label for="option[<?php echo $option['product_option_id']; ?>]" class="contro-label">

																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<div class="controls">
																		<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date span4" />
																	</div>

																</div>

															<?php } ?>

															<!-- Date time -->

															<?php if ($option['type'] == 'datetime') { ?>

																<div id="option-<?php echo $option['product_option_id']; ?>" class="control-group">

																	<label for="option[<?php echo $option['product_option_id']; ?>]" class="control-label">

																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<div class="controls">
																		<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime span5" />
																	</div>

																</div>

															<?php } ?>

															<!-- Time -->

															<?php if ($option['type'] == 'time') { ?>

																<div id="option-<?php echo $option['product_option_id']; ?>" class="control-group">

																	<label for="option[<?php echo $option['product_option_id']; ?>]" class="control-label">
																		
																		<?php if ($option['required']) { ?>
																			<span class="required">*</span>
																		<?php } ?>

																		<b><?php echo $option['name']; ?>:</b>

																	</label>

																	<div class="controls">
																		<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time span3" />
																	</div>

																</div>

															<?php } ?>

														<?php } ?>

													</div> <!-- .options -->

												<?php } ?>

												<?php if ($this->config->get('clearshop_product_layout') == 1) { ?>

													<div class="cart">
													
														<div class="input-qty">
															<div class="qty-minus"><i class="icon-minus"></i></div>
																<div class="qty-input-div">
																	<input id="qty-input"  type="text" name="quantity" value="<?php echo $minimum; ?>" class="input-mini" />
																</div>
															<div class="qty-plus"><i class="icon-plus"></i></div>
														</div>
													
													
															<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
															
															<input type="button" value="<?php echo $button_cart; ?>" 
			id="button-cart" class="button <?php if ($quantity <= 0) { echo 'disabled" disabled="disabled'; } ?>" 
			 />
                                                            
                                                            
															
															<?php if ($minimum > 1) { ?>
																<small class="minimum"><?php echo $text_minimum; ?></small>
															<?php } ?>
														
														</div> <!-- .cart -->
														
														<div class="links">
														
															<?php if ($review_status) { ?>
																<span class="review"><a onclick="$('a[href=\'#tab-review\']').trigger('click'); $('html, body').animate({scrollTop: $('#tabs').offset().top}, 800);"  title="<?php echo $text_write; ?>" class="tooltp"><span itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"><img src="catalog/view/theme/clearshop/images/stars-<?php echo round($rating); ?>.png" alt="<?php echo round($rating,1); ?>" title="<?php echo round($rating,1).'* ('.$reviews.') '; ?>" /> (<span itemprop="ratingValue"><?php echo round($rating,1); ?></span>/5)</span> <span itemprop="reviewCount"><?php echo $reviews; ?></span></a></span>
															<?php } ?>
														
															<span class="wishlist"><a onclick="addToWishList('<?php echo $product_id; ?>');" title="<?php echo $button_wishlist; ?>" class="tooltp" ><i class="icon-heart"></i></a></span>
														
															<span class="compare"><a onclick="addToCompare('<?php echo $product_id; ?>');" title="<?php echo $button_compare; ?>" class="tooltp"><i class="icon-plus"></i></a></span>
														
														</div>

												<?php } ?>

												<div class="share">

													<div class="addthis_default_style">
                                                   		<a class="addthis_button_vkontakte"></a> 
														<a class="addthis_button_compact"></a> 
														<a class="addthis_button_twitter"></a>
														<a class="addthis_button_pinterest_share"></a>
														<a class="addthis_button_google_plusone"></a>
														<a class="addthis_button_facebook_like"></a> 
                                                        <div class="clearFloat"></div>
													</div>
													<script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 

												</div>

												<?php if ($tags) { ?>

													<div class="tags">
														<b><?php echo $text_tags; ?></b>
														
														<?php foreach ($tags as $tag) { ?>
															<a href="<?php echo $tag['href']; ?>"><?php echo $tag['tag']; ?></a>
														<?php } ?>
													
													</div>

												<?php } ?>

												
											</div>
											
											<?php if ($this->config->get('clearshop_product_layout') != 1) { ?>

												<div class="span<?php echo 12-$spanval2; ?> cartcol">

													<div class="cart">

														<div class="input-qty">
															<div class="qty-minus"><i class="icon-minus"></i></div>
																<div class="qty-input-div">
																	<input id="qty-input"  type="text" name="quantity" value="<?php echo $minimum; ?>" class="input-mini" />
																</div>
															<div class="qty-plus"><i class="icon-plus"></i></div>
														</div>


															<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
															
															<input type="button" value="<?php echo $button_cart; ?>" 
			id="button-cart" class="button <?php if ($quantity <= 0) { echo 'disabled" disabled="disabled'; } ?>" 
			 />
                                                            
                                                            <input type="button" value="Примерить" id="button-fitting" class="button"  data-toggle="modal" data-target="#Fitting"/>
															
                                                            
                                                            
															<?php if ($minimum > 1) { ?>
																<small class="minimum"><?php echo $text_minimum; ?></small>
															<?php } ?>

													</div> <!-- .cart -->

													<div class="links">
													
														<?php if ($review_status) { ?>
															<span class="review"><a onclick="$('a[href=\'#tab-review\']').trigger('click'); $('html, body').animate({scrollTop: $('#tabs').offset().top}, 800);" title="<?php echo $text_write; ?>" class="tooltp"><span itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating"><img src="catalog/view/theme/clearshop/images/stars-<?php echo round($rating); ?>.png" alt="<?php echo round($rating,1); ?>" title="<?php echo round($rating,1).'* ('.$reviews.') '; ?>" /> (<span itemprop="ratingValue"><?php echo round($rating,1); ?></span>/5)</span> <span itemprop="reviewCount"><?php echo $reviews; ?></span></a></span>
														<?php } ?>

														<span class="wishlist"><a onclick="addToWishList('<?php echo $product_id; ?>');" title="<?php echo $button_wishlist; ?>" class="tooltp" ><i class="icon-heart"></i></a></span>

														<span class="compare"><a onclick="addToCompare('<?php echo $product_id; ?>');" title="<?php echo $button_compare; ?>" class="tooltp"><i class="icon-plus"></i></a></span>


													</div>

													<div class="share">

														<div class="addthis_default_style">
                                                        	
															<a class="addthis_button_compact"></a> 
                                                            <a class="addthis_button_vk"></a> 
                                                            <a class="addthis_button_facebook"></a> 
															<a class="addthis_button_twitter"></a>
															<a class="addthis_button_pinterest_share"></a>
															<a class="addthis_button_google_plusone"></a>
                                                            <a class="addthis_button_vk_like"></a> 
															<a class="addthis_button_facebook_like"></a> 
                                                            <div class="clearFloat"></div>
														</div>

													</div>

													<?php if ($tags) { ?>

														<div class="tags">
															<b><?php echo $text_tags; ?></b>
															
															<?php foreach ($tags as $tag) { ?>
																<a href="<?php echo $tag['href']; ?>"><?php echo $tag['tag']; ?></a>
															<?php } ?>
														
														</div>

													<?php } ?>

												</div>

											<?php } ?>

										</div>
										
									</div> <!-- .span6 RIGHT BOX-->


								</div>
							
							</div>
							
						</section>

						<?php echo $column_right; ?>

					</div> <!-- .row-fluid -->

				</div> <!-- .container -->

			</div> <!-- #maintop-container -->

			<div class="container product-details">

				<section id="full-info" class="clearfix">

					<div id="tabs" class="htabs">
						<a href="#tab-description"><?php echo $tab_description; ?> <i class="icon-caret-down"></i></a>
						<?php if ($attribute_groups) { ?>
						<a href="#tab-attribute"><?php echo $tab_attribute; ?> <i class="icon-caret-down"></i></a>
						<?php } ?>
						<?php if ($review_status) { ?>
						<a href="#tab-review"><?php echo $tab_review; ?> <i class="icon-caret-down"></i></a>
						<?php } ?>
					</div>
					<div id="tab-description" class="tab-content"><span itemprop="description"><?php echo $description; ?></span></div> <!-- #tab-description -->
					<?php if ($attribute_groups) { ?>
						<div id="tab-attribute" class="tab-content">
							<section class="product-atrributes">
													
								<table class="table attribute">

									<?php foreach ($attribute_groups as $attribute_group) { ?>

									<thead>
										<tr>
											<td colspan="2"><?php echo $attribute_group['name']; ?></td>
										</tr>
									</thead>

									<tbody>
										<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
										<tr>
											<th><?php echo $attribute['name']; ?></th>
											<td><?php echo $attribute['text']; ?></td>
										</tr>
										<?php } ?>
									</tbody>

									<?php } ?>

								</table>

							</section>
						</div> <!-- #tab-attribute -->
					<?php } ?>
					<?php if ($review_status) { ?>
						<div id="tab-review" class="tab-content">
							<div class="row-fluid">
														
								<section id="review" class="span7"></section>
								
								<section id="add-review" class="span5">

									<h4 id="review-title"><?php echo $text_write; ?></h4>

									<div id="review-form" class="form-inline">

										<div class="control-group">
											
											<label class="control-label"><span class="required">*</span> <?php echo $entry_name; ?></label>

											<div class="controls">
												<input type="text" name="name" value="" class="span12" required />
											</div>

										</div>

										<div class="control-group">

											<label class="control-label"><span class="required">*</span> <?php echo $entry_review; ?></label>

											<div class="controls"><textarea name="text" cols="60" rows="8" class="span12" required ></textarea>
											</div>

											<small><?php echo $text_note; ?></small>

										</div>

										<div class="control-group">

											<label class="control-label"><span class="required">*</span> <?php echo $entry_rating; ?></label>
												
											<div class="controls">
												
												<span><?php echo $entry_bad; ?></span>
												
												<input type="radio" name="rating" value="1" />
												<input type="radio" name="rating" value="2" />
												<input type="radio" name="rating" value="3" />
												<input type="radio" name="rating" value="4" />
												<input type="radio" name="rating" value="5" />
												
												<span><?php echo $entry_good; ?></span>
											
											</div>

										</div>

										<div class="control-group">

											<label for="captcha" class="control-label"><b><?php echo $entry_captcha; ?></b></label>

											<div class="controls">
												<input type="text" name="captcha" id="captcha" value="" class="span6" />
											</div>

										</div>

										<img src="index.php?route=product/product/captcha" alt="" />
										
										<div class="form-actions">
											<a id="button-review" class="button button-inverse"><span><?php echo $button_continue; ?></span></a>
										</div>

									</div>

								</section>

							</div>
						</div> <!-- #tab-review -->
					<?php } ?>

				</section>

				
				<div class="prevnext compact">
					<ul class="pager">
						<?php if (isset($prev_url)) { ?>
						<li class="previous">
							<a href="<?php echo $prev_url; ?>" title="<?php echo $prev_title;?>" class="tooltp"><i class="icon-caret-left"></i><span class="name"><?php echo $prev_title;?></span><span class="dir"><?php echo $this->language->get('text_prev'); ?></span></a>
						</li>
						<?php } ?>
						<?php if (isset($next_url)) { ?>
						<li class="next">
							<a href="<?php echo $next_url; ?>" title="<?php echo $next_title;?>" class="tooltp"><i class="icon-caret-right"></i><span class="name"><?php echo $next_title;?></span><span class="dir"><?php echo $this->language->get('text_next'); ?></span></a>
						</li>
						<?php } ?>
					</ul>
				</div>
			

			</div>
         

	</div><?php echo $content_bottom; ?>

	<script type="text/javascript"><!--
	$(document).ready(function() {
		$('.colorbox').colorbox({
			overlayClose: true,
			opacity: 0.5,
			maxHeight: 760,
			maxWidth: 760,
			width:'100%',
			slideshow: true,
			slideshowAuto: false
		});
	});
	//--></script> 
	

	<script type="text/javascript">

		$('#button-cart').bind('click', function() {
			$.ajax({
				url: 'index.php?route=checkout/cart/add',
				type: 'post',
				data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
				dataType: 'json',
				success: function(json) {
					$('.success, .warning, .attention, information, .error').remove();
					
					if (json['error']) {
						if (json['error']['option']) {
							for (i in json['error']['option']) {
								$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
								$('select[name="option[' + i + ']"]').after('<span class="error">' + json['error']['option'][i] + '</span>');
							}
						}
					} 
					
					if (json['success']) {
						
						$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/clearshop/images/close.png" alt="" class="close" /></div>');
							
						$('.success').fadeIn('slow');
						
						$('html, body').animate({ scrollTop: 0 }, 'slow');

						$('#cart-items').html(json['total']); 

					}
				}
			});
		});

		$('.product-info .input-qty .qty-minus').live('click', function() {
			if($('#qty-input').val()>1) {
			  $('#qty-input').val(parseInt($('#qty-input').val())-1);
			}
		});

		$('.product-info .input-qty .qty-plus').live('click', function() {
			$('#qty-input').val(parseInt($('#qty-input').val())+1);
		});	

	</script>




	<?php if ($options) { ?>

		<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>

		<?php foreach ($options as $option) { ?>

			<?php if ($option['type'] == 'file') { ?>

				<script type="text/javascript">

					new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
						action: 'index.php?route=product/product/upload',
						name: 'file',
						autoSubmit: true,
						responseType: 'json',
						onSubmit: function(file, extension) {
							$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/clearshop/images/loading.gif" class="loading" style="padding-left: 5px;" />');
						},
						onComplete: function(file, json) {
							$('.error').remove();
							
							if (json.success) {
								alert(json.success);
								
								$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json.file);
							}
							
							if (json.error) {
								$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json.error + '</span>');
							}
							
							$('.loading').remove();	
						}
					});

				</script>

			<?php } ?>

		<?php } ?>

	<?php } ?>


	<script type="text/javascript">

		$('#review .pagination a').live('click', function() {
		$('#review').fadeOut('slow');
			
		$('#review').load(this.href);
		
		$('#review').fadeIn('slow');
		
		return false;
	});			

	$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

	$('#button-review').bind('click', function() {
		$.ajax({
			url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
			type: 'post',
			dataType: 'json',
			data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
			beforeSend: function() {
				$('.success, .warning').remove();
				$('#button-review').attr('disabled', true);
				$('#review-title').after('<div class="attention"><img src="catalog/view/theme/clearshop/images/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
			},
			complete: function() {
				$('#button-review').attr('disabled', false);
				$('.attention').remove();
			},
			success: function(data) {
				if (data['error']) {
					$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
				}
				
				if (data['success']) {
					$('#review-title').after('<div class="success">' + data['success'] + '</div>');
									
					$('input[name=\'name\']').val('');
					$('textarea[name=\'text\']').val('');
					$('input[name=\'rating\']:checked').attr('checked', '');
					$('input[name=\'captcha\']').val('');
				}
			}
		});
	});

	</script> 

	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>

	<script type="text/javascript">

	$(document).ready(function() {
		
		if ($.browser.msie && $.browser.version == 6) {
			$('.date, .datetime, .time').bgIframe();
		}

		$('.date').datepicker({dateFormat: 'yy-mm-dd'});
		$('.datetime').datetimepicker({
			dateFormat: 'yy-mm-dd',
			timeFormat: 'h:m'
		});
		$('.time').timepicker({timeFormat: 'h:m'});

	});
	
	</script> 
	<script type="text/javascript">
     function a() {
            var html     = '';
			 
            var ttt      =  $("[id^='ddd-']").filter(':last').attr('id');
            var tt       = ttt.split("-").pop();
            var en       = parseInt(tt) + 1;
            var postData = {};
            postData     = {
                    id: $(this).find(':selected').data('id'),
                    pro_id: '<?php echo $product_id ?>'
                          };
           
            var zzz      = this.id;
            var no       = zzz.split("-").pop();
            var nos      = parseInt(no) + 1;
              if (zzz === 'ddd'){
                        nos = 1;
                                 };
              if (postData['id'] === undefined) {
                 for ( var i = nos; i < en; i++ ) {
                   $('#ddd-' + i).children('option:not(:first)').remove();
				   $('#ddd-' + i+'-menu').children('option:not(:first)').remove();				  
                 }
            return false;
             };
      $.ajax({ 
          url: 'index.php?route=product/product/chi&product_id=<?php echo $product_id; ?>',
         data: postData,
         type: 'post', 
     dataType: 'json',
      success: function(json)
          {     
                for ( var i = nos; i < en; i++ ) {
          $('#ddd-' + i).children('option:not(:first)').remove();
		  $('#ddd-' + i+'-menu').children('li:not(:first)').remove();
            } 
			//var html2     = '';
         $.each(json, function(e,item){ 
             var ff = $( "#ddd option:selected" ).data('id');
             if (item['serb'] == '-0-'||item['serb'].indexOf(ff) >= 0){
				 	
					var re = ';';
				 	var nn = item['name'].split(re);					
                    html += '<option data-id="' + item['ovd'] + '" value="' + item['value'] + '" class="option-'+nn[1]+'">' + nn[1];
					//html2 += '<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">'+nn[1]+'</a></li>';
                if (item['price'] > 0) {
                    html += '(' +  item['price_prefix'] + item['pricet'] + ')';
                }}
                    html += '</option>';
              })
             $('#ddd-' + nos).append(html);
			 //$('#ddd-' + nos+'-menu').append(html2);
           }
              })
   return false;
  }
   $(document).on('change', '[id^=ddd]', a);
</script>
<?php echo $footer; ?>