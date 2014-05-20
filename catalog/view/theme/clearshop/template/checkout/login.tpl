<div class="row-fluid">
	
	<div class="span6 leftcol">

		<div class="contentset center"><?php echo $text_new_customer; ?></div>
	
		<div class="control-group">
	
			<label class="control-label"><?php echo $text_checkout; ?></label>
	
			<div class="controls">
	
				<label class="radio">
					<?php if ($account == 'register') { ?>
					<input type="radio" name="account" value="register" id="register" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="account" value="register" id="register" />
					<?php } ?>
					<b><?php echo $text_register; ?></b>
				</label>
	
			<?php if ($guest_checkout) { ?>
	
				<label class="radio">
					<?php if ($account == 'guest') { ?>
					<input type="radio" name="account" value="guest" id="guest" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="account" value="guest" id="guest" />
					<?php } ?>
					<b><?php echo $text_guest; ?></b>
				</label>
	
			<?php } ?>
	
			</div>
		</div>
	
		<p><?php echo $text_register_account; ?></p>
	
		<div class="form-actions">
			<a id="button-account" class="button button-inverse"><span><?php echo $button_continue; ?></span></a>
		</div>
	
	</div>
	
	<div id="login" class="span6 rightcol">
	
		<div class="contentset center"><?php echo $text_returning_customer; ?></div>
			
		<p><?php echo $text_i_am_returning_customer; ?></p>
	
		<div class="control-group">
			<label class="control-label" for="email"><b><?php echo $entry_email; ?></b></label>
			<div class="controls">
				<input type="email" name="email" id="email" class="span11 required" required />
			</div>
		</div>
	
		<div class="control-group">
			<label class="control-label" for="password"><b><?php echo $entry_password; ?></b></label>
			<div class="controls">
				<input type="password" name="password" id="password" class="span11 required" required />
			</div>
		</div>
	
		<div class="form-actions">
			<input type="button" value="<?php echo $button_login; ?>" id="button-login" class="button button-inverse" />
			<span class="forgotten"><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></span>
		</div>

		

	</div>

</div>

<script type="text/javascript">

	$('#login input').keydown(function(e) {
		if (e.keyCode == 13) {
			$('#button-login').trigger('click');
		}
	});

</script>