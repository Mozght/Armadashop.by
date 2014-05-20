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

			<?php echo $column_left; ?>

			<section id="maincontent" class="<?php echo $main; ?>" role="main">

				<div class="mainborder">

					<?php if ($column_left || $column_right) { ?>
						<div id="toggle_sidebar"></div>
					<?php } ?>

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="password-form" class="form-horizontal">
			  
						<fieldset class="subheading ">
							
							<legend><?php echo $text_password; ?></legend>

							<div class="control-group">
								<label for="password" class="control-label">
									<span class="required">*</span> <?php echo $entry_password; ?>
								</label>
								<div class="controls">
									<input type="password" name="password" id="password" value="<?php echo $password; ?>" title="<?php echo $this->language->get('error_password'); ?>" class="password span6" required />
									<?php if ($error_password) { ?>
										<span class="error"><?php echo $error_password; ?></span>
									<?php } ?>
								</div>
							</div>

							<div class="control-group">
								<label for="confirm" class="control-label">
									<span class="required">*</span> <?php echo $entry_confirm; ?>
								</label>
								<div class="controls">
									<input type="password" name="confirm" id="confirm" value="<?php echo $confirm; ?>"  title="<?php echo $this->language->get('error_password'); ?>" class="password span6" required />
									<?php if ($error_confirm) { ?>
										<span class="error"><?php echo $error_confirm; ?></span>
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

		</div> <!-- .row -->

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>