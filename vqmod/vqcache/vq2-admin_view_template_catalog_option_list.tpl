<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/order.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="setDiscounts();return false;" class="button"><?php echo $text_discounts; ?></a><a href="<?php echo $insert; ?>" class="button"><?php echo $button_insert; ?></a><a onclick="$('form').submit();" class="button"><?php echo $button_delete; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="left"><?php if ($sort == 'od.name') { ?>
                <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
                <?php } ?></td>
              <td class="right"><?php if ($sort == 'o.sort_order') { ?>
                <a href="<?php echo $sort_sort_order; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_sort_order; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_sort_order; ?>"><?php echo $column_sort_order; ?></a>
                <?php } ?></td>
              <td class="right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($options) { ?>
            <?php foreach ($options as $option) { ?>
            <tr>
              <td style="text-align: center;"><?php if ($option['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $option['option_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $option['option_id']; ?>" />
                <?php } ?></td>
              <td class="left"><?php echo $option['name']; ?></td>
              <td class="right"><?php echo $option['sort_order']; ?></td>
              <td class="right"><?php foreach ($option['action'] as $action) { ?>
                [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                <?php } ?></td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="4"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>
<?php // BOF - Zappo - Group Discounts - Discounts Dialog ?>
<div id="dialog-confirm" style="display:none;"><?php echo $text_discounts_warning;?></div>
<div id="discounts" style="display:none;">
  <table class="form">
    <tr>
      <td colspan="3"><?php echo $text_group_discount; ?></td>
    </tr>
  <?php foreach ($groups as $group) { ?>
	<tr>
	  <td><span title="<?php echo $text_default_discount . ($group['discount'] ? $group['discount'] : 0); ?>%" style="cursor:help;"><?php echo $group['name']; ?>:</span></td>
	  <td><nobr><input type="text" name="discounts[<?php echo $group['customer_group_id']; ?>][0]" value="" size="5" />%</nobr></td>
	  <td><nobr><?php echo $text_discount_minimum;?>: <input type="text" name="discounts[<?php echo $group['customer_group_id']; ?>][1]" value="" size="5" /></nobr></td>
	</tr>
  <?php } ?>
	<tr>
      <td></td>
      <td><a href="#" class="button-discounts" /><?php echo $button_save; ?></a></td>
    </tr>
  </table>
</div>
<script type="text/javascript"><!--
	function setDiscounts() {
		$('#discounts').dialog({
			title: '<?php echo $text_discounts; ?>',
			width: 450,
			autoOpen:true
		});
	}

	$('.button-discounts').button().live('click', function() {
		$(this).append('<img src="view/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$( "#dialog-confirm" ).dialog({
			resizable: false,
			height: 250,
			modal: true,
			buttons: {
				"<?php echo $button_save;?>": function() {
					$.ajax({
						url: '<?php echo $discounts_link;?>',
						data: $(':input[name="selected[]"]:checked, :input[name^="discounts"]').serialize(),
						dataType: 'json',
						success: function(json) {
							$('.loading').remove();
							$('.success').remove();
							$('.warning').remove();

							if (json['error']) {
								$('#discounts').prepend('<div class="warning" style="display: none;">' + json['error'] + '</div>');
								$('.warning').fadeIn('slow');
							}

							if (json['success']) {
								$('#discounts').prepend('<div class="success" style="display: none;">' + json['success'] + '</div>');
								$('.success').fadeIn('slow');
							}
						}
					});
					$(this).dialog("close");
				},
				"<?php echo $button_cancel;?>": function() {
					$('.loading').remove();
					$(this).dialog("close");
				}
			}
		});
		return false;
	});
</script>
<?php // EOF - Zappo - Group Discounts - Discounts Dialog ?>
<?php echo $footer; ?>