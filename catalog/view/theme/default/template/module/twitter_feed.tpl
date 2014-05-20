<script type="text/javascript">
jQuery(function($){
	$(".tweets").tweet({
	modpath: "<?php echo $twitter_feed_modpath; ?>",
	join_text: "auto",
	username: "<?php echo $this->config->get('clearshop_twitter_username'); ?>",
	avatar_size: 32,
	count: <?php echo $this->config->get('clearshop_tweets_number'); ?>,
	auto_join_text_default: "<?php echo $text_join_text_default; ?>,", 
	auto_join_text_ed: "<?php echo $text_join_text_ed; ?>",
	auto_join_text_ing: "<?php echo $text_join_text_ing; ?>",
	auto_join_text_reply: "<?php echo $text_join_text_reply; ?>",
	auto_join_text_url: "<?php echo $text_join_text_url; ?>",
	loading_text: "<?php echo $text_loading; ?>",
	template: "<?php echo $tweets_template; ?>"
	});
});
</script>
<div class="twitter">
	<h4><? echo $text_twitter_title; ?></h4>
	<div class="tweets"></div>
	<div class="more"><a href="http://twitter.com/<?php echo $this->config->get('clearshop_twitter_username'); ?>" target="_blank"><?php echo $text_twitter_readmore; ?></a></div>
</div> 
