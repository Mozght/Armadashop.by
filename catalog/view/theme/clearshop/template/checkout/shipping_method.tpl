<div class="row-fluid">

	<div class="span12">

		<?php if ($error_warning) { ?>
			<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>

		<?php if ($shipping_methods) { ?>
			
			<p><?php echo $text_shipping_method; ?></p>

			<div class="control-group">

				<?php foreach ($shipping_methods as $shipping_method) { ?>
					
					<div class="method-type">
						<p><?php echo $shipping_method['title']; ?></p>

					<?php if (!$shipping_method['error']) { ?>
						<?php foreach ($shipping_method['quote'] as $quote) { ?>

							<label class="radio">
								<?php if ($quote['code'] == $code || !$code) { ?>
									<?php $code = $quote['code']; ?>
									<input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" class="radio inline" />
								<?php } else { ?>
									<input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" class="radio inline" />
								<?php } ?>
								<?php echo $quote['title']; ?> (<b><?php echo $quote['text']; ?></b>)
							</label>
						<?php } ?>
					</div>
					
					<?php } else { ?>
						<div class="error"><?php echo $shipping_method['error']; ?></div>
					<?php } ?>

				<?php } ?>
			
			</div><br />

		<?php } ?>

		<label for="comment" class="label-group"><b><?php echo $text_comments; ?></b></label>
		<div class="controls">
			<textarea name="comment" rows="8" class="span12"><?php echo $comment; ?></textarea>
		</div>

		<div class="buttons">
			<input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" class="button button-inverse" />
		</div>
	
	</div>

</div>
