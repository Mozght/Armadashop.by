<script type="text/javascript" src="catalog/view/theme/clearshop/js/jquery.dcjqaccordion.js"></script> 

<div class="box category-accordion">

	<h4><span><?php echo $heading_title; ?></span></h4>
	
	<div class="box-content box-category"><?php echo $category_accordion; ?></div>
	
</div>

<script type="text/javascript">
$(document).ready(function() {
	$('#cat_accordion').dcAccordion({
		classExpand : 'cid<?php echo $category_accordion_cid; ?>',
		menuClose: false,
		autoClose: true,
		saveState: false,
		disableLink: false,		
		autoExpand: true
	});
});
</script>
