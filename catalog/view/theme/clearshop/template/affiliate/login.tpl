<?php echo $header; ?>

	<div id="maintop-container">

		<div class="container">

		<?php echo $content_top; ?>

		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<?php echo $breadcrumb['separator']; ?>
				<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		
		<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
		<?php } ?>
		<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>

		<section id="maincontent">

			<div class="mainborder">

				<div class="cart-inner">

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<div>
						<?php echo $text_description; ?>
					</div>

					<div class="row-fluid">

						<div class="span6 register">
							
							<div class="contentset center">
								<?php echo $text_new_affiliate; ?>
							</div>

							<?php echo $text_register_account; ?>

							<div class="form-actions">
								<a href="<?php echo $register; ?>" class="button button-inverse"><?php echo $button_continue; ?></a>
							</div>

						</div>

						<div class="span6 login">

							<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="login" class="form">

								<div class="contentset center">
									<?php echo $text_returning_affiliate; ?>
								</div>

								<p><?php echo $text_i_am_returning_affiliate; ?></p>

								<div class="control-group">
									<label for="email" class="control-label"><b><?php echo $entry_email; ?></b></label>
									<div class="controls">
										<input type="email" name="email" id="email" class="span9 required" required />
									</div>
								</div>

								<div class="control-group">
									<label for="password" class="control-label"><b><?php echo $entry_password; ?></b></label>
									<div class="controls">
										<input type="password" name="password" id="password" class="span9 required" required />
									</div>
								</div>

								<div class="form-actions">
									<input type="submit" value="<?php echo $button_login; ?>" class="button button-inverse" />
									<span class="forgotten"><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></span>
								</div>

								<?php if ($redirect) { ?>
									<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
								<?php } ?>

							</form>

						</div>

					</div>

				</div>

			</div>

		</section><!-- #maincontent -->

	<?php echo $content_bottom; ?>

	<script type="text/javascript">

		$('#login input').keydown(function(e) {
			if (e.keyCode == 13) {
				$('#login').submit();
			}
		});

	</script>

<?php echo $footer; ?>