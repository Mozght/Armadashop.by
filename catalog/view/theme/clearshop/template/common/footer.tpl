
			</section> <!-- #content_wrapper -->

			<section id="footerpre">
				<div class="container">

					<div class="box">
						
						<div class="row-fluid">

							<div class="span4 contact">

								<div class="inner">

									<h3>Контактная инфа</h3>

									<?php if($this->config->get('clearshop_status')== 1) { ?>

										<dl>
										
										<?php if($this->config->get('clearshop_address') != '') { ?>
											<dt><i class="icon-map-marker"></i></dt>
											<dd><?php echo html_entity_decode($this->config->get('clearshop_address'), ENT_QUOTES, 'UTF-8');?></dd>
										<?php } ?>

										<?php if(($this->config->get('clearshop_phone1') != '') || ($this->config->get('clearshop_phone2') != '')) { ?>
											<dt><i class="icon-phone"></i></dt>
											<dd>
												<?php echo $this->config->get('clearshop_phone1'); ?><br>
												<?php echo $this->config->get('clearshop_phone2'); ?>
   											</dd>
										<?php } ?>

										<?php if($this->config->get('clearshop_address') != '') { ?>
											<dt><i class="icon-envelope"></i></dt>
											<dd><a href="mailto:<?php echo $this->config->get('clearshop_email'); ?>"><?php echo $this->config->get('clearshop_email'); ?></a></dd>
										<?php } ?>

										</dl>

									<?php } ?>
                                    <?php if($this->config->get('clearshop_status')== 1) { ?>
							
								<div class="social">

									<h3>Всегда на связи</h3>

										<a href="https://facebook.com/armadashop.by" target="_blank">
											<i class="icon-facebook-sign"></i>
										</a>
                                        <a href="https://youtube.com/user/armadaXtreme" target="_blank">
											<i class="icon-youtube"></i>
										</a>
										<a href="https://plus.google.com/u/0/armadashop.by@gmail.com" target="_blank">
											<i class="icon-google-plus"></i>
										</a>
										<a href="https://instagram.com/armadashopby" target="_blank">
											<i class="icon-instagram"></i>
                                        </a>
																																													
								</div>

								<?php if($this->config->get('clearshop_footer_info_text') != '') { ?>
									<div class="info">
										<?php echo html_entity_decode($this->config->get('clearshop_footer_info_text'), ENT_QUOTES, 'UTF-8');?>
									</div>
								<?php } ?>

							<?php } ?>

								</div>
								
							</div>


							

									<div class="column span2">
							<h3 class="header"><?php echo $text_information; ?> <i class="icon-caret-down"></i></h3>
							<ul class="content">
								<?php $i=1; foreach ($informations as $information) { ?>
								<li id="inf_f_<?php echo $i;?>"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
								<?php $i++;	} ?>
							</ul>
						</div>
				
						<div class="column span2">
							<h3 class="header"><?php echo $text_extra; ?> <i class="icon-caret-down"></i></h3>
								<ul class="content">
									<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
									<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                                    <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
								</ul>
						</div>
								
								
							<div class="span4">

								<div class="follow-us">

									<div class="inner">

										<?php if($this->config->get('clearshop_status') == 1) { ?>

											<?php if(($this->config->get('clearshop_facebook_page') != '') && ($this->config->get('clearshop_facebook_button') == 1)) { ?>
											
												<div id="fb-root"></div>
												<script>(function(d, s, id) {
												  var js, fjs = d.getElementsByTagName(s)[0];
												  if (d.getElementById(id)) return;
												  js = d.createElement(s); js.id = id;
												  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=416143608416035";
												  fjs.parentNode.insertBefore(js, fjs);
												}(document, 'script', 'facebook-jssdk'));</script>

												<div class="fb-like-box" data-href="https://www.facebook.com/<?php echo $this->config->get('clearshop_facebook_page'); ?>" data-width="290" data-height="260" data-show-faces="true" data-stream="false" <?php if ($this->config->get('clearshop_skins') == 'black') { ?>data-colorscheme="dark"<?php } ?> data-show-border="false" data-header="false"></div>

											<?php } ?>
										
										<?php } ?>

									</div>

								</div>

							</div>

						</div>
					</div>

				</div>
			</section>

		

			<footer id="footend">

				<div class="container">

					<div class="row-fluid">

					<?php if($this->config->get('clearshop_status')== 1) { ?>
						<?php if($this->config->get('clearshop_copyright') != '') { ?>
							<div id="copy"><?php echo html_entity_decode($this->config->get('clearshop_copyright'), ENT_QUOTES, 'UTF-8'); ?></div>
						<?php } else { ?>
							
							<div id="copy"><?php echo $this->config->get('config_name'); ?> &copy;2012. Powered by <a class="blue" href="http://www.opencart.com">OpenCart</a>.</div>
						<?php } ?>
					<?php } else { ?>
						<div id="copy"><?php echo $this->config->get('config_name'); ?> &copy;2012. Powered by <a class="blue" href="http://www.opencart.com">OpenCart</a><br /><a href="http://www.everthemes.com">SELLEGANCE</a> by <a href="http://www.everthemes.com">EVERTHEMES.COM</a>.</div>
					<?php } ?>

					</div> <!-- .row-fluid -->

				</div> <!-- .container -->

			</footer> <!-- #footend -->

		 </div> <!-- #supercontainer -->
		
        
        
		<?php $js_path="catalog/view/theme/clearshop/js"; ?>

		<script type="text/javascript" src="<?php echo $js_path; ?>/bootstrap.min.js"></script>
		<!--[if lt IE 9]> <script type="text/javascript" src="<?php echo $js_path; ?>/selectivizr.min.js"></script> <![endif]-->
		<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
		<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.total-storage.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/respond.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.validate.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.easing-1.3.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.flexslider.min.js"></script>
		<?php if ($this->config->get('clearshop_slider') == 'camera') { ?>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.mobile.customized.min.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/camera.min.js"></script>
		<?php } ?>
		<script type="text/javascript" src="<?php echo $js_path; ?>/jquery.ui.totop.js"></script>
		<script type="text/javascript" src="<?php echo $js_path; ?>/custom.js"></script>

		<?php if ($this->config->get('clearshop_custom_js') != '') { 
			echo htmlspecialchars_decode( $this->config->get('clearshop_custom_js'), ENT_QUOTES );
		}  ?>

		<script type="text/javascript">

		

		<?php if ($this->config->get('clearshop_category_style') == 'list') { ?>
			if (view) {	display(view);	}
			else { display('list'); }
		<?php } else { ?>
			if (view=='list') {	display(view); }
		<?php } ?>
		</script>
		<!-- Yandex.Metrika counter --><script type="text/javascript">(function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter23121835 = new Ya.Metrika({id:23121835, webvisor:true, clickmap:true, trackLinks:true, accurateTrackBounce:true}); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks");</script><noscript><div><img src="//mc.yandex.ru/watch/23121835" style="position:absolute; left:-9999px;" alt="" /></div></noscript><!-- /Yandex.Metrika counter -->q
	</body>

</html>