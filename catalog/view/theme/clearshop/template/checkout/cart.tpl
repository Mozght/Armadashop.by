<?php echo $header; ?>

	<div id="maintop-container">

		<div class="container">

		<?php echo $content_top; ?>

		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>

		<header class="page-header">
					
			<h1><?php echo $heading_title; ?>
				<?php if ($weight) { ?>
				<span class="weight">(<?php echo $weight; ?>)</span>
				<?php } ?>
			</h1>

		</header>

		<?php if ($attention) { ?>
			<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/clearshop/images/close.png" alt="" class="close" /></div>
			<?php } ?>
			<?php if ($success) { ?>
			<div class="success"><?php echo $success; ?><img src="catalog/view/theme/clearshop/images/close.png" alt="" class="close" /></div>
			<?php } ?>
			<?php if ($error_warning) { ?>
			<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/clearshop/images/close.png" alt="" class="close" /></div>
		<?php } ?>

		<div class="row-fluid">

			<section id="maincontent" class="span12 shopping-cart" role="main">

				<div class="mainborder">

					<div class="cart-inner">

						<section id="cart-info">

							<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="cart-contents">

								<table class="table ">
									<thead>
										<tr>
											<th class="image"><?php echo $column_image; ?></th>
											<th class="name left"><?php echo $column_name; ?></th>
											<th class="quantity left"><?php echo $column_quantity; ?></th>
											<th class="price right"><?php echo $column_price; ?></th>
											<th class="total right"><?php echo $column_total; ?></th>
										</tr>
									</thead>
									<tbody>
										<?php foreach ($products as $product) { ?>
										<tr>
									  		<td class="image">
												<?php if ($product['thumb']) { ?>
												  	<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
											  <?php } ?>
											</td>
											<td class="name">
												
												<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
												<div class="model"><b><?php echo $column_model; ?>:</b> <?php echo $product['model']; ?></div>

												<?php if (!$product['stock']) { ?>
													<span class="stock">***</span>
												<?php } ?>

												<ul class="list options">
													<?php foreach ($product['option'] as $option) { ?>
                                                    <?php
                                                   	 $pattern = '/(;)([a-zA-Z-]*)(;)/';
                                                     $name = $option['value'];  
                                                     if (preg_match($pattern, $name,$matches)) { ?>                                                                                                  	
                                                        <li><span><?php echo $option['name']; ?>:</span>  <span data-toggle="tooltip" title="<?php echo $matches[2] ?>" class="tip color-box  <?php echo $matches[2]; ?>" ></span></li>
                                                    <?php }
                                                    else  {?>
                                                    	<li><span><?php echo $option['name']; ?>:</span> <?php  echo $name; ?></li>
                                                   <?php }
                                                    ?>
													
													<?php } ?>
										  		</ul>

												<?php if ($product['reward']) { ?>
													<small><?php echo $product['reward']; ?></small>
												<?php } ?>

											</td>

											<td class="quantity">

												<input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" class="input-qty" />

												<a href="<?php echo $product['remove']; ?>" title="<?php echo $button_remove; ?>" class="tooltp"><i class="icon-remove-sign"></i></a>
											</td>

											<td class="price"><?php echo $product['price']; ?></td>

											<td class="total"><?php echo $product['total']; ?></td>

										</tr>

									  <?php } ?>

									  <?php foreach ($vouchers as $vouchers) { ?>
									  <tr>
										<td class="image"></td>
										<td class="name"><?php echo $vouchers['description']; ?></td>
										<td class="quantity"><input type="text" name="" value="1" size="1" class="input-qty" disabled="disabled" />
										  &nbsp;<a href="<?php echo $vouchers['remove']; ?>"><img src="catalog/view/theme/clearshop/images/remove.png" alt="<?php echo $text_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
										<td class="price"><?php echo $vouchers['amount']; ?></td>
										<td class="total"><?php echo $vouchers['amount']; ?></td>
									  </tr>
									  <?php } ?>
									</tbody>
									<tfoot>
										<?php $counter=1; ?>
										<?php foreach ($totals as $total) { ?>
										<tr>
											<td class="image" colspan="2"></td>
											<td class="right total-labels" colspan="2">
											<?php if($counter==1) { ?>
												<a class="update-cart button button-small pull-left" onclick="document.forms['cart-contents'].submit();;" /><i class="icon-repeat"></i> <?php echo $button_update; ?></a>
											<?php } ?>
												<?php echo $total['title']; ?>:</td>
											<td class="right totals"><?php echo $total['text']; ?></td>
										</tr>
										<?php $counter++; } ?>
									</tfoot>
								  </table>

							</form>

						</section>

						<?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>

						<section id="cart-module" class="box">

							<!-- <h4><?php echo $text_next; ?></h4> -->

							<p><?php echo $text_next_choice; ?></p>
							
							<div class="row-fluid">
								<div class="span4">
									<ul class="radio">

										<?php if ($coupon_status) { ?>
										<li class="highlight">
											<?php if ($next == 'coupon') { ?>
											<input type="radio" name="next" value="coupon" id="use_coupon" checked="checked" />
											<?php } else { ?>
											<input type="radio" name="next" value="coupon" id="use_coupon" />
											<?php } ?>
											<label for="use_coupon"><?php echo $text_use_coupon; ?></label>
										</li>
										<?php } ?>

										<?php if ($voucher_status) { ?>
										<li class="highlight">
											<?php if ($next == 'voucher') { ?>
											<input type="radio" name="next" value="voucher" id="use_voucher" checked="checked" />
											<?php } else { ?>
											<input type="radio" name="next" value="voucher" id="use_voucher" />
											<?php } ?>
											<label for="use_voucher"><?php echo $text_use_voucher; ?></label>
										</li>
										<?php } ?>

										<?php if ($reward_status) { ?>
										<li class="highlight">
											<?php if ($next == 'reward') { ?>
											<input type="radio" name="next" value="reward" id="use_reward" checked="checked" />
											<?php } else { ?>
											<input type="radio" name="next" value="reward" id="use_reward" />
											<?php } ?>
											<label for="use_reward"><?php echo $text_use_reward; ?></label>
										</li>
										<?php } ?>

										<?php if ($shipping_status) { ?>
										<li class="highlight">
											<?php if ($next == 'shipping') { ?>
											<input type="radio" name="next" value="shipping" id="shipping_estimate" checked="checked" />
											<?php } else { ?>
											<input type="radio" name="next" value="shipping" id="shipping_estimate" />
											<?php } ?>
											<label for="shipping_estimate"><?php echo $text_shipping_estimate; ?></label>
										</li>
										<?php } ?>

									</ul>
								</div>
								<div class="span8">
									<div class="cart-module">

										<!-- Coupons -->

										<div id="coupon" class="content">
											<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form">
												<div class="control-group">
													<label for="coupon" class="control-label"><?php echo $entry_coupon; ?></label>
													<input type="text" name="coupon" value="<?php echo $coupon; ?>" class="span6" />
													<input type="hidden" name="next" value="coupon" />
												</div>
												<input type="submit" value="<?php echo $button_coupon; ?>" class="button button-small" />
											</form>
										</div>

										<!-- Clearshop -->
									
										<div id="voucher" class="content">
											<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form">
												<div class="control-group">
													<label for="voucher" class="control-label"><?php echo $entry_voucher; ?></label>
													<input type="text" name="voucher" value="<?php echo $voucher; ?>" class="span6" />
													<input type="hidden" name="next" value="voucher" />
												</div>
												<input type="submit" value="<?php echo $button_voucher; ?>" class="button button-small" />
											</form>
										</div>

										<!-- Rewards -->

										<div id="reward" class="content">
											<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form">
												<div class="control-group">
													<label for="reward" class="control-label"><?php echo $entry_reward; ?></label>
													<input type="text" name="reward" value="<?php echo $reward; ?>" class="span6" />
													<input type="hidden" name="next" value="reward" />
												</div>
												<input type="submit" value="<?php echo $button_reward; ?>" class="button button-small" />
											</form>
										</div>

										<!-- Shipping -->
									
										<div id="shipping" class="content form">
											<p><?php echo $text_shipping_detail; ?></p>

											<div class="control-group">
												<label class="control-label" for="country_id"><span class="required">*</span> <?php echo $entry_country; ?></label>
												<select name="country_id" id="country_id" class="span10">
													<option value=""><?php echo $text_select; ?></option>
													<?php foreach ($countries as $country) { ?>
													<?php if ($country['country_id'] == $country_id) { ?>
													<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
													<?php } else { ?>
													<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
													<?php } ?>
													<?php } ?>
												</select>
											</div>

											<div class="control-group">
												<label class="control-label" for="zone_id"><span class="required">*</span> <?php echo $entry_zone; ?></label>
												<select name="zone_id" id="zone_id" class="span10">
														</select>
											</div>

											<div class="control-group">
												<label class="control-label" for="postcode"><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></label>
												<input type="text" name="postcode" id="postcode" value="<?php echo $postcode; ?>"  class="span4"/>
											</div>

											<input type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button button-small" />
										</div>

									</div>
									
								</div>
							</div>

						</section>

						<?php } ?>

						<div id="total-cart">

							<div class="buttons">
								<div class="cart"><a href="<?php echo $checkout; ?>" id="button-checkout" class="button"><?php echo $button_checkout; ?></a></div>
								<div class="textor">
								<?php 
								$this->language->load('product/product');
								echo $this->language->get('text_or'); 
								?>	
								</div>
								<a href="<?php echo $continue; ?>" id="continue-shopping" class="button button-link"><?php echo $button_shopping; ?></a>
							</div>

						</div>

					</div>

				</div> <!-- .mainborder -->

			</section><!-- #maincontent -->

		</div> <!-- .row-fluid -->
	
	<?php echo $content_bottom; ?>

	<script type="text/javascript">

		$('input[name=\'next\']').bind('change', function() {

			$('.cart-module > div').hide();
			
			$('#' + this.value).show('fast');

		});

	</script>

	<?php if ($shipping_status) { ?>

		<script type="text/javascript">

			$('#button-quote').live('click', function() {
				$.ajax({
					url: 'index.php?route=checkout/cart/quote',
					type: 'post',
					data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
					dataType: 'json',		
					beforeSend: function() {
						$('#button-quote').attr('disabled', true);
						$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/clearshop/images/loading.gif" alt="" /></span>');
					},
					complete: function() {
						$('#button-quote').attr('disabled', false);
						$('.wait').remove();
					},		
					success: function(json) {
						$('.success, .warning, .attention, .error').remove();			
									
						if (json['error']) {
							if (json['error']['warning']) {
								$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/clearshop/images/close.png" alt="" class="close" /></div>');
								
								$('.warning').fadeIn('slow');
								
								$('html, body').animate({ scrollTop: 0 }, 'slow'); 
							}	
										
							if (json['error']['country']) {
								$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
							}	
							
							if (json['error']['zone']) {
								$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
							}
							
							if (json['error']['postcode']) {
								$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
							}					
						}
						
						if (json['shipping_method']) {
							html = '<div class="quote-shipping">';
							html  += '<h4><?php echo $text_shipping_method; ?></h4>';
							html += '<hr>'
							html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
							
							for (i in json['shipping_method']) {
								
								html += '  <p><b>' + json['shipping_method'][i]['title'] + '</b></br>';
							
								if (!json['shipping_method'][i]['error']) {
									
									for (j in json['shipping_method'][i]['quote']) {
										
										html += '<label class="radio">';
										
										if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
											html += '<input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" />';
										} else {
											html += '<input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" />';
										}
											
										html += json['shipping_method'][i]['quote'][j]['title'];
										html += ' (<b>' + json['shipping_method'][i]['quote'][j]['text'] + '</b>)';

										html += '</label></p>';
									}		

								} else {
									html += '<div class="empty white">';
									html += '<div class="error">' + json['shipping_method'][i]['error'] + '</div>';
									html += '</div>';
									html += '</div>';
								}
							}

							html += '  <br />';
							html += '  <input type="hidden" name="next" value="shipping" />';
							
							<?php if ($shipping_method) { ?>
								html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button button-inverse button-small" />';
							<?php } else { ?>
								html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button button-inverse button-small" disabled="disabled" />';
							<?php } ?>

							html += '</form>';

							html += '</div>';
							
							$.colorbox({
								overlayClose: true,
								opacity: 0.5,
								height: 420,
								maxWidth: 560,
								width:'100%',
								href: false,
								html: html
							});

							$('input[name=\'shipping_method\']').bind('change', function() {
								$('#button-shipping').attr('disabled', false);
							});
						}
					}
				});
			});

		</script>

		<script type="text/javascript"><!--

			$('select[name=\'country_id\']').bind('change', function() {
				$.ajax({
					url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
					dataType: 'json',
					beforeSend: function() {
						$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/clearshop/images/loading.gif" alt="" /></span>');
					},
					complete: function() {
						$('.wait').remove();
					},			
					success: function(json) {
						if (json['postcode_required'] == '1') {
							$('#postcode-required').show();
						} else {
							$('#postcode-required').hide();
						}
						
						html = '<option value=""><?php echo $text_select; ?></option>';
						
						if (json['zone'] != '') {
							for (i = 0; i < json['zone'].length; i++) {
			        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
				    			
								if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
				      				html += ' selected="selected"';
				    			}
				
				    			html += '>' + json['zone'][i]['name'] + '</option>';
							}
						} else {
							html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
						}
						
						$('select[name=\'zone_id\']').html(html);
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			});

			$('select[name=\'country_id\']').trigger('change');

			//--></script>

	<?php } ?>

<?php echo $footer; ?>