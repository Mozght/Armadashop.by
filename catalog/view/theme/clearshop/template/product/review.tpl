<?php if ($reviews) { ?>

	<?php foreach ($reviews as $review) { ?>

	<article class="content">

		<div class="author"><?php echo $review['author']; ?></div>

		<img src="catalog/view/theme/clearshop/images/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" />

		<div class="review-date"><?php echo $review['date_added']; ?></div>

		<?php echo $review['text']; ?>

	</article>

	<?php } ?>

	<div class="pagination"><?php echo $pagination; ?></div>

<?php } else { ?>		

	<div class="empty">
		<div class="empty-inner"><?php echo $text_no_reviews; ?></div>
	</div>

<?php } ?>