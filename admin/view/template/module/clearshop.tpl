<?php echo $header; ?>

<?php 
	
	$fonts = array(
		'Arial'                 => 'Arial',
		'Verdana'               => 'Verdana',
		'Helvetica'             => 'Helvetica',
		'Lucida+Grande'         => 'Lucida Grande',
		'Trebuchet+MS'          => 'Trebuchet MS',
		'Times+New+Roman'       => 'Times New Roman',
		'Tahoma'                => 'Tahoma',
		'Georgia'               => 'Georgia',
		''                      => '-- GOOGLE FONTS --',
		'Abel'                  => 'Abel',
		'Abril+Fatface'         => 'Abril Fatface',
		'Acme'                  => 'Acme',
		'Adamina'               => 'Adamina',
		'Advent+Pro'            => 'Advent Pro',
		'Alfa+Slab+One'         => 'Alfa Slab One',
		'Alice'                 => 'Alice',
		'Allan'                 => 'Allan',
		'Amaranth'              => 'Amaranth',
		'Amatic+SC'             => 'Amatic SC',
		'Andika'                => 'Andika',
		'Anonymous+Pro'         => 'Anonymous Pro',
		'Anton'                 => 'Anton',
		'Arimo'                 => 'Arimo',
		'Bangers'               => 'Bangers',
		'Basic'                 => 'Basic',
		'Baumans'               => 'Baumans',
		'Belgrano'              => 'Belgrano',
		'Berkshire+Swash'       => 'Berkshire Swash',
		'Bitter'                => 'Bitter',
		'Boogaloo'              => 'Boogaloo',
		'Brawler'               => 'Brawler',
		'Bree+Serif'            => 'Bree Serif',
		'Bubblegum+Sans'        => 'Bubblegum Sans',
		'Buda'                  => 'Buda',
		'Cabin+Condensed'       => 'Cabin Condensed',
		'Cabin+Sketch'          => 'Cabin Sketch',
		'Caudex'                => 'Caudex',
		'Comfortaa'             => 'Comfortaa',
		'Contrail+One'          => 'Contrail One',
		'Courgette'             => 'Courgette',
		'Coustard'              => 'Coustard',
		'Crushed'               => 'Crushed',
		'Cuprum'                => 'Cuprum',
		'Damion'                => 'Damion',
		'Days+One'              => 'Days One',
		'Dorsa'                 => 'Dorsa',
		'Droid+Sans'            => 'Droid Sans',
		'Droid+Serif'           => 'Droid Serif',
		'Duru+Sans'             => 'Duru Sans',
		'Enriqueta'             => 'Enriqueta',
		'Federo'                => 'Federo',
		'Francois+One'          => 'Francois One',
		'Fredericka+the+Great'  => 'Fredericka the Great',
		'Fredoka+One'           => 'Fredoka One',
		'Goudy+Bookletter+1911' => 'Goudy Bookletter 1911',
		'Gruppo'                => 'Gruppo',
		'Homenaje'              => 'Homenaje',
		'Imprima'               => 'Imprima',
		'Inder'                 => 'Inder',
		'Istok+Web'             => 'Istok Web',
		'Jockey+One'            => 'Jockey One',
		'Josefin+Slab'          => 'Josefin Slab',
		'Just+Another+Hand'     => 'Just Another Hand',
		'Kaushan+Script'        => 'Kaushan Script',
		'Kotta+One'             => 'Kotta One',
		'Lemon'                 => 'Lemon',
		'Lobster+Two'           => 'Lobster Two',
		'Lobster'               => 'Lobster',
		'Maiden+Orange'         => 'Maiden Orange',
		'Marvel'                => 'Marvel',
		'Merienda+One'          => 'Merienda One',
		'Molengo'               => 'Molengo',
		'Montserrat'            => 'Montserrat',
		'News+Cycle'            => 'News Cycle',
		'Niconne'               => 'Niconne',
		'Nixie+One'             => 'Nixie One',
		'Nobile'                => 'Nobile',
		'Oleo+Script'           => 'Oleo Script',
		'Open+Sans'             => 'Open Sans',
		'Overlock'              => 'Overlock',
		'Ovo'                   => 'Ovo',
		'PT+Sans'               => 'PT Sans',
		'Philosopher'           => 'Philosopher',
		'Playball'              => 'Playball',
		'Poiret+One'            => 'Poiret One',
		'Quando'                => 'Quando',
		'Quattrocento+Sans'     => 'Quattrocento Sans',
		'Quicksand'             => 'Quicksand',
		'Raleway'               => 'Raleway',
		'Righteous'             => 'Righteous',
		'Rokkitt'               => 'Rokkitt',
		'Ropa+Sans'             => 'Ropa Sans',
		'Sansita+One'           => 'Sansita One',
		'Sofia'                 => 'Sofia',
		'Source+Sans+Pro'       => 'Source Sans Pro',
		'Stoke'                 => 'Stoke',
		'Ubuntu'                => 'Ubuntu',
		'Wire+One'              => 'Wire One',
		'Yanone+Kaffeesatz'     => 'Yanone Kaffeesatz',
		'Yellowtail'            => 'Yellowtail'
		); 
	
	$skins = array(
		''       => 'Default',
		'ribbon' => 'Ribbon',
		'boxed'  => 'Boxed',
		'black'  => 'Black'
	);

	$sliders = array(
		'flexslider' => 'Flexslider',
		'nivoslider' => 'Nivo Slider',
		'camera'     => 'Camera Slideshow'
	);

	$product_details = array(
		'tabs'      => 'Tabs',
		'accordion' => 'Accordion'
	);

	$product_columns = array(
		'3' => '3',
		'4' => '4'
	);

	$sidebars_width = array(
		'3' => 'Normal',
		'2' => 'Narrow'
	);

	$product_layouts = array(
		'1' => '2 columns',
		'2' => '3 columns',
		'3' => 'full width'
	);

	$layouts = array(
		'normal' => 'Responsive normal (960px)',
		'large'  => 'Responsive large (>1200px)',
		'fixed'  => 'No Responsive'
	);
	$zoom = array(
		'right'  => 'Right',
		'inside' => 'Inside'
	);

	$category_style = array(
		'grid' => 'Grid',
		'list' => 'List'
	);

	$logo_position = array(
		'left'   => 'Left',
		'center' => 'Center'
	);

	$searchbox_position = array(
		'top' => 'Top header',
		'navbar' => 'On navigation bar'
	);

	$mobile_menu = array(
		'bootstrap'  => 'Bootstrap',
		'selectbox' => 'Select box'
	);

	$prevnext_style = array(
		'full'    => 'Full',
		'compact' => 'Compact'
	);


/* Default values */

	if(empty($clearshop_slider_speed)) $clearshop_slider_speed                       = "5000";
	if(empty($clearshop_slider_transition_time)) $clearshop_slider_transition_time   = "900";

	if(empty($clearshop_title_font)) $clearshop_title_font                           = "Open+Sans";
	if(empty($clearshop_body_font)) $clearshop_body_font                             = "Open+Sans";
	if(empty($clearshop_small_font)) $clearshop_small_font                           = "Open+Sans";

	if(empty($clearshop_title_font_size)) $clearshop_title_font_size                 = "35";
	if(empty($clearshop_body_font_size)) $clearshop_body_font_size                   = "13";
	if(empty($clearshop_small_font_size)) $clearshop_small_font_size                 = "11";

	if(empty($clearshop_pattern_overlay)) $clearshop_pattern_overlay                 = "5";

	if(empty($clearshop_zoom_width)) $clearshop_zoom_width                           = "360";
	if(empty($clearshop_zoom_height)) $clearshop_zoom_height                         = "360";

/* Header */

	if(empty($clearshop_menu_color)) $clearshop_menu_color                           = "333333";
	if(empty($clearshop_menu_hover)) $clearshop_menu_hover                           = "D14836";

	if(empty($clearshop_dropdown_color)) $clearshop_dropdown_color                   = "333333";
	if(empty($clearshop_dropdown_hover)) $clearshop_dropdown_hover                   = "555555";

	if(empty($clearshop_cart_count_background)) $clearshop_cart_count_background     = "DD4B39";
	if(empty($clearshop_cart_count_color)) $clearshop_cart_count_color               = "FFFFFF";
	if(empty($clearshop_cart_total_color)) $clearshop_cart_total_color               = "000000";

	
	if(empty($clearshop_thickbar_color)) $clearshop_thickbar_color                   = "DD4B39";

/* Body */

	if(empty($clearshop_background_color)) $clearshop_background_color               = "FFFFFF";
	if(empty($clearshop_title_color)) $clearshop_title_color                         = "333333";
	if(empty($clearshop_bodytext_color)) $clearshop_bodytext_color                   = "777777";
	if(empty($clearshop_lighttext_color)) $clearshop_lighttext_color                 = "BBBBBB";
	if(empty($clearshop_content_links_color)) $clearshop_content_links_color         = "333333";

/* Footer */

	if(empty($clearshop_footer_text_color)) $clearshop_footer_text_color             = "555555";
	if(empty($clearshop_footer_links_color)) $clearshop_footer_links_color           = "999999";

/* Add to cart buttons */

	if(empty($clearshop_button_top_color)) $clearshop_button_top_color               = "DD4B39";
	if(empty($clearshop_button_bottom_color)) $clearshop_button_bottom_color         = "D14836";
	if(empty($clearshop_button_border_color)) $clearshop_button_border_color         = "C53727";
	if(empty($clearshop_button_text_color)) $clearshop_button_text_color             = "FFFFFF";

/* Secondary buttons */

	if(empty($clearshop_2button_top_color)) $clearshop_2button_top_color             = "505050";
	if(empty($clearshop_2button_bottom_color)) $clearshop_2button_bottom_color       = "191919";
	if(empty($clearshop_2button_border_color)) $clearshop_2button_border_color       = "373737";
	if(empty($clearshop_2button_text_color)) $clearshop_2button_text_color           = "FFFFFF";

/* Products */

	if(empty($clearshop_product_name_color)) $clearshop_product_name_color           = "333333";
	if(empty($clearshop_normal_price_color)) $clearshop_normal_price_color           = "555555";
	if(empty($clearshop_old_price_color)) $clearshop_old_price_color                 = "999999";
	if(empty($clearshop_new_price_color)) $clearshop_new_price_color                 = "FF0000";

/* On sale */

	if(empty($clearshop_onsale_background_color)) $clearshop_onsale_background_color = "D9293B";
	if(empty($clearshop_onsale_text_color)) $clearshop_onsale_text_color             = "FFFFFF";

/* Other */

	if(empty($clearshop_categories_menu_color)) $clearshop_categories_menu_color     = "333333";
	if(empty($clearshop_categories_sub_color)) $clearshop_categories_sub_color       = "555555";
	if(empty($clearshop_categories_active_color)) $clearshop_categories_active_color = "000000";

	if(empty($clearshop_category_box_background)) $clearshop_category_box_background = "F9F9F9";
	if(empty($clearshop_category_box_border)) $clearshop_category_box_border         = "FFFFFF";

/* Switches */

	(!isset($clearshop_subcat_status)) ? $clearshop_subcat_status               = 1 : '';
	(!isset($clearshop_display_cart_button)) ? $clearshop_display_cart_button   = 0 : '';
	(!isset($clearshop_zoom_autosize)) ? $clearshop_zoom_autosize               = 1 : '';
	(!isset($clearshop_toggle_sidebar)) ? $clearshop_toggle_sidebar             = 1 : '';
	(!isset($clearshop_show_wishlist)) ? $clearshop_show_wishlist               = 1 : '';
	(!isset($clearshop_show_compare)) ? $clearshop_show_compare                 = 1 : '';
	(!isset($clearshop_show_sale_bubble)) ? $clearshop_show_sale_bubble         = 1 : '';

	(!isset($clearshop_quickview_categories)) ? $clearshop_quickview_categories = 1 : '';
	(!isset($clearshop_quickview_modules)) ? $clearshop_quickview_modules       = 1 : '';
	(!isset($clearshop_quickview_zoom)) ? $clearshop_quickview_zoom             = 0 : '';


	(!isset($clearshop_searchbox)) ? $clearshop_searchbox                       = 1 : '';

?>

<style type="text/css">
	.box>.content h2 { border-bottom: 0; }
	.customhelp { color: #777; font-size:0.9em; }
	.hey {color: #ff0000;}
	.color { border: 1px solid #AAA; }
	.pttrn {
		width:32px; 
		display: inline-block;
		text-align: center;
	}
	.small_field { width: 40px; }
	.large_field { width: 330px; }
	.slideitem { padding: 10px 25px; }
	.status {
		width:48px;
		height:18px;
		float: left;
		cursor:pointer;
	}
	.status-on { background:url(view/image/on.png) top left no-repeat; }
	.status-off { background:url(view/image/off.png) top left no-repeat; }
	.contentset {
		margin: 22px 0 12px;
		text-align:left;
		padding-left: 10px;
		text-transform:uppercase;
		color:#000;
		border-top:1px solid #DDD;
	}
		.contentset.center { text-align:center; padding:0; }
			.contentset .inner { margin: -0.8em auto 0; font-weight: normal; font-size: 1em; }
			.contentset span { background:#FFF; padding: 0 12px; color: #5fbf00; }
	code { background: #f2f2f2; padding: 0 3px; color: #444;}

	#title_font_preview {
		font-size: <?php echo $clearshop_title_font_size; ?>px; 
		font-family: "<?php echo str_replace("+", " ", $clearshop_title_font); ?>";
	}
	#body_font_preview {
		font-size: <?php echo $clearshop_body_font_size; ?>px; 
		font-family: "<?php echo str_replace("+", " ", $clearshop_body_font); ?>";
	}
	#small_font_preview {
		font-size: <?php echo $clearshop_small_font_size; ?>px; 
		font-family: "<?php echo str_replace("+", " ", $clearshop_small_font); ?>";
	}
	#title_font_preview,
	#body_font_preview,
	#small_font_preview {
		padding: 6px 12px;
		background: #fefddf;
	}

</style>

<div id="content">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>

<div class="box">

	<div class="heading">
		<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
		<div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
	</div>

	<div class="content">

	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

		<table class="form">
			<tr>
				<td><?php echo $entry_status; ?><br>
				<span class="customhelp"><?php echo $theme_version; ?></span></td>
				<td>
					<?php if($clearshop_status == 1) { echo '<div class="status status-on" title="1" rel="clearshop_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_status"></div>'; } ?>
					<input name="clearshop_status" value="<?php echo $clearshop_status; ?>" id="clearshop_status" type="hidden" />
					</td>
				</td>
			</tr>

		</table>

		<div id="settings_tabs" class="htabs clearfix">
			<a href="#layout_settings"><?php echo $entry_tab_layout; ?></a>
			<a href="#backgrounds_settings"><?php echo $entry_tab_backgrounds; ?></a>
			<a href="#colors_settings"><?php echo $entry_tab_colors; ?></a>
			<a href="#fonts_settings"><?php echo $entry_tab_fonts; ?></a>
			<a href="#effects_settings"><?php echo $entry_tab_effects; ?></a>
			<a href="#header_settings"><?php echo $entry_tab_header; ?></a>
			<a href="#footer_settings"><?php echo $entry_tab_footer; ?></a>
			<a href="#custom_code_settings"><?php echo $entry_tab_custom_code; ?></a>
		</div>

		<div id="layout_settings" class="divtab">

			<div class="vtabs">
				<a href="#general-layout"><?php echo $entry_layout_sub; ?></a>
				<a href="#category-layout"><?php echo $entry_category_layout_sub; ?></a>
				<a href="#product-layout"><?php echo $entry_product_layout_sub; ?></a>
				<a href="#quickview-layout"><?php echo $entry_quickview_layout_sub; ?></a>
				<a href="#extras-layout"><?php echo $entry_extras_sub; ?></a>
			</div>

			<div class="vtabs-content">
				<div id="general-layout">
					<table class="form">
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_layout_sub; ?></h3>
								<span class="customhelp"><?php echo $entry_layout_sub_help; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_main_layout; ?></td>
							<td>
								<select name="clearshop_main_layout">
									<?php foreach ($layouts as $fv => $fc) { ?>
										<?php ($fv ==  $this->config->get('clearshop_main_layout')) ? $current = 'selected' : $current='3'; ?>
										<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
									<?php } ?>
								</select><br />
								<span class="customhelp"><?php echo $entry_main_layout_help; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_sidebars_width; ?></td>
							<td>
								<span class="customhelp">Left:</span>
								<select name="clearshop_sidebar_left_width">
									<?php foreach ($sidebars_width as $fv => $fc) { ?>
										<?php ($fv ==  $this->config->get('clearshop_sidebar_left_width')) ? $current = 'selected' : $current='3'; ?>
										<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
									<?php } ?>
								</select>

								<span class="customhelp">Right:</span>
								<select name="clearshop_sidebar_right_width">
									<?php foreach ($sidebars_width as $fv => $fc) { ?>
										<?php ($fv ==  $this->config->get('clearshop_sidebar_right_width')) ? $current = 'selected' : $current='3'; ?>
										<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
									<?php } ?>
								</select>

							</td>
						</tr>

					</table>
				</div>

				<div id="category-layout">
					<table class="form">
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_category_layout_sub; ?></h3>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_category_style; ?></td>
							<td>
								<select name="clearshop_category_style">
									<?php foreach ($category_style as $fv => $fc) { ?>
										<?php ($fv ==  $this->config->get('clearshop_category_style')) ? $current = 'selected' : $current='3'; ?>
										<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
									<?php } ?>
								</select>
								<span class="customhelp"><?php echo $entry_category_style_help; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_product_columns; ?></td>
							<td>
								<select name="clearshop_product_columns">
									<?php foreach ($product_columns as $fv => $fc) { ?>
										<?php ($fv ==  $this->config->get('clearshop_product_columns')) ? $current = 'selected' : $current='3'; ?>
										<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
									<?php } ?>
								</select>
								<span class="customhelp"><?php echo $entry_product_columns_help; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_display_cart_button; ?></td>
							<td>
								<?php if($clearshop_display_cart_button == 1) { echo '<div class="status status-on" title="1" rel="clearshop_display_cart_button"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_display_cart_button"></div>'; } ?>
								<input name="clearshop_display_cart_button" value="<?php echo $clearshop_display_cart_button; ?>" id="clearshop_display_cart_button" type="hidden" />

								<span class="customhelp"><?php echo $entry_cart_button_sub_help; ?></span>
							</td>
						</tr>
						
						<?php 
							$subcat_thumb = 0;
							if ($subcat_thumb == 1) { 
						?>

						<tr>
							<td colspan="2"><h3><?php echo $entry_subcategory; ?></h3></td>
						</tr>
						<tr>
							<td>
								<?php echo $entry_subcategory_show; ?>
							</td>
							<td>
								<?php if($clearshop_subcat_status == 1) { echo '<div class="status status-on" title="1" rel="clearshop_subcat_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_subcat_status"></div>'; } ?>
								<input name="clearshop_subcat_status" value="<?php echo $clearshop_subcat_status; ?>" id="clearshop_subcat_status" type="hidden" />
							</td>
						</tr>
						<tr>
							<td>
								<?php echo $entry_subcategory_thumb_show; ?>
							</td>
							<td>
								<?php if($clearshop_subcat_thumbnails_status == 1) { echo '<div class="status status-on" title="1" rel="clearshop_subcat_thumbnails_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_subcat_thumbnails_status"></div>'; } ?>
								<input name="clearshop_subcat_thumbnails_status" value="<?php echo $clearshop_subcat_thumbnails_status; ?>" id="clearshop_subcat_thumbnails_status" type="hidden" />
							</td>
						</tr>

						<tr>
							<td>
								<?php echo $entry_subcategory_thumb_size; ?>
							</td>
							<td>
								<span class="customhelp"><?php echo $entry_width_caption; ?></span>
								<input type="text" name="clearshop_subcat_thumb_width" value="<?php echo isset($clearshop_subcat_thumb_width) ? $clearshop_subcat_thumb_width : '62'; ?>" class="small_field" /> <span class="customhelp">px,</span> &nbsp;&nbsp;&nbsp;

								<span class="customhelp"><?php echo $entry_height_caption; ?></span>
								<input type="text" name="clearshop_subcat_thumb_height" value="<?php echo isset($clearshop_subcat_thumb_height) ? $clearshop_subcat_thumb_height : '62'; ?>" class="small_field" /> <span class="customhelp">px</span>
							</td>
						</tr>
						<?php } ?>
					</table>
				</div>

				<div id="product-layout">
					<table class="form">
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_product_layout_sub; ?></h3>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_product_layout; ?></td>
							<td>
								<select name="clearshop_product_layout">
									<?php foreach ($product_layouts as $fv => $fc) { ?>
										<?php ($fv ==  $this->config->get('clearshop_product_layout')) ? $current = 'selected' : $current='3'; ?>
										<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
									<?php } ?>
								</select> <br>
								<span class="customhelp"><?php echo $entry_product_layout_help; ?></span>
							</td>
						</tr>

						<tr>
							<td colspan="2">
								<h3><?php echo $entry_zoom_sub; ?></h3>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_cloud_zoom; ?></td>
							<td>
								<?php if($clearshop_cloud_zoom == 1) { echo '<div class="status status-on" title="1" rel="clearshop_cloud_zoom"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_cloud_zoom"></div>'; } ?>
								<input name="clearshop_cloud_zoom" value="<?php echo $clearshop_cloud_zoom; ?>" id="clearshop_cloud_zoom" type="hidden" />

								<span class="customhelp"><?php echo $entry_cloud_zoom_help; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_zoom_position; ?></td>
							<td>
								<select name="clearshop_zoom_position">
									<?php foreach ($zoom as $fv => $fc) { ?>
										<?php ($fv ==  $this->config->get('clearshop_zoom_position')) ? $current = 'selected' : $current=''; ?>
										<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
									<?php } ?>
								</select>

								<span class="customhelp"><?php echo $entry_zoom_position_help; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_zoom_size; ?></td>
							<td>
								<span class="customhelp"><?php echo $entry_width_caption; ?></span>
								<input type="text" name="clearshop_zoom_width" value="<?php echo $clearshop_zoom_width; ?>" size="6" />
								<span class="customhelp"><?php echo $entry_height_caption; ?></span> <input type="text" name="clearshop_zoom_height" value="<?php echo $clearshop_zoom_height; ?>" size="6" />

								<table>
									<tr>
										<td><?php if($clearshop_zoom_autosize == 1) { echo '<div class="status status-on" title="1" rel="clearshop_zoom_autosize"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_zoom_autosize"></div>'; } ?>
											<input name="clearshop_zoom_autosize" value="<?php echo $clearshop_zoom_autosize; ?>" id="clearshop_zoom_autosize" type="hidden" /></td>
										<td><span><?php echo $entry_zoom_auto; ?></span></td>
									</tr>
								</table>

							</td>
						</tr>

						<tr>
							<td colspan="2">
								<h3><?php echo $entry_prevnext_sub; ?></h3>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_prevnext; ?></td>
							<td>
								<select name="clearshop_prevnext_mode">
									<?php foreach ($prevnext_style as $fv => $fc) { ?>
										<?php ($fv ==  $this->config->get('clearshop_prevnext_mode')) ? $current = 'selected' : $current=''; ?>
										<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
									<?php } ?>
								</select>
								
							</td>
						</tr>

					</table>
				</div>

			<!-- Quick View -->

				<div id="quickview-layout">
					<table class="form">
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_quickview_layout_sub; ?></h3>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_quickview_categories; ?></td>
							<td>
								<?php if($clearshop_quickview_categories == 1) { echo '<div class="status status-on" title="1" rel="clearshop_quickview_categories"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_quickview_categories"></div>'; } ?>
								<input name="clearshop_quickview_categories" value="<?php echo $clearshop_quickview_categories; ?>" id="clearshop_quickview_categories" type="hidden" />

							</td>
						</tr>

						<tr>
							<td><?php echo $entry_quickview_modules; ?></td>
							<td>
								<?php if($clearshop_quickview_modules == 1) { echo '<div class="status status-on" title="1" rel="clearshop_quickview_modules"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_quickview_modules"></div>'; } ?>
								<input name="clearshop_quickview_modules" value="<?php echo $clearshop_quickview_modules; ?>" id="clearshop_quickview_modules" type="hidden" />

								<span class="customhelp"><?php echo $entry_quickview_help; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_quickview_zoom; ?></td>
							<td>
								<?php if($clearshop_quickview_zoom == 1) { echo '<div class="status status-on" title="1" rel="clearshop_quickview_zoom"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_quickview_zoom"></div>'; } ?>
								<input name="clearshop_quickview_zoom" value="<?php echo $clearshop_quickview_zoom; ?>" id="clearshop_quickview_zoom" type="hidden" />

							</td>
						</tr>

					</table>
				</div>

				<div id="extras-layout">
					<table class="form">
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_extras_sub; ?></h3>
							</td>
						</tr>
						
						<tr>
							<td><?php echo $entry_toggle_sidebar; ?></td>
							<td>
								<?php if($clearshop_toggle_sidebar == 1) { echo '<div class="status status-on" title="1" rel="clearshop_toggle_sidebar"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_toggle_sidebar"></div>'; } ?>
								<input name="clearshop_toggle_sidebar" value="<?php echo $clearshop_toggle_sidebar; ?>" id="clearshop_toggle_sidebar" type="hidden" />

								<span class="customhelp"><?php echo $entry_toggle_sidebar_label; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_wishlist; ?></td>
							<td>
								<?php if($clearshop_show_wishlist == 1) { echo '<div class="status status-on" title="1" rel="clearshop_show_wishlist"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_show_wishlist"></div>'; } ?>
								<input name="clearshop_show_wishlist" value="<?php echo $clearshop_show_wishlist; ?>" id="clearshop_show_wishlist" type="hidden" />
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_compare; ?></td>
							<td>
								<?php if($clearshop_show_compare == 1) { echo '<div class="status status-on" title="1" rel="clearshop_show_compare"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_show_compare"></div>'; } ?>
								<input name="clearshop_show_compare" value="<?php echo $clearshop_show_compare; ?>" id="clearshop_show_compare" type="hidden" />

							</td>
						</tr>

						<tr>
							<td><?php echo $entry_sale_bubble; ?></td>
							<td>
								<?php if($clearshop_show_sale_bubble == 1) { echo '<div class="status status-on" title="1" rel="clearshop_show_sale_bubble"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_show_sale_bubble"></div>'; } ?>
								<input name="clearshop_show_sale_bubble" value="<?php echo $clearshop_show_sale_bubble; ?>" id="clearshop_show_sale_bubble" type="hidden" />

							</td>
						</tr>

						
					</table>
				</div>

			</div>

		</div>

		<div id="backgrounds_settings" class="divtab">
			<table class="form">

				<tr>
					<td colspan="2">
						<h3><?php echo $entry_skins_sub; ?></h3>
						<span class="customhelp"><?php echo $entry_skins_sub_help; ?></span>
					</td>
				</tr>
				<tr>
					<td><?php echo $entry_skin; ?></td>
					<td>
						<select name="clearshop_skins">
							<?php foreach ($skins as $sv => $sc) { ?>
								<?php ($sv ==  $this->config->get('clearshop_skins')) ? $currentskin = 'selected' : $currentskin=''; ?>
								<option value="<?php echo $sv; ?>" <?php echo $currentskin; ?> ><?php echo $sc; ?></option>	
							<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_skin_help; ?></span>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<h3><?php echo $entry_pattern_sub; ?></h3>
					</td>
				</tr>

				<tr>
					<td><?php echo $entry_pattern_overlay; ?></td>
					<td>
						<div>
							<?php for ($i = 1; $i <= 42; $i++) { ?>
								<div class="pttrn"><span class="customhelp"><?php echo $i; ?></span><img src="view/image/patterns/<?php echo $i; ?>.png" alt="pattern <?php echo $i; ?>"></div>
								<?php if(!($i%14)): ?>
									<br />
								<?php endif ?>
							<?php } ?>
						</div> <br />
						<select name="clearshop_pattern_overlay">
							<option value="none"selected="selected">none</option>
							<?php for ($i = 1; $i <= 42; $i++) { 
									($clearshop_pattern_overlay == $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_pattern_overlay_help; ?></span>
					</td>
				</tr>
				
				<tr>
					<td><?php echo $entry_custom_pattern; ?></td>
					<td>
						<input type="hidden" name="clearshop_custom_pattern" value="<?php echo $clearshop_custom_pattern; ?>" id="clearshop_custom_pattern" />
						<img src="<?php echo $clearshop_pattern_preview; ?>" id="clearshop_pattern_preview" />
						<br /><a onclick="image_upload('clearshop_custom_pattern', 'clearshop_pattern_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#clearshop_pattern_preview').attr('src', '<?php echo $no_image; ?>'); $('#clearshop_custom_pattern').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
				</tr>

				<tr>
					<td>
						<?php echo $entry_custom_image; ?> <br />
						<span class="customhelp"><?php echo $entry_custom_image_help; ?></span>
					</td>
					<td>
						<input type="hidden" name="clearshop_custom_image" value="<?php echo $clearshop_custom_image; ?>" id="clearshop_custom_image" />
						<img src="<?php echo $clearshop_image_preview; ?>" alt="" id="clearshop_image_preview" />
						<br /><a onclick="image_upload('clearshop_custom_image', 'clearshop_image_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#clearshop_image_preview').attr('src', '<?php echo $no_image; ?>'); $('#clearshop_custom_image').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
				</tr>

				<tr>
					<td>
						<?php echo $entry_full_background; ?> <br />
					</td>
					<td>
						<?php if($clearshop_full_background == 1) { echo '<div class="status status-on" title="1" rel="clearshop_full_background"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_full_background"></div>'; } ?>
						<input name="clearshop_full_background" value="<?php echo $clearshop_full_background; ?>" id="clearshop_full_background" type="hidden" />

						<span class="customhelp"><?php echo $entry_full_background_help; ?></span>
				</tr>

			</table>
		</div>

		<div id="colors_settings" class="divtab">
			<table class="form">

				<tr>
					<td colspan="2">
						<h3><?php echo $entry_colors_sub; ?></h3>
						
					</td>
				</tr>

				<tr>
					<td><?php echo $entry_custom_colors_help; ?></td>
					<td>
						<?php if($clearshop_custom_colors == 1) { echo '<div class="status status-on" title="1" rel="clearshop_custom_colors"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_custom_colors"></div>'; } ?>
						<input name="clearshop_custom_colors" value="<?php echo $clearshop_custom_colors; ?>" id="clearshop_custom_colors" type="hidden" />
						<span class="customhelp"><?php echo $entry_colors_sub_help; ?></span>
					</td>
				</tr>

			</table>
			<div class="vtabs">
				<a href="#colors-header"><?php echo $entry_header_bold; ?></a>
				<a href="#colors-body"><?php echo $entry_body_bold; ?></a>
				<a href="#colors-footer"><?php echo $entry_footer_bold; ?></a>
				<a href="#colors-buttons"><?php echo $entry_buttons_bold; ?></a>
				<a href="#colors-products"><?php echo $entry_products_bold; ?></a>
				<a href="#colors-other"><?php echo $entry_other_bold; ?></a>
			</div>
			<div class="vtabs-content">
				<div id="colors-header">
					<table class="form">

						<tr>
							<td><?php echo $entry_thickbar_color; ?></td>
							<td><input type="text" name="clearshop_thickbar_color" value="<?php echo $clearshop_thickbar_color; ?>" size="6" class="color {required:false,hash:true}"  />
							<span class="customhelp"><?php echo $entry_thickbar_color_help; ?></span>
							</td>
						</tr>

						<tr>
							<td colspan="2"><h3><?php echo $entry_menu_sub; ?></h3></td>
						</tr>

						<tr>
							<td><?php echo $entry_menu_color; ?></td>
							<td>
								<span class="customhelp"><?php echo $entry_links_caption; ?></span>
								<input type="text" name="clearshop_menu_color" value="<?php echo $clearshop_menu_color; ?>" size="6" class="color {required:false,hash:true}"  />
								<span class="customhelp"><?php echo $entry_hover_caption; ?></span> <input type="text" name="clearshop_menu_hover" value="<?php echo $clearshop_menu_hover; ?>" size="6" class="color {required:false,hash:true}" />
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_dropdown_color; ?></td>
							<td>
								<span class="customhelp"><?php echo $entry_links_caption; ?></span>
								<input type="text" name="clearshop_dropdown_color" value="<?php echo $clearshop_dropdown_color; ?>" size="6" class="color {required:false,hash:true}"  />
								<span class="customhelp"><?php echo $entry_hover_caption; ?></span> <input type="text" name="clearshop_dropdown_hover" value="<?php echo $clearshop_dropdown_hover; ?>" size="6" class="color {required:false,hash:true}" />
							</td>
						</tr>

						<tr>
							<td colspan="2"><h3><?php echo $entry_minicart_sub; ?></h3></td>
						</tr>

						<tr>
							<td><?php echo $entry_cart_count; ?></td>
							<td>
								<span class="customhelp"><?php echo $entry_background_caption; ?></span>
								<input type="text" name="clearshop_cart_count_background" value="<?php echo $clearshop_cart_count_background; ?>" size="6" class="color {required:false,hash:true}"  />
								<span class="customhelp"><?php echo $entry_textcolor_caption; ?></span> <input type="text" name="clearshop_cart_count_color" value="<?php echo $clearshop_cart_count_color; ?>" size="6" class="color {required:false,hash:true}" />
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_cart_total; ?></td>
							<td>
								<span class="customhelp"><?php echo $entry_textcolor_caption; ?></span>
								<input type="text" name="clearshop_cart_total_color" value="<?php echo $clearshop_cart_total_color; ?>" size="6" class="color {required:false,hash:true}" />
							</td>
						</tr>

					</table>
				</div>

				<div id="colors-body">
					<table class="form">
						<tr>
							<td colspan="2"><h3><?php echo $entry_body_bold; ?></h3></td>
						</tr>

						<tr>
							<td><?php echo $entry_background_color; ?></td>
							<td><input type="text" name="clearshop_background_color" value="<?php echo $clearshop_background_color; ?>" size="6" class="color {required:false,hash:true}"  />
							<span class="customhelp"><?php echo $entry_background_color_help; ?></span></td>
						</tr>

						<tr>
							<td><?php echo $entry_title_color; ?></td>
							<td><input type="text" name="clearshop_title_color" value="<?php echo $clearshop_title_color; ?>" size="6" class="color {required:false,hash:true}"  />
								<span class="customhelp"><?php echo $entry_title_color_help; ?></span></td>
						</tr>

						<tr>
							<td><?php echo $entry_textcolor_caption; ?></td>
							<td><input type="text" name="clearshop_bodytext_color" value="<?php echo $clearshop_bodytext_color; ?>" size="6" class="color {required:false,hash:true}"  />
								<span class="customhelp"><?php echo $entry_body_color_help; ?></span></td>
						</tr>

						<tr>
							<td><?php echo $entry_links_caption; ?></td>
							<td><input type="text" name="clearshop_content_links_color" value="<?php echo $clearshop_content_links_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
						</tr>

						<tr>
							<td><?php echo $entry_light_color; ?></td>
							<td><input type="text" name="clearshop_lighttext_color" value="<?php echo $clearshop_lighttext_color; ?>" size="6" class="color {required:false,hash:true}"  />
								<span class="customhelp"><?php echo $entry_light_color_help; ?></span></td>
						</tr>
					</table>
				</div>

				<div id="colors-footer">
					<table class="form">
						<tr>
							<td colspan="2"><h3><?php echo $entry_footer_bold; ?></h3></td>
						</tr>

						<tr>
							<td><?php echo $entry_textcolor_caption; ?></td>
							<td><input type="text" name="clearshop_footer_text_color" value="<?php echo $clearshop_footer_text_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
						</tr>

						<tr>
							<td><?php echo $entry_links_caption; ?></td>
							<td><input type="text" name="clearshop_footer_links_color" value="<?php echo $clearshop_footer_links_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
						</tr>
					</table>
				</div>

				<div id="colors-buttons">
					<table class="form">
						<tr>
							<td colspan="2"><h3><?php echo $entry_buttons_bold; ?></h3></td>
						</tr>

						<tr>
							<td><?php echo $entry_button_color; ?></td>
							<td>
							<span class="customhelp"><?php echo $entry_top_caption; ?></span> <input type="text" name="clearshop_button_top_color" value="<?php echo $clearshop_button_top_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_bottom_caption; ?></span> <input type="text" name="clearshop_button_bottom_color" value="<?php echo $clearshop_button_bottom_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_border_caption; ?></span> <input type="text" name="clearshop_button_border_color" value="<?php echo $clearshop_button_border_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_textcolor_caption; ?></span> <input type="text" name="clearshop_button_text_color" value="<?php echo $clearshop_button_text_color; ?>" size="6" class="color {required:false,hash:true}" />
							</td>
						</tr>

						<tr>
							<td>
								<?php echo $entry_2button_color; ?>
							</td>
							<td>
							<span class="customhelp"><?php echo $entry_top_caption; ?></span> <input type="text" name="clearshop_2button_top_color" value="<?php echo $clearshop_2button_top_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_bottom_caption; ?></span> <input type="text" name="clearshop_2button_bottom_color" value="<?php echo $clearshop_2button_bottom_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_border_caption; ?></span> <input type="text" name="clearshop_2button_border_color" value="<?php echo $clearshop_2button_border_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_textcolor_caption; ?></span> <input type="text" name="clearshop_2button_text_color" value="<?php echo $clearshop_2button_text_color; ?>" size="6" class="color {required:false,hash:true}" />
							</td>
						</tr>
					</table>
				</div>

				<div id="colors-products">
					<table class="form">
						<tr>
							<td colspan="2"><h3><?php echo $entry_products_bold; ?></h3></td>
						</tr>

						<tr>
							<td>
								<?php echo $entry_product_name; ?>
							</td>
							<td>
							<input type="text" name="clearshop_product_name_color" value="<?php echo $clearshop_product_name_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_product_name_help; ?></span>
							</td>
						</tr>

						<tr>
							<td>
								<?php echo $entry_product_price; ?>
							</td>
							<td>
							<span class="customhelp"><?php echo $entry_normal_price; ?></span> <input type="text" name="clearshop_normal_price_color" value="<?php echo $clearshop_normal_price_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_old_price; ?></span> <input type="text" name="clearshop_old_price_color" value="<?php echo $clearshop_old_price_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_promotion_price; ?></span> <input type="text" name="clearshop_new_price_color" value="<?php echo $clearshop_new_price_color; ?>" size="6" class="color {required:false,hash:true}" />
							</td>
						</tr>

						<tr>
							<td>
								<?php echo $entry_onsale_color; ?>
							</td>
							<td>
							<span class="customhelp"><?php echo $entry_background_caption; ?></span> <input type="text" name="clearshop_onsale_background_color" value="<?php echo $clearshop_onsale_background_color; ?>" size="6" class="color {required:false,hash:true}" />
							<span class="customhelp"><?php echo $entry_textcolor_caption; ?></span> <input type="text" name="clearshop_onsale_text_color" value="<?php echo $clearshop_onsale_text_color; ?>" size="6" class="color {required:false,hash:true}" />
							</td>
						</tr>
					</table>
				</div>

				<div id="colors-other">
					<table class="form">
						<tr>
							<td colspan="2"><h3><?php echo $entry_category_list_sub; ?></h3></td>
						</tr>

						<tr>
							<td>
								<?php echo $entry_category_menu; ?>
							</td>
							<td>
								<span class="customhelp"><?php echo $entry_category_top; ?></span> <input type="text" name="clearshop_categories_menu_color" value="<?php echo $clearshop_categories_menu_color; ?>" size="6" class="color {required:false,hash:true}" />
								<span class="customhelp"><?php echo $entry_category_sub; ?></span> <input type="text" name="clearshop_categories_sub_color" value="<?php echo $clearshop_categories_sub_color; ?>" size="6" class="color {required:false,hash:true}" />
								<span class="customhelp"><?php echo $entry_active_caption; ?></span> <input type="text" name="clearshop_categories_active_color" value="<?php echo $clearshop_categories_active_color; ?>" size="6" class="color {required:false,hash:true}" />
							
							</td>
						</tr>
						<tr>
							<td>
								<?php echo $entry_category_background; ?>
							</td>
							<td>
								<span class="customhelp"><?php echo $entry_background_caption; ?></span> <input type="text" name="clearshop_category_box_background" value="<?php echo $clearshop_category_box_background; ?>" size="6" class="color {required:false,hash:true}" />
								<span class="customhelp"><?php echo $entry_border_caption; ?></span> <input type="text" name="clearshop_category_box_border" value="<?php echo $clearshop_category_box_border; ?>" size="6" class="color {required:false,hash:true}" />

							
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>

		<div id="fonts_settings" class="divtab">
		
			<table class="form">

				<tr>
					<td colspan="2">
						<h3><?php echo $entry_fonts_sub; ?></h3>
						<span class="customhelp"><?php echo $entry_fonts_sub_help; ?></span>
					</td>
				</tr>
				
				<tr>
					<td><?php echo $entry_title_font; ?></td>
					<td>
						<select name="clearshop_title_font" id="clearshop_title_font" class="font_select">
							<?php foreach ($fonts as $fv => $fc) { ?>
								<?php ($fv ==  $clearshop_title_font) ? $currentfont = 'selected' : $currentfont=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>

						<span class="customhelp"><?php echo $entry_size_caption; ?></span>

						<select name="clearshop_title_font_size" id="clearshop_title_font_size" class="size_select">
							<?php for ($i = 20; $i <= 48; $i++) { 
									($clearshop_title_font_size == $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>

						<span class="customhelp"><?php echo $entry_title_font_help; ?></span>
					</td>
				</tr>

				<tr>
					<td><span class="customhelp"><?php echo $entry_preview_font; ?></span></td>
					<td>
						<span id="title_font_preview"><?php echo $entry_dummy_text; ?></span>
					</td>
				</tr>

				<tr>
					<td><?php echo $entry_body_font ?></td>
					<td>
						<select name="clearshop_body_font" id="clearshop_body_font" class="font_select">
							<?php foreach ($fonts as $fv => $fc) { ?>
								<?php ($fv ==  $clearshop_body_font) ? $currentfont = 'selected' : $currentfont=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>

						<span class="customhelp"><?php echo $entry_size_caption; ?></span>

						<select name="clearshop_body_font_size" id="clearshop_body_font_size" class="size_select">
							<?php for ($i = 10; $i <= 18; $i++) { 
								($clearshop_body_font_size == $i) ? $currentpat = 'selected' : $currentpat = '';
							?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
							<?php } ?>
						</select>

						<span class="customhelp"><?php echo $entry_body_font_help; ?></span>

					</td>
				</tr>

				<tr>
					<td><span class="customhelp"><?php echo $entry_preview_font; ?></span></td>
					<td>
						<span id="body_font_preview"><?php echo $entry_dummy_text; ?></span>
					</td>
				</tr>

			 	<tr>
					<td><?php echo $entry_small_font; ?></td>
					<td>
						<select name="clearshop_small_font" id="clearshop_small_font" class="font_select">
							<?php foreach ($fonts as $fv => $fc) { ?>
								<?php ($fv == $clearshop_small_font) ? $currentfont = 'selected' : $currentfont=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>

						<span class="customhelp"><?php echo $entry_size_caption; ?></span>

						<select name="clearshop_small_font_size" id="clearshop_small_font_size" class="size_select"> 
							<?php for ($i = 7; $i <= 14; $i++) { 
									($clearshop_small_font_size == $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>

						<span class="customhelp"><?php echo $entry_small_font_help; ?></span>
					</td>
				</tr>

				<tr>
					<td><span class="customhelp"><?php echo $entry_preview_font; ?></span></td>
					<td>
						<span id="small_font_preview"><?php echo $entry_dummy_text; ?></span>
					</td>
				</tr>

				<!-- <tr>
					<td>
					<?php echo $entry_cyrillic; ?>
						
					</td>
					<td>
						<?php if($clearshop_cyrillic == 1) { echo '<div class="status status-on" title="1" rel="clearshop_cyrillic"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_cyrillic"></div>'; } ?>
						<input name="clearshop_cyrillic" value="<?php echo $clearshop_cyrillic; ?>" id="clearshop_cyrillic" type="hidden" />
						<span class="customhelp"><?php echo $entry_cyrillic_help; ?></span>
					</td>
				</tr> -->

			</table>

		</div>

		<div id="effects_settings" class="divtab">

			<div class="vtabs">
				<a href="#effects-slideshow"><?php echo $entry_header_bold; ?></a>
				<a href="#effects-carousel"><?php echo $entry_body_bold; ?></a>
			</div>
			<div class="vtabs-content">
				<div id="effects-slideshow">
					<table class="form">

						<tr>
							<td colspan="2">
								<h3><?php echo $entry_slider_sub; ?></h3>
								<span class="customhelp"><?php echo $entry_slider_note; ?></span>
							</td>
						</tr>
						
						<tr>
							<td><?php echo $entry_slider; ?></td>
							<td>
								<select name="clearshop_slider">
									<?php foreach ($sliders as $slv => $slc) { ?>
										<?php ($slv ==  $clearshop_slider) ? $currentslider = 'selected' : $currentslider='flexslider'; ?>
										<option value="<?php echo $slv; ?>" <?php echo $currentslider; ?> ><?php echo $slc; ?></option>	
									<?php } ?>
								</select>
								<span class="customhelp"><?php echo $entry_slider_help; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_slider_speed; ?></td>
							<td><input type="text" name="clearshop_slider_speed" value="<?php echo $clearshop_slider_speed; ?>" />
							<span class="customhelp"><?php echo $entry_slider_speed_help; ?></span></td>
						</tr>

						<tr>
							<td><?php echo $entry_slider_transition_time; ?></td>
							<td><input type="text" name="clearshop_slider_transition_time" value="<?php echo $clearshop_slider_transition_time; ?>" />
							<span class="customhelp"><?php echo $entry_slider_transition_time_help; ?></span></td>
						</tr>

					</table>

				</div>

				<div id="effects-carousel">

					<table class="form">

						<tr>
							<td colspan="2">
								<h3><?php echo $entry_carousel_sub; ?></h3>
								<span class="customhelp"><?php echo $entry_carousel_sub_help; ?></span>
							</td>
						</tr>
						
						<tr>
							<td><?php echo $entry_featured; ?></td>
							<td>
								<input type="checkbox" name="clearshop_featured_carousel"<?php if ($clearshop_featured_carousel) echo 'checked="checked"';?>>
							</td>
						</tr>
						<tr>
							<td><?php echo $entry_bestseller; ?></td>
							<td>
								<input type="checkbox" name="clearshop_bestseller_carousel"<?php if ($clearshop_bestseller_carousel) echo 'checked="checked"';?>>
							</td>
						</tr>
						<tr>
							<td><?php echo $entry_latest; ?></td>
							<td>
								<input type="checkbox" name="clearshop_latest_carousel"<?php if ($clearshop_latest_carousel) echo 'checked="checked"';?>>
							</td>
						</tr>
						<tr>
							<td><?php echo $entry_special; ?></td>
							<td>
								<input type="checkbox" name="clearshop_special_carousel"<?php if ($clearshop_special_carousel) echo 'checked="checked"';?>>
							</td>
						</tr>
						<tr>
							<td><?php echo $entry_related; ?></td>
							<td>
								<input type="checkbox" name="clearshop_related_carousel"<?php if ($clearshop_related_carousel) echo 'checked="checked"';?>>
							</td>
						</tr>

						<tr>
							<td>
							<?php echo $entry_carousel_autoplay; ?>
								
							</td>
							<td>
								<?php if($clearshop_carousel_autoplay == 1) { echo '<div class="status status-on" title="1" rel="clearshop_carousel_autoplay"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_carousel_autoplay"></div>'; } ?>
								<input name="clearshop_carousel_autoplay" value="<?php echo $clearshop_carousel_autoplay; ?>" id="clearshop_carousel_autoplay" type="hidden" />
								<span class="customhelp"><?php echo $entry_carousel_autoplay_sub_help; ?></span>
							</td>
						</tr>

					</table>

				</div>

			</div>

		</div>

		<div id="header_settings" class="divtab">
		
			<table class="form">

				<tr>
					<td colspan="2">
						<h3><?php echo $entry_header_layout_sub; ?></h3>
					</td>
				</tr>

				<tr>
					<td><?php echo $entry_logo_position; ?></td>
					<td>
						<select name="clearshop_logo_position">
							<?php foreach ($logo_position as $fv => $fc) { ?>
								<?php ($fv ==  $this->config->get('clearshop_logo_position')) ? $current = 'selected' : $current=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_logo_position_help; ?></span>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<h3><?php echo $entry_searchbox_sub; ?></h3>
					</td>
				</tr>

				<tr>
					<td><?php echo $entry_searchbox; ?></td>
					<td><?php if($clearshop_searchbox == 1) { echo '<div class="status status-on" title="1" rel="clearshop_searchbox"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_searchbox"></div>'; } ?>
						<input name="clearshop_searchbox" value="<?php echo $clearshop_searchbox; ?>" id="clearshop_searchbox" type="hidden" />
					</td>
				</tr>

				<tr>
					<td><?php echo $entry_searchbox_position; ?></td>
					<td>
						<select name="clearshop_searchbox_position">
							<?php foreach ($searchbox_position as $fv => $fc) { ?>
								<?php ($fv ==  $this->config->get('clearshop_searchbox_position')) ? $current = 'selected' : $current=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $current; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<h3><?php echo $entry_header_info_sub; ?></h3>
					</td>
				</tr>

				<tr>
					<td>
						<?php echo $entry_header_info_text; ?> <br />
						<span class="customhelp"><?php echo $entry_header_info_text_help; ?></span>
					</td>
					<td><textarea name="clearshop_header_info_text" cols="52" rows="5" class="ckeditor"><?php echo $clearshop_header_info_text; ?></textarea>
					</td>
				</tr>

			</table>
		</div>	

		<div id="footer_settings" class="divtab">

			<div class="vtabs">
				<a href="#footer-facebook"><?php echo $entry_facebook_sub; ?></a>
				<a href="#footer-twitter"><?php echo $entry_twitter_feed_sub; ?></a>
				<a href="#footer-social"><?php echo $entry_social_icons_sub; ?></a>
				<a href="#footer-contact"><?php echo $entry_contact_sub; ?></a>
				<a href="#footer-information"><?php echo $entry_footer_info_sub; ?></a>
			</div>

			<div class="vtabs-content">

				<div id="footer-facebook">

				<table class="form">
					<tr>
						<td colspan="2">
							<h3><?php echo $entry_facebook_sub; ?></h3>
						</td>
					</tr>

					<tr>
						<td><?php echo $entry_facebook_page; ?> <br>
						</td>
						<td>
							<span class="customhelp"><?php echo $entry_facebook_page_getID_help; ?></span><br>
							<input type="text" name="clearshop_facebook_page" value="<?php echo $clearshop_facebook_page; ?>" class="large_field" />
						</td>
					</tr>

					<tr>
						<td><?php echo $entry_facebook_likebox; ?></td>
						<td><?php if($clearshop_facebook_button == 1) { echo '<div class="status status-on" title="1" rel="clearshop_facebook_button"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_facebook_button"></div>'; } ?>
							<input name="clearshop_facebook_button" value="<?php echo $clearshop_facebook_button; ?>" id="clearshop_facebook_button" type="hidden" />
							</td>
					</tr>

					<tr>
						<td><?php echo $entry_show_icon_too; ?></td>
						<td><?php if($clearshop_facebook_icon == 1) { echo '<div class="status status-on" title="1" rel="clearshop_facebook_icon"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_facebook_icon"></div>'; } ?>
							<input name="clearshop_facebook_icon" value="<?php echo $clearshop_facebook_icon; ?>" id="clearshop_facebook_icon" type="hidden" />
							</td>
					</tr>

					</table>
					
				</div>

				<div id="footer-twitter">

					<table class="form">
						
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_twitter_feed_sub; ?></h3>
								<span class="customhelp"><?php echo $entry_twitter_feed_sub_help; ?></span>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_twitter_username; ?></td>
							<td><input type="text" name="clearshop_twitter_username" value="<?php echo $clearshop_twitter_username; ?>" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_config_ckey; ?></td>
							<td><input type="text" name="clearshop_twitter_ckey" value="<?php echo $clearshop_twitter_ckey; ?>" class="large_field" /></td>
						</tr>
						<tr>
							<td><?php echo $entry_config_csecret; ?></td>
							<td><input type="text" name="clearshop_twitter_csecret" value="<?php echo $clearshop_twitter_csecret; ?>" class="large_field" /></td>
						</tr>
						<tr>
							<td><?php echo $entry_config_atoken; ?></td>
							<td><input type="text" name="clearshop_twitter_atoken" value="<?php echo $clearshop_twitter_atoken; ?>" class="large_field" /></td>
						</tr>
						<tr>
							<td><?php echo $entry_config_asecret; ?></td>
							<td><input type="text" name="clearshop_twitter_asecret" value="<?php echo $clearshop_twitter_asecret; ?>" class="large_field" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_twitter_feed; ?></td>
							<td><?php if($clearshop_show_twitter_feed == 1) { echo '<div class="status status-on" title="1" rel="clearshop_show_twitter_feed"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_show_twitter_feed"></div>'; } ?>
								<input name="clearshop_show_twitter_feed" value="<?php echo $clearshop_show_twitter_feed; ?>" id="clearshop_show_twitter_feed" type="hidden" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_show_icon_too; ?></td>
							<td><?php if($clearshop_twitter_icon == 1) { echo '<div class="status status-on" title="1" rel="clearshop_twitter_icon"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_twitter_icon"></div>'; } ?>
								<input name="clearshop_twitter_icon" value="<?php echo $clearshop_twitter_icon; ?>" id="clearshop_twitter_icon" type="hidden" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_tweets_number; ?></td>
							<td><input type="text" name="clearshop_tweets_number" value="<?php echo isset($clearshop_tweets_number) ? $clearshop_tweets_number : '3'; ?>" class="small_field" /></td>
						</tr>

					</table>
					
				</div>

				<div id="footer-social">

					<table class="form">

						<tr>
							<td colspan="2">
								<h3><?php echo $entry_social_icons_sub; ?></h3>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_youtube_username; ?></td>
							<td><input type="text" name="clearshop_youtube_username" value="<?php echo $clearshop_youtube_username; ?>" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_tumblr_username; ?></td>
							<td><input type="text" name="clearshop_tumblr_username" value="<?php echo $clearshop_tumblr_username; ?>" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_skype_username; ?></td>
							<td><input type="text" name="clearshop_skype_username" value="<?php echo $clearshop_skype_username; ?>" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_gplus_id; ?></td>
							<td><input type="text" name="clearshop_gplus_id" value="<?php echo $clearshop_gplus_id; ?>" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_pinterest_id; ?></td>
							<td><input type="text" name="clearshop_pinterest_id" value="<?php echo $clearshop_pinterest_id; ?>" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_instagram_username; ?></td>
							<td><input type="text" name="clearshop_instagram_username" value="<?php echo $clearshop_instagram_username; ?>" /></td>
						</tr>
					</table>
				</div>

				<div id="footer-contact">
					<table class="form">
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_contact_sub; ?></h3>
							</td>
						</tr>

						<tr>
							<td><?php echo $entry_address; ?></td>
							<td><textarea name="clearshop_address" cols="22" rows="3" class="ckeditor"><?php echo $clearshop_address; ?></textarea>
								</td>
						</tr>

						<tr>
							<td><?php echo $entry_phone1; ?></td>
							<td><input type="text" name="clearshop_phone1" value="<?php echo $clearshop_phone1; ?>" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_phone2; ?></td>
							<td><input type="text" name="clearshop_phone2" value="<?php echo $clearshop_phone2; ?>" /></td>
						</tr>

						<tr>
							<td><?php echo $entry_email; ?></td>
							<td><input type="text" name="clearshop_email" value="<?php echo $clearshop_email; ?>" /></td>
						</tr>

						<tr>
							<td>
								<?php echo $entry_contact_custom_text; ?> <br />
							</td>
							<td><textarea name="clearshop_contact_custom_text" cols="52" rows="5" class="ckeditor"><?php echo $clearshop_contact_custom_text; ?></textarea>
							</td>
						</tr>


					</table>
				</div>

				<div id="footer-information">
					<table class="form">
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_footer_info_sub; ?></h3>
							</td>
						</tr>

						<tr>
							<td>
								<?php echo $entry_footer_info_text; ?> <br />
								<span class="customhelp"><?php echo $entry_footer_info_text_help; ?>
							</td>
							<td><textarea name="clearshop_footer_info_text" cols="52" rows="5" class="ckeditor"><?php echo $clearshop_footer_info_text; ?></textarea>
							</span>
							</td>
						</tr>

						<tr>
							<td>
								<?php echo $entry_copyright_text; ?> <br />
								<span class="customhelp"><?php echo $entry_copyright_text_help; ?></span>
							</td>
							<td><textarea name="clearshop_copyright" cols="52" rows="2" class="ckeditor"><?php echo $clearshop_copyright; ?></textarea>
							</td>
						</tr>
					</table>
				</div>
			</div>

		</div>

		<div id="custom_code_settings" class="divtab">

			<div class="vtabs">
				<a href="#custom-css"><?php echo $entry_css_tab; ?></a>
				<a href="#custom-js"><?php echo $entry_js_tab; ?></a>
			</div>

			<div class="vtabs-content">
				<div id="custom-css">
					<table class="form">
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_custom_stylesheet_sub; ?></h3>
							</td>
						</tr>
						<tr>
							<td><?php echo $entry_custom_stylesheet; ?></td>
							<td>
								<?php if($clearshop_custom_stylesheet == 1) { echo '<div class="status status-on" title="1" rel="clearshop_custom_stylesheet"></div>'; } else { echo '<div class="status status-off" title="0" rel="clearshop_custom_stylesheet"></div>'; } ?>
								<input name="clearshop_custom_stylesheet" value="<?php echo $clearshop_custom_stylesheet; ?>" id="clearshop_custom_stylesheet" type="hidden" />

								<span class="customhelp"><?php echo $entry_custom_stylesheet_help; ?></span></td>
						</tr>

						<tr>
							<td colspan="2">
								<h3><?php echo $entry_custom_css_sub; ?></h3>
								<span class="customhelp"><?php echo $entry_custom_css_help; ?></span>
							</td>
						</tr>
						<tr>
							<td><?php echo $entry_custom_css; ?></td>
							<td><textarea name="clearshop_custom_css" cols="52" rows="20" style="width:80%;"><?php echo $clearshop_custom_css; ?></textarea>
								</td>
						</tr>
					</table>
				</div>

				<div id="custom-js">
					<table class="form">
						<tr>
							<td colspan="2">
								<h3><?php echo $entry_custom_js_sub; ?></h3>
								<span class="customhelp"><?php echo $entry_custom_js_help; ?></span>
							</td>
						</tr>
						<tr>
							<td><?php echo $entry_custom_js; ?></td>
							<td><textarea name="clearshop_custom_js" cols="52" rows="20" style="width:80%;"><?php echo $clearshop_custom_js; ?></textarea>
								</td>
						</tr>
					</table>
				</div>
			</div>

		</div>

		</form>

	</div>

</div>

<?php echo $footer; ?>

<script type="text/javascript">
	$('#settings_tabs a').tabs();
	$('#layout_settings .vtabs a').tabs();
	$('#colors_settings .vtabs a').tabs();
	$('#effects_settings .vtabs a').tabs();
	$('#footer_settings .vtabs a').tabs();
	$('#custom_code_settings .vtabs a').tabs();
</script>

<script type="text/javascript">
jQuery(document).ready(function($) {

	$(".status").click(function () {
		var styl = $(this).attr("rel");
		var co = $(this).attr("title");
		
		if(co == 1) {
			$(this).removeClass('status-on');
			$(this).addClass('status-off');
			$(this).attr("title", "0");
			$("#"+styl+"").val(0);
		}
		if(co == 0) {
			$(this).addClass('status-on');
			$(this).removeClass('status-off');
			$(this).attr("title", "1");
			$("#"+styl+"").val(1);
		}
	});
});	
</script>

<script type="text/javascript">

	$(document).ready(function() {

		var link = "<link href='http://fonts.googleapis.com/css?family=<?php echo $clearshop_title_font; ?>' id='title_googlefont' rel='stylesheet' type='text/css'>";
				$('head').append(link);
		var link = "<link href='http://fonts.googleapis.com/css?family=<?php echo $clearshop_body_font; ?>' id='body_googlefont' rel='stylesheet' type='text/css'>";
				$('head').append(link);
		var link = "<link href='http://fonts.googleapis.com/css?family=<?php echo $clearshop_small_font; ?>' id='small_googlefont' rel='stylesheet' type='text/css'>";
				$('head').append(link);

		$('#clearshop_title_font').change(function(){
				$('head #title_googlefont').remove();
				var link = "<link href='http://fonts.googleapis.com/css?family="+$(this).val()+"' id='title_googlefont' rel='stylesheet' type='text/css'>";
				$('head').append(link);
				
				var fontname = 	$(this).val().replace(/\+/g," ");
				
				$('#title_font_preview').css("font-family",'"'+fontname+'"');
			
		});

		$('#clearshop_body_font').change(function(){
				$('head #body_googlefont').remove();
				var link = "<link href='http://fonts.googleapis.com/css?family="+$(this).val()+"' id='body_googlefont' rel='stylesheet' type='text/css'>";
				$('head').append(link);
				
				var fontname = 	$(this).val().replace(/\+/g," ");
				
				$('#body_font_preview').css("font-family",'"'+fontname+'"');
			
		});

		$('#clearshop_small_font').change(function(){
				$('head #small_googlefont').remove();
				var link = "<link href='http://fonts.googleapis.com/css?family="+$(this).val()+"' id='small_googlefont' rel='stylesheet' type='text/css'>";
				$('head').append(link);
				
				var fontname = 	$(this).val().replace(/\+/g," ");
				
				$('#small_font_preview').css("font-family",'"'+fontname+'"');
			
		});
		
		$('.size_select').change(function(){

			var id = $(this).attr('id');

			if (id == 'clearshop_title_font_size' ) { $('#title_font_preview').css("font-size",$(this).val()+'px'); }
			if (id == 'clearshop_body_font_size' ) { $('#body_font_preview').css("font-size",$(this).val()+'px'); }
			if (id == 'clearshop_small_font_size' ) { $('#small_font_preview').css("font-size",$(this).val()+'px'); }
			
		});
	});
</script>

<script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script> 

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>


<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 