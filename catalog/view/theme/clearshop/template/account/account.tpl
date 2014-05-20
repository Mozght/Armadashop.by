<?php echo $header; ?>

	<div id="maintop-container">

		<div class="container">

		<?php echo $content_top; ?>
		
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		
		<?php if ($success) { ?>
			<div class="success"><?php echo $success; ?></div>
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

					<div class="row-fluid">

						<div class="span6">
						
							<div class="contentset"><i class="icon-user"></i><?php echo $text_my_account; ?></div>

							<ul class="list">

								<li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
								<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
								<li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
								<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>

							</ul>

						</div>

						<div class="span6">
							
							<div class="contentset"><i class="icon-bookmark"></i><?php echo $text_my_orders; ?></div>

							<ul class="list">

								<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
								<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
								<?php if ($reward) { ?>
								<li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
								<?php } ?>
								<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
								<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>

							</ul>

						</div>
					
					</div>

					<div class="contentset"><i class="icon-envelope"></i><?php echo $text_my_newsletter; ?></div>

					<ul class="list">

						<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>

					</ul>

				</div>

			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div>

	<?php echo $content_bottom; ?>
	
<?php echo $footer; ?> 