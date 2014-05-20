
<?php if ($products) { ?>

	<?php $this->language->load('module/clearshop'); ?>

	<?php if($this->config->get('clearshop_status')== 1 && $this->config->get('clearshop_related_carousel') != '') { ?>

		<div id="related-products" class="product-slider top-arrows box" <?php if ($this->language->get('direction')=='rtl') echo 'style="direction:ltr;"'?>>

			<h4><span><?php echo $heading_title; ?></span></h4>
			
			<div class="flexslider">

				<ul class="slides">

				<?php foreach ($products as $product) {  ?>
					
					<li>
						<div class="inner">

							<div class="inner2">

								<?php if ($product['thumb']) { ?>
								<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
								<?php } ?>

								<?php if ($product['price'] && $product['special']) { ?>
								<div class="onsale"><span><?php echo $this->language->get('text_onsale'); ?></span></div>
								<?php } ?>


				<div class="quickview" style="visibility:hidden;"><a id="qv<?php echo $product['product_id']; ?>" class="button" href="<?php echo $product['href']; ?>" onClick="ajaxDialog('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>','quickview'); return false;"><?php echo $this->language->get('text_quickview'); ?> <i class="icon-share-alt"></i></a></div>
			
								<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>

								<?php if ($product['price']) { ?>
								<div class="price">
								<?php if (!$product['special']) { ?>
									<?php echo $product['price']; ?>
								<?php } else { ?>
									<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								<?php } ?>
								</div>
								<?php } ?>

								<?php if ($product['rating']) { ?>
								<div class="rating"><img src="catalog/view/theme/clearshop/images/stars-<?php echo round($product['rating']); ?>.png" title="<?php echo round($product['rating'],1); ?> (<?php echo $product['reviews']; ?>)"  alt="<?php echo $product['reviews']; ?>" /></div>
								<?php } ?>

								<div class="cart">
			<input type="button" value="<?php echo $button_cart; ?>" <?php if ($product['quantity'] <= 0) { echo 'style="display:none"'; } ?>
			 onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>

							</div>

						</div> <!-- .inner -->
					</li>

				<?php } ?>

				</ul>

		  </div>

		</div> <!-- .product-slider -->

		<script type="text/javascript">

			$(document).ready(function() {
				$('#related-products .flexslider').flexslider({
					animation: "slide",
					animationLoop: true,
					itemWidth: 182,
					itemMargin: 0,
					minItems: 1,
					maxItems: 4,
					<?php if($this->config->get('clearshop_carousel_autoplay') == 0) echo "slideshow: false,"; ?>
					slideshowSpeed: 4600
				  });
			});

		</script>

	<?php } else { ?>

		<section id="related-products" class="box">

			<h4><span><?php echo $heading_title; ?></span></h4>
			
			<div class="box-content">

				<div class="product-grid row-fluid">

					<?php foreach ($products as $product) { ?>

					<div class="grid-box">

						<div class="inner">

							<div class="inner2">

								<?php if ($product['thumb']) { ?>
								<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
								<?php } ?>

								<?php if ($product['price'] && $product['special']) { ?>
								<div class="onsale"><span><?php echo $this->language->get('text_onsale'); ?></span></div>
								<?php } ?>


				<div class="quickview" style="visibility:hidden;"><a id="qv<?php echo $product['product_id']; ?>" class="button" href="<?php echo $product['href']; ?>" onClick="ajaxDialog('index.php?route=product/quickview&amp;product_id=<?php echo $product['product_id']; ?>','quickview'); return false;"><?php echo $this->language->get('text_quickview'); ?> <i class="icon-share-alt"></i></a></div>
			
								<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>						

								<?php if ($product['price']) { ?>
								<div class="price">
								<?php if (!$product['special']) { ?>
									<?php echo $product['price']; ?>
								<?php } else { ?>
									<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								<?php } ?>
								</div>
								<?php } ?>

								<?php if ($product['rating']) { ?>
								<div class="rating"><img src="catalog/view/theme/clearshop/images/stars-<?php echo round($product['rating']); ?>.png" title="<?php echo round($product['rating'],1); ?> (<?php echo $product['reviews']; ?>)"  alt="<?php echo $product['reviews']; ?>" /></div>
								<?php } ?>

								<div class="cart">
			<input type="button" value="<?php echo $button_cart; ?>" <?php if ($product['quantity'] <= 0) { echo 'style="display:none"'; } ?>
			 onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>								

							</div> <!-- .inner2 -->

						</div> <!-- .inner -->

					</div><!-- .grid-box -->

					<?php } ?>

				</div><!-- .product-grid -->

			</div><!-- .box-content -->
		
		</section><!-- #related-products -->

	<?php } ?>

<?php } ?>