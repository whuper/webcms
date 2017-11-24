<?php

class ApplyAction extends CommonAction {
	
	public function index() {
		
		//分页
		/*
		import('ORG.Util.Page');
		$count = M('apply')->count();

		$page = new Page($count, 10);
		$limit = $page->firstRow. ',' .$page->listRows;
		$list = M('apply')->order('id DESC')->limit($limit)->select();

		$this->page = $page->show();
		$this->vlist = $list;

		$this->title = '应聘';
		 */
		$map['id']= $_GET['job_id'];
		$list = M('job')->where($map)->find();
		$this->assign('job_title',$list['title']);
		$this->assign('job_id',$list['id']);

		$this->display();
	}
	//添加

	public function add() {

		if (!IS_POST) {
			exit();
		}
		$content = I('content', '');
		$data =  I('post.');		
		$verify = I('vcode','','md5');
		
		if ( $_SESSION['verify'] != $verify) {
			$this->error('验证码不正确');
		}
		 

		if (empty($data['username'])) {
			$this->error('姓名不能为空!');
		}
		if (empty($data['telephone'])) {
			$this->error('联系电话不能为空!');
		}
	
		$data['posttime'] = time();
		$data['ip'] = get_client_ip();
	
		$db = M('apply');

		if($id = $db->add($data)) {
			$this->success('投递成功,我们稍后与你联系',U(GROUP_NAME. '/Job/index'));
		}else {
			$this->error('应聘失败');
		}
	}

	

}



?>
