<?php
class ModelCatalogAttribute extends Model {
		public function getAttributeGroup(){
		$attribute_group_data=array();

		$attribute_groups=$this->db->query("SELECT DISTINCT a.attribute_group_id, agd.name,ag.sort_order FROM " . DB_PREFIX . "attribute a LEFT JOIN " . DB_PREFIX . "attribute_group ag ON (a.attribute_group_id = ag.attribute_group_id) LEFT JOIN " . DB_PREFIX . "attribute_group_description agd ON (ag.attribute_group_id = agd.attribute_group_id)GROUP BY a.attribute_group_id ORDER BY ag.sort_order, LCASE(agd.name)");

		foreach ($attribute_groups->rows as $attribute_group) {
			
			
			$attribute_data=array();
		
			$attributes=$this->db->query("SELECT ad.* FROM " . DB_PREFIX . "attribute_description ad JOIN ".DB_PREFIX."attribute a ON ad.attribute_id = a.attribute_id JOIN ". DB_PREFIX ."attribute_group ag ON ag.attribute_group_id = a.attribute_group_id WHERE ad.language_id='".(int)$this->config->get('config_language_id')."' AND ag.attribute_group_id = '".(int)$attribute_group['attribute_group_id']."' "); 
			
			foreach($attributes->rows as $attribute){
				$attribute_data[]=array(
					'attribute_id'=>$attribute['attribute_id'],
					'name'        =>$attribute['name'],
											'test'=>'aaaaa'

				);
			}
			
			
			$attribute_group_data[]=array(
				'attribute_group_id'=>$attribute_group['attribute_group_id'],
				'name'              =>$attribute_group['name'],
				'attribute'         =>$attribute_data

			);			
			
		}
		return $attribute_group_data;	
	}