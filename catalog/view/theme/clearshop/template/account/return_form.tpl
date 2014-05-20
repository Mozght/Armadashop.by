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

					<?php echo $text_description; ?>

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="return" class="form">

						<fieldset class="subheading">
							
							<legend><?php echo $text_order; ?></legend>

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

							<div class="control-group">
								<label for="email" class="control-label">
									<span class="required">*</span> <?php echo $entry_email; ?>
								</label>
								<div class="controls">
								<input type="email" name="email" id="email" value="<?php echo $email; ?>"  title="<?php echo $this->language->get('error_email'); ?>" class="required email span12" required />
								<?php if ($error_email) { ?>
								<span class="error"><?php echo $error_email; ?></span>
								<?php } ?>
								</div>
							</div>

							<div class="control-group">
								<label for="telephone" class="control-label">
									<span class="required">*</span> <?php echo $entry_telephone; ?>
								</label>
								<div class="controls">
								<input type="text" name="telephone" id="telephone" value="<?php echo $telephone; ?>" title="<?php echo $this->language->get('error_telephone'); ?>" class="required span12" required />
								<?php if ($error_telephone) { ?>
								<span class="error"><?php echo $error_telephone; ?></span>
								<?php } ?>
								</div>
							</div>

							<div class="row-fluid">
								<div class="control-group span8">
									<label for="order_id" class="control-label">
										<span class="required">*</span> <?php echo $entry_order_id; ?>
									</label>
									<div class="controls">
									<input type="text" name="order_id" id="order_id" value="<?php echo $order_id; ?>" title="<?php echo $this->language->get('error_order_id'); ?>" class="required span12" required />
									<?php if ($error_order_id) { ?>
									<span class="error"><?php echo $error_order_id; ?></span>
									<?php } ?>
									</div>
								</div>
								
								<div class="control-group span4">
									<label for="date_ordered" class="control-label"><?php echo $entry_date_ordered; ?></label>
									<div class="controls">
									<input type="text" name="date_ordered" id="date_ordered" value="<?php echo $date_ordered; ?>" class="date span12" />
									</div>
								</div>
							</div>

						</fieldset>

						<fieldset class="subheading">
							
							<legend><?php echo $text_product; ?></legend>
									
								
								<div class="control-group">
									<label for="product" class="control-label">
										<span class="required">*</span> <?php echo $entry_product; ?>
									</label>
									<div class="controls">
										<input type="text" name="product" id="product" value="<?php echo $product; ?>" title="<?php echo $this->language->get('error_product'); ?>" class="required span12" required />
										<?php if ($error_product) { ?>
											<span class="error"><?php echo $error_product; ?></span>
										<?php } ?>
									</div>
								</div>

								<div class="row-fluid">	
									<div class="control-group span8">
										<label for="model" class="control-label">
											<span class="required">*</span> <?php echo $entry_model; ?>
										</label>
										<div class="controls">
											<input type="text" name="model" id="model" value="<?php echo $model; ?>" title="<?php echo $this->language->get('error_model'); ?>" class="required span12" required />
											<?php if ($error_model) { ?>
											<span class="error"><?php echo $error_model; ?></span>
											<?php } ?>
										</div>
									</div>
								
									<div class="control-group span4">
										<label for="quantity" class="control-label">
											<?php echo $entry_quantity; ?>
										</label>
										<div class="controls">
											<input type="text" name="quantity" id="quantity" value="<?php echo $quantity; ?>" class="span12" />
										</div>
									</div>
							  	</div>
							  	<div class="control-group">

							  		<label class="control-label">
							  			<span class="required">*</span> <?php echo $entry_reason; ?>
							  		</label>

							  		<div class="controls">

							  			<?php foreach ($return_reasons as $return_reason) { ?>

							  				<label class="radio">
												<?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>

													<input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" checked="checked" />
													<?php echo $return_reason['name']; ?>
				
												<?php } else { ?>
				
													<input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" />
													<?php echo $return_reason['name']; ?>

												<?php  } ?>
											</label>
			
										<?php  } ?>
			
										<?php if ($error_reason) { ?>
											<span class="error">
												<?php echo $error_reason; ?>
											</span>
										<?php } ?>
							  		
							  		</div>

							  	</div>

							  	<div class="control-group">

							  		<label class="control-label">
							  			<?php echo $entry_opened; ?>
							  		</label>

							  		<div class="controls">
							  			<label class="radio inline">
											<?php if ($opened) { ?>
												<input type="radio" name="opened" value="1" checked="checked" />
											<?php } else { ?>
												<input type="radio" name="opened" value="1" />
											<?php } ?>
											<?php echo $text_yes; ?>
										</label>
										<label class="radio inline">
											<?php if (!$opened) { ?>
												<input type="radio" name="opened" value="0" checked="checked" />
											<?php } else { ?>
												<input type="radio" name="opened" value="0" />
											<?php } ?>
											<?php echo $text_no; ?>
										</label>
							  		</div>

							  	</div>

							  	<div class="control-group">

							  		<label for="comment" class="control-label">
							  			<?php echo $entry_fault_detail; ?>
							  		</label>
							  		<div class="controls">
							  			<textarea name="comment" id="comment" cols="150" rows="6" class="span12"><?php echo $comment; ?></textarea>	
							  		</div>

							  	</div>

								<div class="control-group">

									<label for="captcha" class="control-label">
										<span class="required">*</span> <?php echo $entry_captcha; ?>
									</label>
									<div class="controls">
										<input type="text" name="captcha" id="captcha" value="<?php echo $captcha; ?>" class="required span3" required />
										<br /><br />
										<img src="index.php?route=account/return/captcha" alt="" />
										<?php if ($error_captcha) { ?>
										<span class="error"><?php echo $error_captcha; ?></span>
										<?php } ?>
									</div>

								</div>

						</fieldset>

						<?php if ($text_agree) { ?>

							<div class="form-actions buttons">
								<?php if ($text_agree) { ?>
									<label class="checkbox"><input type="checkbox" name="agree" value="1" <?php if ($agree) { ?> checked="checked" <?php } ?> /> <?php echo $text_agree; ?></label>
								<?php } ?>

								<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
								<input type="submit" value="<?php echo $button_continue; ?>" class="button button-inverse" />
							</div>

						<?php } else { ?>

							<div class="form-actions">
								<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
								<input type="submit" value="<?php echo $button_continue; ?>" class="button button-inverse" />
							</div>

						<?php } ?>
						
					</form>

				</div>
				
			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div> <!-- .row -->

	<?php echo $content_bottom; ?>
	

	<script type="text/javascript"><!--

		$(document).ready(function() {
			$('.date').datepicker({dateFormat: 'yy-mm-dd'});
		});
	
	//--></script>

	<script type="text/javascript"><!--
		$(document).ready(function() {
			$('.colorbox').colorbox({
				overlayClose: true,
				opacity: 0.5,
				maxHeight: 560,
				maxWidth: 560,
				width:'100%'
			});
		});
	//--></script> 

	<?php echo $footer; ?>