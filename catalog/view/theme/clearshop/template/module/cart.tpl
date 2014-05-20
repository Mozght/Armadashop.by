<section id="cart">

	<?php $this->language->load('module/clearshop'); ?>

	<div class="heading">
		<div class="cart-total">
		<i class="icon-shopping-cart"></i>
			<a href="<?php echo $cart; ?>" id="cart-link"><?php echo $heading_title; ?></a> <span id="cart-items"><?php echo $text_items; ?></span>
		</div>
	</div>
	<div class="details">
		<div class="content">
			
			<?php if ($products || $vouchers) { ?>

			<div class="inner">
			
			<div class="mini-cart-info">
				<table class="items">
				<tbody>
					<?php foreach ($products as $product) { ?>
					<tr>
						<td class="image"><?php if ($product['thumb']) { ?>
							<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
							<?php } ?></td>
						<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
							<ul class="list options">
								<?php foreach ($product['option'] as $option) { ?>
								<li><span><?php echo $option['name']; ?>:</span> <?php echo $option['value']; ?></li>
								<?php } ?>
							</ul>
						</td>
						<td class="quantity"><?php echo $product['quantity']; ?></td>
						<td class="total"><?php echo $product['total']; ?></td>
						<td class="remove"><a title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');"> <i class="icon-remove-sign"></i></a></td>
					</tr>
					<?php } ?>
					<?php foreach ($vouchers as $voucher) { ?>
					<tr>
						<td class="image"></td>
						<td class="name"><?php echo $voucher['description']; ?></td>
						<td class="quantity">x&nbsp;1</td>
						<td class="total"><?php echo $voucher['amount']; ?></td>
						<td class="remove"><a class="close" data-dismiss="item" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" >&times;</a></td>
					</tr>
					<?php } ?>
					</tbody>
					<tfoot>
						<?php foreach ($totals as $total) { ?>
						<tr>
							<td class="right" colspan="3"><b><?php echo $total['title']; ?>:</b></td>
							<td class="right"><?php echo $total['text']; ?></td>
							<td></td>
						</tr>
						<?php } ?>
					</tfoot>
				</table>
			</div>

			<div class="checkout">
				<a href="<?php echo $cart; ?>" class="button button-small"><?php echo $text_cart; ?></a>
				<a href="<?php echo $checkout; ?>" class="button button-cart button-small"><?php echo $text_checkout; ?></a>
				
			</div>

			</div>

			<?php } else { ?>

			<div class="inner empty"><?php echo $text_empty; ?></div>

			<?php } ?>

			<img src="catalog/view/theme/clearshop/images/close.png" id="closecart" alt="" onclick="$('#cart').removeClass('active');"/>

		</div>
	</div>
</section>