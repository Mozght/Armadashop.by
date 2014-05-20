<div class="box">
	
	<div class="box-heading"><?php echo $heading_title; ?></div>

	<div class="box-content">
		<ul class="box-filter">
			<?php foreach ($filter_groups as $filter_group) { ?>
			<li><span id="filter-group<?php echo $filter_group['filter_group_id']; ?>" class="filter-group"><?php echo $filter_group['name']; ?></span>
				<ul class="ul-filter-group<?php echo $filter_group['filter_group_id']; ?>">
					<?php foreach ($filter_group['filter'] as $filter) { ?>
					<?php if (in_array($filter['filter_id'], $filter_category)) { ?>
					<li>
						<?php 
                            	 $pattern = '/(;)([a-zA-Z-]*)(;)/';
                                 $name = $filter['name'];                                
                                
                                 if (preg_match($pattern, $name,$matches)) {             
                                 	 
                                    echo '<input type="checkbox" value="'.$filter['filter_id'].'" id="filter'.$filter['filter_id'].'" class="noinput" checked="checked" />';
                               		echo '<label for="filter'.$filter['filter_id'].'" class="checkbox tip" data-toggle="tooltip" title="'.$matches[2].'">';        	
                                    echo '<span class="color-box '.$matches[2].' checked"></span>';
                                 }
                                  else {
                                  	echo '<input type="checkbox" value="'.$filter['filter_id'].'" id="filter'.$filter['filter_id'].'" class="styled" checked="checked"  />';
                               		echo '<label for="filter'.$filter['filter_id'].'" class="checkbox">';     
                                    echo $name;
                                 }
                                 
                        	
                           ?>
                        </label>
					</li>
					<?php } else { ?>
					<li>
                    	<?php 
                            	 $pattern = '/(;)([a-zA-Z-]*)(;)/';
                                 $name = $filter['name'];                                
                                
                                 if (preg_match($pattern, $name,$matches)) {             
                                 	 
                                    echo '<input type="checkbox" value="'.$filter['filter_id'].'" id="filter'.$filter['filter_id'].'" class="noinput"/>';
                               		echo '<label for="filter'.$filter['filter_id'].'" class="checkbox tip" data-toggle="tooltip" title="'.$matches[2].'">';        	
                                    echo '<span class="color-box '.$matches[2].'" ></span>';
                                 }
                                  else {
                                  	echo '<input type="checkbox" value="'.$filter['filter_id'].'" id="filter'.$filter['filter_id'].'" class="styled" />';
                               		echo '<label for="filter'.$filter['filter_id'].'" class="checkbox">';     
                                    echo $name;
                                 }
                                 
                        	
                           ?>
                        </label>
					</li>
					<?php } ?>
					<?php } ?>
                    <li class="clear"></li>
				</ul>
			</li>
			<?php } ?>
		</ul>
		<div class="button-filter">
			<a id="button-filter" class="button button-small button-inverse"><?php echo $button_filter; ?></a>
		</div>
	</div>
</div>
<script type="text/javascript"><!--
$('#button-filter').bind('click', function() {
	filter = [];
	
	$('.box-filter input[type=\'checkbox\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script> 
