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

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="address" class="form">

						<fieldset class="subheading">
								
							<legend><?php echo $text_edit_address; ?></legend>

							<div class="row-fluid">
								<div class="control-group span6">
									<label class="control-label" for="firstname">
										<span class="required">*</span> <?php echo $entry_firstname; ?>
									</label>
									<div class="controls">
										<input type="text" name="firstname" id="firstname" value="<?php echo $firstname; ?>" title="<?php echo $this->language->get('error_firstname'); ?>" class="required span12" required />
										<?php if ($error_firstname) { ?>
										<span class="error"><?php echo $error_firstname; ?></span>
										<?php } ?>
									</div>
								</div>

								<div class="control-group span6">
									<label class="control-label" for="lastname">
										<span class="required">*</span> <?php echo $entry_lastname; ?>
									</label>
									<div class="controls">
										<input type="text" name="lastname" id="lastname" value="<?php echo $lastname; ?>" title="<?php echo $this->language->get('error_lastname'); ?>" class="required span12" required />
										<?php if ($error_lastname) { ?>
										<span class="error"><?php echo $error_lastname; ?></span>
										<?php } ?>
									</div>
								</div>
							</div>

							<div class="control-group" >
								<label for="company" class="control-label">
									<?php echo $entry_company; ?>
								</label>
								<div class="controls">
									<input type="text" name="company" id="company" value="<?php echo $company; ?>" class="span12" />
								</div>
							</div>
							<?php if ($company_id_display) { ?>
							<div class="control-group">
								<label for="company_id" class="control-label">
									<?php echo $entry_company_id; ?>
								</label>
								<div class="controls">
									<input type="text" name="company_id" id="company_id" value="<?php echo $company_id; ?>" class="span12" />
									<?php if ($error_company_id) { ?>
										<span class="error"><?php echo $error_company_id; ?></span>
									<?php } ?>
								</div>
							</div>
							<?php } ?>
							<?php if ($tax_id_display) { ?>
							<div class="control-group">
								<label for="tax_id" class="control-label">
									<?php echo $entry_tax_id; ?>
								</label>
								<div class="controls">
									<input type="text" name="tax_id" id="tax_id" value="<?php echo $tax_id; ?>" class="span12" />
									<?php if ($error_tax_id) { ?>
										<span class="error"><?php echo $error_tax_id; ?></span>
									<?php } ?>
								</div>
							</div>
							<?php } ?>
							<div class="control-group">
								<label for="address_1" class="control-label">
									<span class="required">*</span> <?php echo $entry_address_1; ?>
								</label>
								<div class="controls">
									<input type="text" name="address_1" id="address_1" value="<?php echo $address_1; ?>" title="<?php echo $this->language->get('error_address_1'); ?>" class="required span12" required />
									<?php if ($error_address_1) { ?>
									<span class="error"><?php echo $error_address_1; ?></span>
									<?php } ?>
								</div>
							</div>
							<div class="control-group">
								<label for="address_2" class="control-label">
									<?php echo $entry_address_2; ?>
								</label>
								<div class="controls">
									<input type="text" name="address_2" id="address_2" value="<?php echo $address_2; ?>" class="span12"  />
								</div>
							</div>
							<div class="row-fluid">
								<div class="control-group span6">
									<label class="control-label" for="city">
										<span class="required">*</span> <?php echo $entry_city; ?>
									</label>
									<div class="controls">
										<input type="text" name="city" id="city" value="<?php echo $city; ?>" title="<?php echo $this->language->get('error_city'); ?>" class="required span12" required />
										<?php if ($error_city) { ?>
										<span class="error"><?php echo $error_city; ?></span>
										<?php } ?>
									</div>
								</div>

								<div class="control-group span6">
									<label class="control-label" for="postcode">
										<span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?>
									</label>
									<div class="controls">
										<input type="text" name="postcode" id="postcode" value="<?php echo $postcode; ?>" title="<?php echo $this->language->get('error_postcode'); ?>" class="span12" />
										<?php if ($error_postcode) { ?>
										<span class="error"><?php echo $error_postcode; ?></span>
										<?php } ?>
									</div>
								</div>
							</div>
							<div class="row-fluid">

								<div class="control-group span6">
									<label class="control-label" for="country_id">
										<span class="required">*</span> <?php echo $entry_country; ?>
									</label>
									<div class="controls">
										<select name="country_id" id="country_id" title="<?php echo $this->language->get('error_country'); ?>" class="required span12" required >

											<option value="false"><?php echo $text_select; ?></option>

											<?php foreach ($countries as $country) { ?>
												
												<?php if ($country['country_id'] == $country_id) { ?>
											
													<option value="<?php echo $country['country_id']; ?>" selected="selected">
														<?php echo $country['name']; ?>
													</option>

												<?php } else { ?>
												
													<option value="<?php echo $country['country_id']; ?>">
														<?php echo $country['name']; ?>
													</option>
												
												<?php } ?>
											
											<?php } ?>

										</select>
										<?php if ($error_country) { ?>
										<span class="error"><?php echo $error_country; ?></span>
										<?php } ?>
									</div>
								</div>

								<div class="control-group span6">
									<label class="control-label" for="zone_id">
										<span class="required">*</span> <?php echo $entry_zone; ?>
									</label>
									<div class="controls">
										<select name="zone_id" id="zone_id" title="<?php echo $this->language->get('error_zone'); ?>" class="required span12" required>
										</select>
										<?php if ($error_zone) { ?>
										<span class="error"><?php echo $error_zone; ?></span>
										<?php } ?>
									</div>
								</div>

							</div>

							<div class="control-group">
								<label class="control-label"><?php echo $entry_default; ?></label>
								<div class="controls">
								<?php if ($default) { ?>
									<label class="radio inline"><input type="radio" name="default" value="1" checked="checked" /><?php echo $text_yes; ?></label>
									<label class="radio inline"><input type="radio" name="default" value="0" /><?php echo $text_no; ?></label>
								<?php } else { ?>
									<label class="radio inline"><input type="radio" name="default" value="1" /><?php echo $text_yes; ?></label>
									<label class="radio inline"><input type="radio" name="default" value="0" checked="checked" /><?php echo $text_no; ?></label>
								<?php } ?>
								</div>
							</div>
								
						</fieldset>
				
						<div class="form-actions">
							<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
							<input type="submit" value="<?php echo $button_continue; ?>" class="button button-inverse" />
						</div>

					</form>

				</div>
				
			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div>

	<?php echo $content_bottom; ?>

	<script type="text/javascript"><!--

		$('select[name=\'country_id\']').bind('change', function() {
	
			$.ajax({
				url: 'index.php?route=account/address/country&country_id=' + this.value,
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
						$('#postcode').addClass('required');
					} else {
						$('#postcode-required').hide();
						$('#postcode').removeClass('required');
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

<?php echo $footer; ?>