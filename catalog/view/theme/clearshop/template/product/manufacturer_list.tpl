<?php echo $header; ?>

	<div id="maintop-container">

		<div class="container">

		<?php echo $content_top; ?>
		
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<?php echo $breadcrumb['separator']; ?>
				<a href="<?php echo $breadcrumb['href']; ?>">
					<?php echo $breadcrumb['text']; ?>
				</a>
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

					<?php if ($categories) { ?>
						
						<div class="pagination pagination-small brands">
							<ul>
								<?php foreach ($categories as $category) { ?>
									<li>
										<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><?php echo $category['name']; ?></a>
									</li>
								<?php } ?>
							</ul>
						</div>

						<div id="manufacturer-list">

						<?php foreach ($categories as $category) { ?>
							
							<div class="contentset"><?php echo $category['name']; ?><a id="<?php echo $category['name']; ?>"></a></div>

							<div class="manufacturer-content row-fluid">
								
								<?php if ($category['manufacturer']) { ?>
								
									<?php for ($i = 0; $i < count($category['manufacturer']);) { ?>

										<ul class="span3 unstyled">

											<?php $j = $i + ceil(count($category['manufacturer']) / 4); ?>

											<?php for (; $i < $j; $i++) { ?>
												
												<?php if (isset($category['manufacturer'][$i])) { ?>
												
												<li>
													<a href="<?php echo $category['manufacturer'][$i]['href']; ?>">
														<b><?php echo $category['manufacturer'][$i]['name']; ?></b>
													</a>
												</li>

												<?php } ?>

											<?php } ?>

										</ul>

									<?php } ?>

								<?php } ?>
						
							</div>
						
						<?php } ?>

						</div>

					<?php } else { ?>

						<div class="content empty">

							<p><?php echo $text_empty; ?></p>

							<div class="buttons">
								<a href="<?php echo $continue; ?>" class="btn btn-inverse">
									<?php echo $button_continue; ?>
								</a>
							</div>

						</div>

					<?php } ?>

				</div>

			</section> <!-- #maincontent -->
			
			<?php echo $column_right; ?>

		</div> <!-- .row -->

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>