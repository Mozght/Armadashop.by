<?php  
class ControllerModuleTwitterFeed extends Controller {
	static $config_id;
	public function twitter() {
		$config=array();
		$config['ckey'] = $this->config->get('clearshop_twitter_ckey');
		$config['csecret'] = $this->config->get('clearshop_twitter_csecret');
		$config['atoken'] = $this->config->get('clearshop_twitter_atoken');
		$config['asecret'] = $this->config->get('clearshop_twitter_asecret');
		$config['usrname'] = $this->config->get('clearshop_twitter_username');
		$config['dir_lib']=DIR_APPLICATION.'view/theme/clearshop/twitter/';
		$config['dir_cache']=DIR_SYSTEM.'cache/';
		ob_start();
		include DIR_APPLICATION.'view/theme/clearshop/twitter/index.php';
		$output=ob_get_clean();
		$this->response->setOutput($output);		
	}
	protected function index($settings) {
		$this->language->load('module/twitter_feed');

		$this->data['text_twitter_title'] = $this->language->get('text_twitter_title');
		$this->data['text_loading'] = $this->language->get('text_loading');
		$this->data['text_join_text_default'] = $this->language->get('text_join_text_default');
		$this->data['text_join_text_ed'] = $this->language->get('text_join_text_ed');
		$this->data['text_join_text_ing'] = $this->language->get('text_join_text_ing');
		$this->data['text_join_text_reply'] = $this->language->get('text_join_text_reply');
		$this->data['text_join_text_url'] = $this->language->get('text_join_text_url');
		$this->data['tweets_template'] = $this->language->get('tweets_template');
		$this->data['text_twitter_readmore'] = $this->language->get('text_twitter_readmore');

		$this->data['twitter_feed_modpath'] = $this->url->link('module/twitter_feed/twitter');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/twitter_feed.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/twitter_feed.tpl';
		} else {
			$this->template = 'default/template/module/twitter_feed.tpl';
		}
		
		$this->render();
	}
}
