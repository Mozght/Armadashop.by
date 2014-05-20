<?php $this->language->load('module/clearshop'); ?>

<?php if($this->config->get('clearshop_status')== 1 && $this->config->get('clearshop_featured_carousel') != '') { ?>

	<section id="featured-products" class="product-slider top-arrows box" <?php if ($this->language->get('direction')=='rtl') echo 'style="direction:ltr;"'?>>

		<h4><?php echo $heading_title; ?></h4>

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
							<div class="rating"><img src="catalog/view/theme/clearshop/images/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
							<?php } ?>

							<div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>

						</div> <!-- .inner2 -->

					</div> <!-- .inner -->
				</li>

			<?php } ?>

			</ul>

	  </div>

	</section> <!-- .es-carousel-wrapper -->

	<script type="text/javascript">

		$(document).ready(function() {
			$('#featured-products .flexslider').flexslider({
				animation: "slide",
				animationLoop: true,
				itemWidth: 200,
				itemMargin: 0,
				minItems: 1,
				maxItems: 4,
				<?php if($this->config->get('clearshop_carousel_autoplay') == 0) echo "slideshow: false,"; ?>
				slideshowSpeed: 4600
			  });
		});

	</script>

<?php } else { ?>

	<section id="featured-products" class="box">

		<h4><?php echo $heading_title; ?></h4>

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
							<div class="rating"><img src="catalog/view/theme/clearshop/images/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
							<?php } ?>

							<div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>							

						</div> <!-- .inner -->

					</div> <!-- .inner -->

				</div>

				<?php } ?>

			</div>

		</div>

	</section>

<?php } ?>