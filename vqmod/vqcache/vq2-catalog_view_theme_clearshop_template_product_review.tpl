<?php if ($reviews) { ?>
<div itemprop="review" itemscope itemtype="http://schema.org/Review">

	<?php foreach ($reviews as $review) { ?>

	<article class="content">

		<div class="author"><span itemprop="author"><?php echo $review['author']; ?></span></div>

		<div itemprop="reviewRating" itemscope itemtype="http://schema.org/Rating"><img src="catalog/view/theme/clearshop/images/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['rating']; ?>" title="<?php echo $review['rating']; ?> "/><meta itemprop="worstRating" content = "1"> ( <span itemprop="ratingValue"><?php echo $review['rating']; ?></span> / <span itemprop="bestRating">5</span> )</div>

		<div class="review-date"><meta itemprop="datePublished" content="<?php echo $review['date_added']; ?>"><?php echo $review['date_added']; ?></div>

		<span itemprop="description"><?php echo $review['text']; ?></span>

	</article>

	<?php } ?>

	<div class="pagination"><?php echo $pagination; ?></div>

</div>
<?php } else { ?>		

	<div class="empty">
		<div class="empty-inner"><?php echo $text_no_reviews; ?></div>
	</div>

<?php } ?>