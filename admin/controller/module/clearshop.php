<?php

class ControllerModuleClearshop extends Controller {
    
    private $error = array(); 
    
    public function index() {   
        //Load the language file for this module
        $language = $this->load->language('module/clearshop');
        $this->data = array_merge($this->data, $language);

        //Set the title from the language file $_['heading_title'] string
        $this->document->setTitle($this->language->get('heading_title'));
        
        //Load the settings model. You can also add any other models you want to load here.
        $this->load->model('setting/setting');
        
        $this->load->model('tool/image');    
        
        //Save the settings if the user has submitted the admin form (ie if someone has pressed save).
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('clearshop', $this->request->post);    
               
                    
            $this->session->data['success'] = $this->language->get('text_success');
        
                        
            //$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));

            $this->redirect(HTTPS_SERVER . 'index.php?route=module/clearshop&token=' . $this->session->data['token']);
        }
        
            $this->data['text_image_manager'] = 'Image manager';
                    $this->data['token'] = $this->session->data['token'];       

            $this->data['clearshop_footer_info_text'] = $this->language->get('clearshop_footer_info_text');
        
        $text_strings = array(
                'heading_title',
                'text_enabled',
                'text_disabled',
                'text_content_top',
                'text_content_bottom',
                'text_column_left',
                'text_column_right',
                'entry_status',
                'entry_sort_order',
                'button_save',
                'button_cancel',
        );
        
        foreach ($text_strings as $text) {
            $this->data[$text] = $this->language->get($text);
        }
        

        // store config data
        
        $config_data = array(

        'clearshop',

        'clearshop_status',

        'clearshop_skins',
        'clearshop_product_details_layout',
        'clearshop_main_layout',

        'clearshop_sidebar_left_width',
        'clearshop_sidebar_right_width',

        'clearshop_product_layout',

        'clearshop_category_style',

        'clearshop_product_columns',
        'clearshop_display_cart_button',
        'clearshop_subcat_status',
        'clearshop_subcat_thumbnails_status',
        'clearshop_subcat_thumb_width',
        'clearshop_subcat_thumb_height',

        'clearshop_quickview_categories',
        'clearshop_quickview_modules',
        'clearshop_quickview_zoom',

        'clearshop_custom_colors',

        'clearshop_background_color',
        'clearshop_thickbar_color',

        'clearshop_title_color',
        'clearshop_bodytext_color',
        'clearshop_lighttext_color',

        'clearshop_menu_color',
        'clearshop_menu_color',
        'clearshop_menu_hover',
        'clearshop_dropdown_color',
        'clearshop_dropdown_hover',

        'clearshop_links_color',

        'clearshop_footer_text_color',
        'clearshop_footer_links_color',
        'clearshop_content_links_color',

        'clearshop_button_top_color',
        'clearshop_button_bottom_color',
        'clearshop_button_border_color',
        'clearshop_button_text_color',

        'clearshop_2button_top_color',
        'clearshop_2button_bottom_color',
        'clearshop_2button_border_color',
        'clearshop_2button_text_color',

        'clearshop_product_name_color',
        'clearshop_normal_price_color',
        'clearshop_old_price_color',
        'clearshop_new_price_color',
        'clearshop_onsale_background_color',
        'clearshop_onsale_text_color',

        'clearshop_show_wishlist',
        'clearshop_show_compare',
        'clearshop_show_sale_bubble',

        'clearshop_category_box_border',
        'clearshop_category_box_background',

        'clearshop_categories_menu_color',
        'clearshop_categories_sub_color',
        'clearshop_categories_active_color',

        'clearshop_pattern_overlay',
        'clearshop_custom_image',
        'clearshop_custom_pattern',
        'clearshop_image_preview',
        'clearshop_pattern_preview',
        'clearshop_full_background',
        
        'clearshop_title_font',
        'clearshop_title_font_size',
        'clearshop_body_font',
        'clearshop_body_font_size',
        'clearshop_small_font',
        'clearshop_small_font_size',
        'clearshop_cyrillic',

        'clearshop_featured_carousel',
        'clearshop_bestseller_carousel',
        'clearshop_latest_carousel',
        'clearshop_special_carousel',
        'clearshop_related_carousel',

        'clearshop_carousel_autoplay',

        'clearshop_facebook_id',
        'clearshop_facebook_page',
        'clearshop_facebook_icon',
        'clearshop_facebook_button',
        'clearshop_twitter_username',
        'clearshop_gplus_id',
        'clearshop_youtube_username',
        'clearshop_tumblr_username',
        'clearshop_skype_username',
        'clearshop_pinterest_id',
        'clearshop_instagram_username',

        'clearshop_footer_info_text',

        'clearshop_payment_logos',
        'clearshop_footer_info_text',
        'clearshop_copyright',

        'clearshop_slider',
        'clearshop_slider_speed',
        'clearshop_slider_transition_time',

        'clearshop_responsive',
        'clearshop_cloud_zoom',
        'clearshop_zoom_position',
        'clearshop_zoom_width',
        'clearshop_zoom_heigth',
        'clearshop_zoom_autosize',
        'clearshop_prevnext_mode',        

        'clearshop_subcat_thumbs',
        'clearshop_display_shadows',
        'clearshop_logo_left',
        'clearshop_search_navbar',
        'clearshop_select_mobile_menu',
        'clearshop_searchbox',
        'clearshop_searchbox_position',
        'clearshop_header_info_text',

        'clearshop_toggle_sidebar',

        'clearshop_address',
        'clearshop_phone1',
        'clearshop_phone2',
        'clearshop_email',
        'clearshop_contact_custom_text',

        'clearshop_twitter_ckey',
        'clearshop_twitter_csecret',
        'clearshop_twitter_atoken',
        'clearshop_twitter_asecret',
        'clearshop_tweets_number',
        'clearshop_show_twitter_feed',
        'clearshop_twitter_icon',

        'clearshop_custom_stylesheet',
        'clearshop_custom_css',
        'clearshop_custom_js',


        );
        
        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $this->data[$conf] = $this->request->post[$conf];
            } else {
                $this->data[$conf] = $this->config->get($conf);
            }
        }
    
        //This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }
        
        //Set up breadcrumb trail.
        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        
        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/clearshop', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        
        $this->data['action'] = $this->url->link('module/clearshop', 'token=' . $this->session->data['token'], 'SSL');
        
        $this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
                
        $this->load->model('design/layout');
        
        $this->data['layouts'] = $this->model_design_layout->getLayouts();

        $this->load->model('localisation/language');
        
        $this->data['languages'] = $this->model_localisation_language->getLanguages();
        
        if (isset($this->request->post['clearshop_module'])) {
            $this->data['clearshop_module'] = $this->request->post['clearshop_module'];
        } else {
            $this->data['clearshop_module'] = $this->config->get('clearshop_module');
        }

        //Choose which template file will be used to display this request.
        $this->template = 'module/clearshop.tpl';
        $this->children = array(
            'common/header',
            'common/footer',
        );

        if (isset($this->data['clearshop_custom_pattern']) && $this->data['clearshop_custom_pattern'] != "" && file_exists(DIR_IMAGE . $this->data['clearshop_custom_pattern'])) {
            $this->data['clearshop_pattern_preview'] = $this->model_tool_image->resize($this->data['clearshop_custom_pattern'], 70, 70);
        } else {
            $this->data['clearshop_pattern_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        
        
        if (isset($this->data['clearshop_custom_image']) && $this->data['clearshop_custom_image'] != "" && file_exists(DIR_IMAGE . $this->data['clearshop_custom_image'])) {
            $this->data['clearshop_image_preview'] = $this->model_tool_image->resize($this->data['clearshop_custom_image'], 70, 70);
        } else {
            $this->data['clearshop_image_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }

        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);

        //Send the output.
        $this->response->setOutput($this->render());
    }
    
    /*
     * 
     * This function is called to ensure that the settings chosen by the admin user are allowed/valid.
     * You can add checks in here of your own.
     * 
     */
    
    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/clearshop')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
        
        if (!$this->error) {
            return TRUE;
        } else {
            return FALSE;
        }   
    }


}
?>