<?php  
class ControllerModuleHelloworld extends Controller {
	protected function index($setting) {
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		$category_id = end($parts);
		
		
		$this->data['action'] ="helloworld";

		$this->load->model('catalog/category');

		$category_info = $this->model_catalog_category->getCategory($category_id);

		$this->data['category']=$category_info;
		/*fengegu*/

		$this->load->model('catalog/attribute');


		$attribute_groups=$this->model_catalog_product->getAttributeGroup();

		/*$this->data['attribute_groups']=$attribute_groups;*/
		/*
		if($attribute_groups){
			$this->data['attribute_groups']=$attribute_groups;
		}else{
			$this->data['attribute_groups']=array('no','attribute_groups!!!');
		}
		*/
		
			foreach($attribute_groups as $attribute_group){
				$attribute_data=array();

				foreach($attribute_group['attribute'] as $attribute){
					$attribute_data[]=array(
						'attribute_id'=>$attribute['attribute_id'],
						'name'        =>$attribute['name']

					);
				}


				$this->data['attribute_groups'][]=array(
					'attribute_group_id'=>$attribute_group['attribute_group_id'],
					'name'              =>$attribute_group['name'],
					'attribute'         =>$attribute_data
				);
			}
			
		
		/*
		$this->data['products']=array();
		$data = array(
				'filter_category_id' => $category_id,
			);
		$product_total = $this->model_catalog_product->getTotalProducts($data); 
		$this->data['product_total']=$product_total;
		$results = $this->model_catalog_product->getProducts($data);
		$this->data['results']=$results;
		*/

		/*
		$attribute_groups=0;
		if($attribute_groups){
			foreach($attribute_groups as $attribute_group){
				$attribute_data=array();

				foreach($attribute_group['attribute'] as $attribute){
					$attribute_data[]=array(
						'attribute_id'=>$attribute['attribute_id'],
						'name'=>$attribute['name'],
						'text'=>$attribute['text']
					);
				}
			
				$this->data['attribute_groups'][]=array(
					'arribute_group_id'=>$attribute_group['attribute_group_id'],
					'name'=>$attribute_group['name'],
					'attribute'=>$attribute_data
				);
			}

		}*/

				/*最后都需要的部分*/	
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/helloworld.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/helloworld.tpl';
		} else {
			$this->template = 'default/template/module/helloworld.tpl';
		}
		
		$this->render();


	}
}
?>

