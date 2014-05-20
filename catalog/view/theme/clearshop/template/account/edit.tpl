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

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="edit-account" class="form">
				
						<fieldset class="subheading">

							<legend><?php echo $text_your_details; ?></legend>

							<div class="row-fluid">
								<div class="control-group span6">
									<label for="firstname" class="control-label"><span class="required">*</span> <?php echo $entry_firstname; ?></label>
									<div class="controls">
										<input type="text" name="firstname" id="firstname" value="<?php echo $firstname; ?>" title="<?php echo $this->language->get('error_firstname'); ?>" class="required span12" required />
										<?php if ($error_firstname) { ?>
										<span class="error"><?php echo $error_firstname; ?></span>
										<?php } ?>
									</div>
								</div>
										 	
								<div class="control-group span6">
									<label for="lastname" class="control-label"><span class="required">*</span> <?php echo $entry_lastname; ?>
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
								<label for="email" class="control-label"><span class="required">*</span> <?php echo $entry_email; ?></label>
								<div class="controls">
									<input type="email" name="email" id="email" value="<?php echo $email; ?>"  title="<?php echo $this->language->get('error_email'); ?>" class="required email span12" required />
									<?php if ($error_email) { ?>
									<span class="error"><?php echo $error_email; ?></span>
									<?php } ?>
								</div>
							</div>

							<div class="control-group">
								<label for="telephone" class="control-label"><span class="required">*</span> <?php echo $entry_telephone; ?></label>
								<div class="controls">
									<input type="text" name="telephone" id="telephone" value="<?php echo $telephone; ?>" title="<?php echo $this->language->get('error_telephone'); ?>" class="required span12" />
									<?php if ($error_telephone) { ?>
									<span class="error"><?php echo $error_telephone; ?></span>
									<?php } ?>
								</div>
							</div>

							<div class="control-group">
								<label for="fax" class="control-label"><?php echo $entry_fax; ?></label>
								<div class="controls">
									<input type="text" name="fax" id="fax" value="<?php echo $fax; ?>" class="span12"/>
								</div>
							</div>
						
						</fieldset>

						<div class="form-actions">
							<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
							<input type="submit" value="<?php echo $button_continue; ?>" class="button button-inverse" />
						</div>
			  
					</form>

				</div>

			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div>
  
	<?php echo $content_bottom; ?>
  
<?php echo $footer; ?>