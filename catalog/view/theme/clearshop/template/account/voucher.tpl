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

					<p><?php echo $text_description; ?></p>

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="voucher" class="form">

						<div class="content">

							<div class="control-group">
								<label for="to_name" class="control-label">
									<span class="required">*</span> <?php echo $entry_to_name; ?>
								</label>
								<div class="controls">
									<input type="text" name="to_name" id="to_name" value="<?php echo $to_name; ?>" title="<?php echo $this->language->get('error_to_name'); ?>" class="required span12" required />
									<?php if ($error_to_name) { ?>
									<span class="error"><?php echo $error_to_name; ?></span>
									<?php } ?>
								</div>
							</div>
							<div class="control-group">
								<label for="to_email" class="control-label">
									<span class="required">*</span> <?php echo $entry_to_email; ?>
								</label>
								<div class="controls">
									<input type="email" name="to_email" id="to_email" value="<?php echo $to_email; ?>"  title="<?php echo $this->language->get('error_to_email'); ?>" class="required email span12" required />
									<?php if ($error_to_email) { ?>
									<span class="error"><?php echo $error_to_email; ?></span>
									<?php } ?>
								</div>
							</div>

							<div class="row-fluid">
								<div class="control-group span6">
									<label for="from_name" class="control-label">
										<span class="required">*</span> <?php echo $entry_from_name; ?>
									</label>
									<div class="controls">
										<input type="text" name="from_name" id="from_name" value="<?php echo $from_name; ?>" title="<?php echo $this->language->get('error_from_name'); ?>" class="required span12" required />
										<?php if ($error_from_name) { ?>
										<span class="error"><?php echo $error_from_name; ?></span>
										<?php } ?>
									</div>
								</div>
								<div class="control-group span6">
									<label for="from_email" class="control-label">
										<span class="required">*</span> <?php echo $entry_from_email; ?>
									</label>
									<div class="controls">
										<input type="email" name="from_email" id="from_email" value="<?php echo $from_email; ?>"  title="<?php echo $this->language->get('error_from_email'); ?>" class="required email span12" required />
										<?php if ($error_from_email) { ?>
										<span class="error"><?php echo $error_from_email; ?></span>
										<?php } ?>
									</div>
								</div>
							</div>

							<div class="control-group">

								<label class="control-label">
									<span class="required">*</span> <?php echo $entry_theme; ?>
								</label>

								<div class="controls">

									<?php foreach ($voucher_themes as $voucher_theme) { ?>

										<label class="radio">

											<?php if ($voucher_theme['voucher_theme_id'] == $voucher_theme_id) { ?>
											
												<input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" checked="checked" class="radio inline"/>
												<?php echo $voucher_theme['name']; ?>
											
											<?php } else { ?>
											
												<input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" class="radio inline" />
												<?php echo $voucher_theme['name']; ?>
											
											<?php } ?>

										</label>

									<?php } ?>

									<?php if ($error_theme) { ?>
										<span class="error"><?php echo $error_theme; ?></span>
									<?php } ?>

								</div>
							</div>

							<div class="control-group">
								<label for="message" class="control-label"><?php echo $entry_message; ?></label>
								<div class="controls">
									<textarea name="message" id="message" cols="34" rows="5" class="span12"><?php echo $message; ?></textarea>
								</div>
							</div>

							<div class="control-group">
								<label for="amount" class="control-label">
									<span class="required">*</span> <?php echo $entry_amount; ?>
								</label>
								<div class="controls">
									<input type="text" name="amount" id="amount" value="<?php echo $amount; ?>"  title="<?php echo $this->language->get('error_amount'); ?>" class="required span3" required />
									<?php if ($error_amount) { ?>
									<span class="error"><?php echo $error_amount; ?></span>
									<?php } ?>
								</div>
							</div>


						</div>

						<div class="form-actions">

							<?php if ($text_agree) { ?>
								<label class="checkbox"><input type="checkbox" name="agree" value="1" <?php if ($agree) { ?> checked="checked" <?php } ?> /> <?php echo $text_agree; ?></label>
							<?php } ?>

							<input type="submit" value="<?php echo $button_continue; ?>" class="button button-inverse" />

						</div>
						
					</form>

				</div>
				
			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div> <!-- .row-fluid -->

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>