<?php if (!isset($redirect)) { ?>

<div class="row-fluid">

	<div class="checkout-confirm span12">
	
		<table class="table table-confirm">
	
			<thead>
				<tr>
					<th class="name"><?php echo $column_name; ?></th>
					<th><?php echo $column_quantity; ?></th>
					<th class="price"><?php echo $column_price; ?></th>
					<th class="total"><?php echo $column_total; ?></th>
				</tr>
			</thead>
	
			<tbody>
				
				<?php foreach ($products as $product) { ?>
	
					<tr>
						<td class="name">
							<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
							<div class="model"><b><?php echo $column_model; ?>:</b> <?php echo $product['model']; ?></div>
							<ul class="list options">
								<?php foreach ($product['option'] as $option) { ?>
								<li><span><?php echo $option['name']; ?>:</span> <?php echo $option['value']; ?></li>
								<?php } ?>
							</ul>
						</td>
						<td class="quantity"><?php echo $product['quantity']; ?></td>
						<td class="price right"><?php echo $product['price']; ?></td>
						<td class="total right"><?php echo $product['total']; ?></td>
					</tr>
	
				<?php } ?>
	
				<?php foreach ($vouchers as $voucher) { ?>
	
					<tr>
						<td class="name"><?php echo $voucher['description']; ?></td>
						<td class="quantity">1</td>
						<td class="price right"><?php echo $voucher['amount']; ?></td>
						<td class="total right"><?php echo $voucher['amount']; ?></td>
					</tr>
	
				<?php } ?>
	
			</tbody>
	
			<tfoot>
				
				<?php if ($totals) { $i = 0; $j = count($totals); } ?>
	
				<?php foreach ($totals as $total) { ?>
	
					<tr>
						<td class="price"></td>
						<td colspan="2" class="total-labels right">
							<?php echo $total['title']; ?>:
						</td>
						<td class="totals <?php if($i == $j-1) echo 'last'; ?> right">
							<?php echo $total['text']; ?>
						</td>
					</tr>
	
				<?php $i++; } ?>
	
			</tfoot>
	
		</table>
	
		<div class="payment"><?php echo $payment; ?></div>
	
	</div>
	
</div>

<?php } else { ?>

<script type="text/javascript"><!--

	location = '<?php echo $redirect; ?>';

//--></script> 

<?php } ?>