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
	  

		<?php 

		$this->language->load('module/clearshop');
		
		$sbleft= $this->config->get('clearshop_sidebar_left_width');
		$sbright= $this->config->get('clearshop_sidebar_right_width');
		
		if ($column_left && $column_right) { 
			$main_width = 12 - $sbleft - $sbright;
			$main = "middle sideleft "; }
		else if ($column_left) {
			$main_width = 12 - $sbleft;
			$main ="sideleft "; }
		else if ($column_right) {
			$main_width = 12 - $sbright;
			$main ="sideright "; }
		else { 
			$main_width = 12; $main = ""; }

		$main .= "span".$main_width;

		?>

		<div class="row-fluid">

			<?php echo $column_left; ?>

			<section id="maincontent" class="<?php echo $main; ?> contact" role="main">

				<div class="mainborder">

					<?php if ($column_left || $column_right) { ?>
						<div id="toggle_sidebar"></div>
					<?php } ?>

					<header class="page-header">
						<h1><?php echo $heading_title; ?></h1>
					</header>

					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact-form" class="form">

						
							
							<legend><?php echo $text_location; ?></legend>

							<div class="row-fluid">
						
								<address class="span6">
									<div class="contentset"><i class="icon-map-marker"></i><?php echo $text_address; ?></div>
									<?php echo $store; ?><br />
									<?php echo $address; ?>
                                    <?php if ($telephone) { ?>
										<div class="contentset"><i class="icon-phone"></i><?php echo $text_telephone; ?></div>
										<?php echo $telephone; ?><br />
                                       +375 33 69 111 56<br />
										<br />
									<?php } ?>
									<?php if ($fax) { ?>
										<b><?php echo $text_fax; ?></b><br />
										<?php echo $fax; ?>
									<?php } ?>
                                    
                                    <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?f=q&amp;source=s_q&amp;hl=ru&amp;geocode=&amp;q=1%D0%B0+%D1%83%D0%BB%D0%B8%D1%86%D0%B0+%D0%9E%D0%BB%D1%8C%D1%88%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA%D0%B0%D1%8F+%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C,+%D0%91%D0%B5%D0%BB%D0%B0%D1%80%D1%83%D1%81%D1%8C&amp;aq=1&amp;oq=%D0%BE%D0%BB%D1%8C%D1%88%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE+1%D0%B0&amp;sll=37.0625,-95.677068&amp;sspn=80.268251,157.851563&amp;ie=UTF8&amp;hq=&amp;hnear=%D1%83%D0%BB.+%D0%9E%D0%BB%D1%8C%D1%88%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE+1%D0%90,+%D0%A4%D1%80%D1%83%D0%BD%D0%B7%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B9+%D1%80%D0%B0%D0%B9%D0%BE%D0%BD,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9+%D1%80%D0%B0%D0%B9%D0%BE%D0%BD,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA%D0%B0%D1%8F+%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C,+%D0%91%D0%B5%D0%BB%D0%B0%D1%80%D1%83%D1%81%D1%8C&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="https://www.google.com/maps?f=q&amp;source=embed&amp;hl=ru&amp;geocode=&amp;q=1%D0%B0+%D1%83%D0%BB%D0%B8%D1%86%D0%B0+%D0%9E%D0%BB%D1%8C%D1%88%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA%D0%B0%D1%8F+%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C,+%D0%91%D0%B5%D0%BB%D0%B0%D1%80%D1%83%D1%81%D1%8C&amp;aq=1&amp;oq=%D0%BE%D0%BB%D1%8C%D1%88%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE+1%D0%B0&amp;sll=37.0625,-95.677068&amp;sspn=80.268251,157.851563&amp;ie=UTF8&amp;hq=&amp;hnear=%D1%83%D0%BB.+%D0%9E%D0%BB%D1%8C%D1%88%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE+1%D0%90,+%D0%A4%D1%80%D1%83%D0%BD%D0%B7%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B9+%D1%80%D0%B0%D0%B9%D0%BE%D0%BD,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9+%D1%80%D0%B0%D0%B9%D0%BE%D0%BD,+%D0%9C%D0%B8%D0%BD%D1%81%D0%BA%D0%B0%D1%8F+%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C,+%D0%91%D0%B5%D0%BB%D0%B0%D1%80%D1%83%D1%81%D1%8C&amp;t=m&amp;z=14&amp;iwloc=A" style="color:#0000FF;text-align:left">Просмотреть увеличенную карту</a></small>
                                    
								</address>
							
                            	
								<address class="span6">
									
                                                
                                        <legend><?php echo $text_contact; ?></legend>
            
                                        <div class="control-group">
                                            <label for="name" class="control-label">
                                                <span class="required">*</span> <?php echo $entry_name; ?>
                                            </label>
                                            <div class="controls">
                                                <input type="text" name="name" id="name" value="<?php echo $name; ?>" title="<?php echo $this->language->get('error_name'); ?>" class="required span12" required />
                                                <?php if ($error_name) { ?>
                                                <span class="error"><?php echo $error_name; ?></span>
                                                <?php } ?>
                                            </div>
                                        </div>
            
                                        <div class="control-group">
                                            <label for="email" class="control-label">
                                                <span class="required">*</span> <?php echo $entry_email; ?>
                                            </label>
                                            <div class="controls">
                                                <input type="email" name="email" id="email" value="<?php echo $email; ?>"  title="<?php echo $this->language->get('error_email'); ?>" class="required email span12" required/>
                                                <?php if ($error_email) { ?>
                                                <span class="error"><?php echo $error_email; ?></span>
                                                <?php } ?>
                                            </div>
                                        </div>
            
                                        <div class="control-group">
                                            <label for="enquiry" class="control-label">
                                                <span class="required">*</span> <?php echo $entry_enquiry; ?>
                                            </label>
                                            <div class="controls">
                                                <textarea name="enquiry" id="enquiry" cols="52" rows="8" title="<?php echo $this->language->get('error_enquiry'); ?>" class="required span12" required><?php echo $enquiry; ?></textarea>
                                                <?php if ($error_enquiry) { ?>
                                                <span class="error"><?php echo $error_enquiry; ?></span>
                                                <?php } ?>
                                            </div>
                                        </div>
            
                                        <div class="control-group">
                                            <label for="captcha" class="control-label">
                                                <span class="required">*</span> <?php echo $entry_captcha; ?>
                                            </label>
                                            <div class="controls">
                                                <input type="text" name="captcha" id="captcha" value="<?php echo $captcha; ?>" class="span3 required" required /><br /><br />
                                                <img src="index.php?route=information/contact/captcha" alt="" />
                                                <?php if ($error_captcha) { ?>
                                                <span class="error"><?php echo $error_captcha; ?></span>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        
                                        <div class="buttons">
                                          <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
                                        </div>
                                    
								</address>

							</div>
			  
					</form>
					<p>Оказание услуг -&nbsp;&nbsp;ИП РАСТВОРЦЕВ А.А. УНП 191889980&nbsp;на основании <a href="http://armadashop.by/image/data/svidetelstvo.jpg">свидетельства</a></p>
				</div>
				
			</section> <!-- #maincontent -->

			<?php echo $column_right; ?>

		</div>

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>