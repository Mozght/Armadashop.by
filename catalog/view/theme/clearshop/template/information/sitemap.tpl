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

			<?php echo $column_left; ?>

			<section id="maincontent" class="<?php echo $main; ?>" role="main">

				<div class="mainborder">

					<?php if ($column_left || $column_right) { ?>
						<div id="toggle_sidebar"></div>
					<?php } ?>

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<div class="sitemap-info row-fluid">

						<div class="span6">
							<ul>
								<?php foreach ($categories as $category_1) { ?>
								<li><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
									<?php if ($category_1['children']) { ?>
									<ul>
										<?php foreach ($category_1['children'] as $category_2) { ?>
										<li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
											<?php if ($category_2['children']) { ?>
											<ul>
												<?php foreach ($category_2['children'] as $category_3) { ?>
												<li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
												<?php } ?>
											</ul>
											<?php } ?>
										</li>
										<?php } ?>
									</ul>
									<?php } ?>
								</li>
								<?php } ?>
							</ul>
						</div>

						<div class="span6">
							<ul>
								<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
								<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
									<ul>
										<li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
										<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
										<li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
										<li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
										<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
									</ul>
								</li>
								<li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
								<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
								<li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
								<li><?php echo $text_information; ?>
									<ul>
										<?php foreach ($informations as $information) { ?>
										<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
										<?php } ?>
										<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>

				</div>
				
			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div> <!-- .row-fluid -->
	
	<?php echo $content_bottom; ?>

<?php echo $footer; ?>