<?php
class ModelCatalogDownload extends Model {
	public function getDownloads($id) {
		
		
		$query = $this->db->query("
		SELECT oc_download.filename FROM `oc_product_to_download` , `oc_download` WHERE oc_product_to_download.product_id = $id and oc_product_to_download.download_id = oc_download.download_id 
		");
		if ($query->num_rows) {
			return  $query->row['filename'];
		}
	}	
	
}
?>
