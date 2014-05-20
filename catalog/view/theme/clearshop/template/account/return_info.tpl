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

			<?php echo $column_left ?>
			
			<section id="maincontent" class="<?php echo $main; ?>" role="main">

				<div class="mainborder">

					<?php if ($column_left || $column_right) { ?>
						<div id="toggle_sidebar"></div>
					<?php } ?>

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<div class="contentset center"><?php echo $text_return_detail; ?></div>

					<table class="table table-bordered">
						<thead>
							<tr>
								<td class="left"><?php echo $text_return_id; ?></td>
								<td class="left"><?php echo $text_order_id; ?></td>
								<td class="left"><?php echo $text_date_ordered; ?></td>
								<td class="left"><?php echo $text_date_added; ?></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="left">#<?php echo $return_id; ?></td>
								<td class="left">#<?php echo $order_id; ?></td>
								<td class="left"><?php echo $date_ordered; ?></td>
								<td class="left"><?php echo $date_added; ?></td>
							</tr>
						</tbody>
					</table>

					<div class="contentset center"><?php echo $text_product; ?></div>

					<table class="table table-bordered order-info">
						<thead>
							<tr>
								<td class="left"><?php echo $column_product; ?></td>
								<td class="left"><?php echo $column_model; ?></td>
								<td class="right"><?php echo $column_quantity; ?></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="left"><b><?php echo $product; ?></b></td>
								<td class="left"><?php echo $model; ?></td>
								<td class="right"><?php echo $quantity; ?></td>
							</tr>
						</tbody>
					</table>

					<table class="table table-bordered order-info">
						<thead>
							<tr>
							<td class="left"><?php echo $column_reason; ?></td>
							<td class="left"><?php echo $column_opened; ?></td>
							<td class="left"><?php echo $column_action; ?></td>
							</tr>
						</thead>
						<tbody>
							<tr>
							<td class="left"><?php echo $reason; ?></td>
							<td class="left"><?php echo $opened; ?></td>
							<td class="left"><?php echo $action; ?></td>
							</tr>
						</tbody>
					</table>

					<?php if ($comment) { ?>

					<table class="table table-bordered order-info">
						<thead>
							<tr>
								<td class="left"><?php echo $text_comment; ?></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="left"><?php echo $comment; ?></td>
							</tr>
						</tbody>
					</table>

					<?php } ?>

					<?php if ($histories) { ?>

					<div class="contentset center">
						<h4 class="inner">
							<span><?php echo $text_history; ?></span>
						</h4>
					</div>

					<table class="table table-bordered order-info">
						<thead>
							<tr>
								<td class="left"><?php echo $column_date_added; ?></td>
								<td class="left"><?php echo $column_status; ?></td>
								<td class="left"><?php echo $column_comment; ?></td>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($histories as $history) { ?>
							<tr>
								<td class="left"><?php echo $history['date_added']; ?></td>
								<td class="left"><?php echo $history['status']; ?></td>
								<td class="left"><?php echo $history['comment']; ?></td>
							</tr>
							<?php } ?>
						</tbody>
					</table>

					<?php } ?>

					<div class="form-actions">
						<a href="<?php echo $continue; ?>" class="button button-inverse">
							<?php echo $button_continue; ?>
						</a>
					</div>

				</div>

			</section> <!-- #maincontent -->
		
			<?php echo $column_right; ?>

		</div> <!-- .row -->
	
	<?php echo $content_bottom; ?>

<?php echo $footer; ?>