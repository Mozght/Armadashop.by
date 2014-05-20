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

					<p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>

					<table class="table table-bordered">
						<thead>
							<tr>
								<td class="left"><?php echo $column_date_added; ?></td>
								<td class="left"><?php echo $column_description; ?></td>
								<td class="right"><?php echo $column_amount; ?></td>
							</tr>
						</thead>
						<tbody>
							<?php if ($transactions) { ?>
							<?php foreach ($transactions  as $transaction) { ?>
							<tr>
								<td class="left"><?php echo $transaction['date_added']; ?></td>
								<td class="left"><?php echo $transaction['description']; ?></td>
								<td class="right"><?php echo $transaction['amount']; ?></td>
							</tr>
							<?php } ?>
							<?php } else { ?>
							<tr>
								<td class="center" colspan="3"><?php echo $text_empty; ?></td>
							</tr>
							<?php } ?>
						</tbody>
					</table>
					
					<div class="pagination"><?php echo $pagination; ?></div>

					<div class="form-actions">
						<a href="<?php echo $continue; ?>" class="button button-inverse"><?php echo $button_continue; ?></a>
					</div>
				
				</div>

			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>
		
		</div> <!-- .row -->

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>