<?php
class Customer {
	private $customer_id;
	private $firstname;
	private $lastname;
	private $email;
	private $telephone;
	private $fax;
	private $newsletter;
	private $customer_group_id;
	private $address_id;
	
  	public function __construct($registry) {
		$this->config = $registry->get('config');
		$this->db = $registry->get('db');
		$this->request = $registry->get('request');
		$this->session = $registry->get('session');
				
		if (isset($this->session->data['customer_id'])) { 
			$customer_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE customer_id = '" . (int)$this->session->data['customer_id'] . "' AND status = '1'");
			
			if ($customer_query->num_rows) {
				$this->customer_id = $customer_query->row['customer_id'];
				$this->firstname = $customer_query->row['firstname'];
				$this->lastname = $customer_query->row['lastname'];
				$this->email = $customer_query->row['email'];
				$this->telephone = $customer_query->row['telephone'];
				$this->fax = $customer_query->row['fax'];
				$this->newsletter = $customer_query->row['newsletter'];
				$this->customer_group_id = $customer_query->row['customer_group_id'];
				$this->address_id = $customer_query->row['address_id'];
							
      			$this->db->query("UPDATE " . DB_PREFIX . "customer SET cart = '" . $this->db->escape(isset($this->session->data['cart']) ? serialize($this->session->data['cart']) : '') . "', wishlist = '" . $this->db->escape(isset($this->session->data['wishlist']) ? serialize($this->session->data['wishlist']) : '') . "', ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "' WHERE customer_id = '" . (int)$this->customer_id . "'");
			
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer_ip WHERE customer_id = '" . (int)$this->session->data['customer_id'] . "' AND ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "'");
				
				if (!$query->num_rows) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "customer_ip SET customer_id = '" . (int)$this->session->data['customer_id'] . "', ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "', date_added = NOW()");
				}
			} else {
				$this->logout();
			}
  		}
	}
		
  	public function login($email, $password, $override = false) {
		if ($override) {
			$customer_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer where LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "' AND status = '1'");
		} else {
			$customer_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "' AND (password = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1('" . $this->db->escape($password) . "'))))) OR password = '" . $this->db->escape(md5($password)) . "') AND status = '1' AND approved = '1'");
		}
		
		if ($customer_query->num_rows) {
			$this->session->data['customer_id'] = $customer_query->row['customer_id'];	
		    
			if ($customer_query->row['cart'] && is_string($customer_query->row['cart'])) {
				$cart = unserialize($customer_query->row['cart']);
				
				foreach ($cart as $key => $value) {
					if (!array_key_exists($key, $this->session->data['cart'])) {
						$this->session->data['cart'][$key] = $value;
					} else {
						$this->session->data['cart'][$key] += $value;
					}
				}			
			}

			if ($customer_query->row['wishlist'] && is_string($customer_query->row['wishlist'])) {
				if (!isset($this->session->data['wishlist'])) {
					$this->session->data['wishlist'] = array();
				}
								
				$wishlist = unserialize($customer_query->row['wishlist']);
			
				foreach ($wishlist as $product_id) {
					if (!in_array($product_id, $this->session->data['wishlist'])) {
						$this->session->data['wishlist'][] = $product_id;
					}
				}			
			}
									
			$this->customer_id = $customer_query->row['customer_id'];
			$this->firstname = $customer_query->row['firstname'];
			$this->lastname = $customer_query->row['lastname'];
			$this->email = $customer_query->row['email'];
			$this->telephone = $customer_query->row['telephone'];
			$this->fax = $customer_query->row['fax'];
			$this->newsletter = $customer_query->row['newsletter'];
			$this->customer_group_id = $customer_query->row['customer_group_id'];
			$this->address_id = $customer_query->row['address_id'];
          	
			$this->db->query("UPDATE " . DB_PREFIX . "customer SET ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "' WHERE customer_id = '" . (int)$this->customer_id . "'");
			
	  		return true;
    	} else {
      		return false;
    	}
  	}
  	
	public function logout() {
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET cart = '" . $this->db->escape(isset($this->session->data['cart']) ? serialize($this->session->data['cart']) : '') . "', wishlist = '" . $this->db->escape(isset($this->session->data['wishlist']) ? serialize($this->session->data['wishlist']) : '') . "' WHERE customer_id = '" . (int)$this->customer_id . "'");
		
		unset($this->session->data['customer_id']);

		$this->customer_id = '';
		$this->firstname = '';
		$this->lastname = '';
		$this->email = '';
		$this->telephone = '';
		$this->fax = '';
		$this->newsletter = '';
		$this->customer_group_id = '';
		$this->address_id = '';
  	}
  
  	public function isLogged() {
    	return $this->customer_id;
  	}

  	public function getId() {
    	return $this->customer_id;
  	}
      
  	public function getFirstName() {
		return $this->firstname;
  	}
  
  	public function getLastName() {
		return $this->lastname;
  	}
  
  	public function getEmail() {
		return $this->email;
  	}
  
  	public function getTelephone() {
		return $this->telephone;
  	}
  
  	public function getFax() {
		return $this->fax;
  	}
	
  	public function getNewsletter() {
		return $this->newsletter;	
  	}

  	public function getCustomerGroupId() {
		return $this->customer_group_id;	
  	}
	
  	public function getAddressId() {
		return $this->address_id;	
  	}
	
  	public function getBalance() {
		$query = $this->db->query("SELECT SUM(amount) AS total FROM " . DB_PREFIX . "customer_transaction WHERE customer_id = '" . (int)$this->customer_id . "'");
	
		return $query->row['total'];
  	}	
		
  	public function getRewardPoints() {
		$query = $this->db->query("SELECT SUM(points) AS total FROM " . DB_PREFIX . "customer_reward WHERE customer_id = '" . (int)$this->customer_id . "'");
	
		return $query->row['total'];	
  	}	
// BOF - Zappo - Group Discounts - Group Discount Functions
	// Get Discount from ProductId
	public function getDiscount($pId, $total=0, $cId = false) {
		$discount = false;
		$group_id = ($this->customer_group_id) ? $this->customer_group_id : (!$this->config->get('config_discount_login') ? $this->config->get('config_customer_group_id') : false);
		if (!$cId) {
			$query = $this->db->query("SELECT DISTINCT category_id as id FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . (int)$pId . "'");
			if ($query->num_rows && $group_id) $cId = (int)$query->row['id'];
		}
		if ($cId && $group_id !== false) {
			$query = $this->db->query("SELECT DISTINCT discounts, parent_id as cid FROM " . DB_PREFIX . "category WHERE category_id = '" . $cId . "'");
			if ($query->num_rows) $cId = $query->row['cid'];
			if ($query->row['discounts'] && strpos($query->row['discounts'], '|')) {
				$discounts = explode(' ', $query->row['discounts']);
				foreach ($discounts as $group) {
					$group = explode('|', $group);
					$disco = explode('@', $group[1]);
					if ($total && $disco[0] != '' && isset($disco[1]) && $disco[1]) {
						$disco = ((float)$disco[1] < $total) ? '' : $disco[0];
					} else {
						$disco = $disco[0];
					}
					if ($group[0] == $group_id && $disco != '') $discount = 1 - ((float)$disco / 100);
				}
			}
		}
		if (!$discount) {
			if ($cId) {
				$discount = $this->getDiscount($pId, $total, $cId);
			} else {
				$discount = 1;
				if ($group_id) {
					$query = $this->db->query("SELECT DISTINCT discount FROM " . DB_PREFIX . "customer_group WHERE customer_group_id = '" . (int)$group_id . "'");
					if ($query->num_rows) {
						$disco = explode('@', $query->row['discount']);
						if ($total && $disco[0] != '' && isset($disco[1]) && $disco[1]) {
							$disco = ((float)$disco[1] < $total) ? '' : $disco[0];
						} else {
							$disco = $disco[0];
						}
						$discount = 1 - ((float)$disco / 100);
					}
				}
			}
		}
		return $discount;
  	}
	// Get Discount from OptionId
	public function getOptionDiscount($oId, $total=0) {
		$discount = false;
		$group_id = ($this->customer_group_id) ? $this->customer_group_id : (!$this->config->get('config_discount_login') ? $this->config->get('config_customer_group_id') : false);
		$query = $this->db->query("SELECT DISTINCT discounts FROM `" . DB_PREFIX . "option` WHERE option_id = '" . (int)$oId . "'");
		if ($query->row['discounts'] && strpos($query->row['discounts'], '|') && $group_id) {
			$discounts = explode(' ', $query->row['discounts']);
			foreach ($discounts as $group) {
				$group = explode('|', $group);
				$disco = explode('@', $group[1]);
				if ($disco[0] != '' && isset($disco[1])) {
					$disco = ((float)$disco[1] < $total) ? '' : $disco[0];
				} else {
					$disco = $disco[0];
				}
				if ($disco === '') $discount = false;
				elseif ($group[0] == $group_id) $discount = 1 - ((float)$disco / 100);
			}
		}
		return $discount;
  	}
	// Count Discounts in Cart
	public function countCartDiscount($total=0) {
		$discounts = 0;
		if (isset($this->session->data['cart'])) {
			foreach ($this->session->data['cart'] as $key => $quantity) {
				$product = explode(':', $key);
				$product_id = $product[0];
				if ($this->getDiscount($product_id, $total) != 1) $discounts += $quantity;
			}
		}
		return $discounts;
  	}
// EOF - Zappo - Group Discounts - Group Discount Functions
}
?>