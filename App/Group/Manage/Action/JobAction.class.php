<?php

class JobAction extends CommonAction {
	
	public function index() {
					
		//分页
		import('ORG.Util.Page');
		$count = M('job')->count();

		$page = new Page($count, 10);
		$limit = $page->firstRow. ',' .$page->listRows;
		$list = M('job')->order('posttime desc')->limit($limit)->select();

		$this->page = $page->show();
		$this->vlist = $list;
		$this->type = '岗位列表';

		$this->display();
	}
	//添加
	public function add() {
		//当前控制器名称		
		$actionName = strtolower($this->getActionName());
		if (IS_POST) {
			$this->addHandle();
			exit();
		}
		$this->display();
	}

	//
	public function addHandle() {

		//M验证

		$id = I('id', 0, 'intval');
		$content = I('content', '', 'trim');
		$validate = array(
			array('title','require','岗位标题不能为空！'), 
			array('content','require','岗位内容不能为空！'), 
		);

		$auto = array ( 
			array('posttime','time',1,'function'), 
			array('status','1',1) ,
		);

		$db = M('job');
		if (!$db->auto($auto)->validate($validate)->create()) {
			$this->error($db->getError());
		}


		if($id = $db->add()) {
			//内容中的图片
			$img_arr = array();
			$reg = "/<img[^>]*src=\"((.+)\/(.+)\.(jpg|gif|bmp|png))\"/isU";
			preg_match_all($reg, $content, $img_arr, PREG_PATTERN_ORDER);
			// 匹配出来的不重复图片
			$img_arr = array_unique($img_arr[1]);
			if (!empty($img_arr)) {
				$attid = M('attachment')->where(array('filepath' => array('in', $img_arr)))->getField('id', true);
				$dataAtt = array();
				if ($attid) {
					foreach ($attid as $v) {
						$dataAtt[] = array('attid' => $v,'arcid' => $id, 'modelid' => 0, 'desc' => 'job');
					}
					M('attachmentindex')->addAll($dataAtt);
				}
				
			}	

			$this->success('添加成功',U(GROUP_NAME. '/Job/index'));
		}else {
			$this->error('添加失败');
		}
	}

	//编辑文章
	public function edit() {
		//当前控制器名称
		$id = I('id', 0, 'intval');
		$actionName = strtolower($this->getActionName());
		if (IS_POST) {
			$this->editHandle();
			exit();
		}
		
		$this->vo = M($actionName)->find($id);
		$this->display();
	}


	//修改文章处理
	public function editHandle() {

		//M验证
		$id = I('id', 0, 'intval');
		$content = I('content', '', 'trim');
		$validate = array(
			array('title','require','岗位标题不能为空！'), 
			array('content','require','岗位内容不能为空！'), 
		);


		$db = M('job');
		if (!$db->auto($auto)->validate($validate)->create()) {
			$this->error($db->getError());
		}

		

		if (false !== M('job')->save()) {

			//del
			M('attachmentindex')->where(array('arcid' => $id, 'modelid' => 0, 'desc' => 'job'))->delete();
			//内容中的图片
			$img_arr = array();
			$reg = "/<img[^>]*src=\"((.+)\/(.+)\.(jpg|gif|bmp|png))\"/isU";
			preg_match_all($reg, $content, $img_arr, PREG_PATTERN_ORDER);
			// 匹配出来的不重复图片
			$img_arr = array_unique($img_arr[1]);
			if (!empty($img_arr)) {
				$attid = M('attachment')->where(array('filepath' => array('in', $img_arr)))->getField('id', true);
				$dataAtt = array();
				if ($attid) {
					foreach ($attid as $v) {
						$dataAtt[] = array('attid' => $v,'arcid' => $id, 'modelid' => 0, 'desc' => 'job');
					}
					M('attachmentindex')->addAll($dataAtt);
				}
				
			}
			$this->success('修改成功', U(GROUP_NAME. '/Job/index', array('pid' => $pid)));
		}else {

			$this->error('修改失败');
		}
		
	}



	//彻底删除文章
	public function del() {

		$id = I('id',0 , 'intval');
		$batchFlag = intval($_GET['batchFlag']);
		//批量删除
		if ($batchFlag) {
			$this->delBatch();
			return;
		}
		
		if (M('job')->delete($id)) {
			M('attachmentindex')->where(array('arcid' => $id, 'modelid' => 0, 'desc' => 'job'))->delete();
			$this->success('彻底删除成功', U(GROUP_NAME. '/Job/index'));
		}else {
			$this->error('彻底删除失败');
		}
	}


	//批量彻底删除文章
	public function delBatch() {

		$idArr = I('key',0 , 'intval');		
		if (!is_array($idArr)) {
			$this->error('请选择要彻底删除的项');
		}
		$where = array('id' => array('in', $idArr));

		if (M('job')->where($where)->delete()) {
			M('attachmentindex')->where(array('arcid' => array('in', $idArr), 'modelid' => 0, 'desc' => 'job'))->delete();
			$this->success('彻底删除成功', U(GROUP_NAME. '/Job/index'));
		}else {
			$this->error('彻底删除失败');
		}
	}




}



?>
