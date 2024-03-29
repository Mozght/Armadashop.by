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

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="payment" class="form">

						<fieldset class="subheading">

							<legend><?php echo $text_your_payment; ?></legend>

							<div class="control-group">
								<label for="tax" class="control-label"><?php echo $entry_tax; ?></label>
								<div class="controls">
									<input type="text" name="tax" id="tax" value="<?php echo $tax; ?>" class="span6" />
								</div>
							</div>

							<div class="control-group">

								<label class="control-label"><?php echo $entry_payment; ?></label>

								<div class="controls">

									<label class="radio">
										<?php if ($payment == 'cheque') { ?>
											<input type="radio" name="payment" value="cheque" id="cheque" checked="checked" />
										<?php } else { ?>
											<input type="radio" name="payment" value="cheque" id="cheque" />
										<?php } ?>
										<?php echo $text_cheque; ?>
									</label>

									<label class="radio">
										<?php if ($payment == 'paypal') { ?>
											<input type="radio" name="payment" value="paypal" id="paypal" checked="checked" />
										<?php } else { ?>
											<input type="radio" name="payment" value="paypal" id="paypal" />
										<?php } ?>
										<?php echo $text_paypal; ?>
									</label>

									<label class="radio">
										<?php if ($payment == 'bank') { ?>
											<input type="radio" name="payment" value="bank" id="bank" checked="checked" />
										<?php } else { ?>
											<input type="radio" name="payment" value="bank" id="bank" />
										<?php } ?>
										<?php echo $text_bank; ?>
									</label>

								</div>
							</div>

							<div class="control-group payment" id="payment-cheque">
								<label for="cheque_account" class="control-label"><?php echo $entry_cheque; ?></label>
								<div class="controls">
									<input type="text" name="cheque" id="cheque_account" value="<?php echo $cheque; ?>" class="span6" />
								</div>
							</div>

							<div class="control-group payment" id="payment-paypal">
								<label for="paypal_account" class="control-label"><?php echo $entry_paypal; ?></label>
								<div class="controls">
									<input type="text" name="paypal" id="paypal_account" value="<?php echo $paypal; ?>" class="span6" />
								</div>
							</div>

							<div class="control-group payment" id="payment-bank">

								<div class="control-group">
									<label for="bank_name" class="control-label"><?php echo $entry_bank_name; ?></label>
									<div class="controls">
										<input type="text" name="bank_name" id="bank_name" value="<?php echo $bank_name; ?>" class="span6" />
									</div>
								</div>
								<div class="control-group">
									<label for="bank_branch_number" class="control-label"><?php echo $entry_bank_branch_number; ?></label>
									<div class="controls">
										<input type="text" name="bank_branch_number" id="bank_branch_number" value="<?php echo $bank_branch_number; ?>" class="span6" />
									</div>
								</div>
								<div class="control-group">
									<label for="bank_swift_code" class="control-label"><?php echo $entry_bank_swift_code; ?></label>
									<div class="controls">
										<input type="text" name="bank_swift_code" id="bank_swift_code" value="<?php echo $bank_swift_code; ?>" class="span6" />
									</div>
								</div>
								<div class="control-group">
									<label for="bank_account_name" class="control-label"><?php echo $entry_bank_account_name; ?></label>
									<div class="controls">
										<input type="text" name="bank_account_name" id="bank_account_name" value="<?php echo $bank_account_name; ?>" class="span6" />
									</div>
								</div>
								<div class="control-group">
									<label for="bank_account_number" class="control-label"><?php echo $entry_bank_account_number; ?></label>
									<div class="controls">
										<input type="text" name="bank_account_number" id="bank_account_number" value="<?php echo $bank_account_number; ?>" class="span6" />
									</div>
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

		</div> <!-- .row-fluid -->

	<?php echo $content_bottom; ?>
	
	<script type="text/javascript"><!--

		$('input[name=\'payment\']').bind('change', function() {
			$('.payment').hide();
			
			$('#payment-' + this.value).show();
		});

		$('input[name=\'payment\']:checked').trigger('change');

	//--></script>

<?php echo $footer; ?> 