<?php
//控制器：IndexAction
class IndexAction extends CommonAction{
	//方法：index
	public function index(){
		
		//goMobile();
		$this->title = C('cfg_webname');
		$this->display();

	}
}

?>
