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
				
				<section id="maincontent" class="<?php echo $main; ?> information-page" role="main">

					<div class="mainborder">

						<?php if ($column_left || $column_right) { ?>
							<div id="toggle_sidebar"></div>
						<?php } ?>

						<div class="info-inner">
						
							<header class="page-header">
								<h1><?php echo $heading_title; ?></h1>
							</header>

							<?php echo $description; ?>

						</div>

					</div>

				</section> <!-- #maincontent -->
				
				<?php echo $column_right; ?>

			</div> <!-- .row-fluid -->

		</div> <!-- .container -->

	</div> <!-- #maintop-container -->

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>