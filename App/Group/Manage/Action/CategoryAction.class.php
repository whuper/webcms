<?php

class CategoryAction extends CommonAction {
	
	//分类列表
	public function index() {

		//CategoryView 视图模型
		$cate = D('CategoryView')->order('category.sort')->select();
		//$cate = getCategory();
		import('Class.Category', APP_PATH);
		$this->cate = Category::unlimitedForLevel($cate, '&nbsp;&nbsp;&nbsp;&nbsp;', 0);
		$this->display();
	}

	//添加分类
	public function add() {
		if (IS_POST) {
			$this->addHandle();
			exit();
		}
		$this->pid = I('pid', 0, 'intval');
		$cate = M('category')->order('sort')->select();
		import('Class.Category', APP_PATH);
		$this->cate = Category::unlimitedForLevel($cate, '---',0);
		$this->mlist = M('model')->where(array('status' => 1))->order('sort')->select();
		$this->styleListList = getFileFolderList(APP_PATH . C('APP_GROUP_PATH') . '/Index/Tpl/' , 2, 'List_*');
		$this->styleShowList = getFileFolderList(APP_PATH . C('APP_GROUP_PATH') . '/Index/Tpl/' , 2, 'Show_*');
		
		$this->display();
	}

	//添加分类处理

	public function addHandle() {

		$name = I('name', '', 'trim');
		$ename = I('ename', '', 'trim');

		$type = I('type', 0 ,'intval');
		if ($type) {
			$_POST['modelid'] = 0;
		}
		if (empty($ename) && !empty($name)) {
			$ename = get_pinyin(iconv('utf-8','gb2312//ignore',$name),0);
			$_POST['ename'] = $ename;
		}
		//M验证
		$validate = array(
			array('name','require','栏目名称不能为空！'), 
			//array('name','','栏目名称已经存在！',0,'unique',1), 
		);
		$data = M('category');
		if (!$data->validate($validate)->create()) {
			$this->error($data->getError());
		}

		if (M('category')->add($_POST)) {
			getCategory(0,1);//清除栏目缓存
			getCategory(1,1);//清除栏目缓存
			getCategory(2,1);//清除栏目缓存
			$this->success('添加栏目成功<script type="text/javascript" language="javascript">window.parent.get_cate();</script>',U(GROUP_NAME. '/Category/index'));
		}else {
			$this->error('添加栏目失败');
		}
		
	}


	//修改分类
	public function edit() {

		if (IS_POST) {
			$this->editHandle();
			exit();
		}
		$id = I('id', 0, 'intval');
		$data = M('category')->find($id);
		if (!$data) {
			$this->error('记录不存在');
		}
		$this->data = $data;
		$cate = M('category')->order('sort')->select();
		import('Class.Category', APP_PATH);
		$this->cate = Category::unlimitedForLevel($cate, '---',0);
		$this->mlist = M('model')->where(array('status' => 1))->order('sort')->select();		
		/*
		$this->styleListList = getFileFolderList(APP_PATH . C('APP_GROUP_PATH') . '/Index/Tpl/' .C('cfg_themestyle') , 2, 'List_*');
		$this->styleShowList = getFileFolderList(APP_PATH . C('APP_GROUP_PATH') . '/Index/Tpl/' .C('cfg_themestyle') , 2, 'Show_*');
		 */
		$this->styleListList = getFileFolderList(APP_PATH . C('APP_GROUP_PATH') . '/Index/Tpl/' , 2, 'List_*');
		$this->styleShowList = getFileFolderList(APP_PATH . C('APP_GROUP_PATH') . '/Index/Tpl/' , 2, 'Show_*');
	
		$this->display();
	}



	//修改分类处理

	public function editHandle() {

		$name = I('name', '', 'trim');
		$ename = I('ename', '', 'trim');
		$id = I('id',0, 'intval');
		$pid =I('pid', 0, 'intval');
		$type = I('type', 0 ,'intval');
		if ($type) {
			$_POST['modelid'] = 0;
		}
		if ($id == $pid) {
			$this->error('失败！不能设置自己为自己的子栏目，请重新选择父级栏目');
		}
		if (empty($name)) {
			$this->error('栏目名称不能为空！');
		}

		/*
		if (M('category')->where(array('name' => $name, 'id' => array('neq' , $id)))->find()) {
			$this->error('栏目名称已经存在！');
		}
		*/

		if (empty($ename) && !empty($name)) {
			$ename = get_pinyin(iconv('utf-8','gb2312//ignore',$name),0);
			$_POST['ename'] = $ename;
		}

		if (false !== M('category')->save($_POST)) {
			getCategory(0,1);//清除栏目缓存
			getCategory(1,1);
			getCategory(2,1);
			$this->success('修改栏目成功<script type="text/javascript" language="javascript">window.parent.get_cate();</script>',U(GROUP_NAME. '/Category/index'));
		}else {
			$this->error('修改栏目失败');
		}
		
	}

	//批量更新排序
	public function sort() {
	
		foreach ($_POST as $k => $v) {
			if ($k == 'key') {
				continue;
			}
			M('category')->where(array('id'=>$k))->setField('sort',$v);

			//echo 'id:'.$k.'___v:'.$v.'<br/>';//debug			
		}
		$this->redirect(GROUP_NAME. '/Category/index');
	}


	//修改分类处理

	public function del() {

		$id = I('id', 0, 'intval');

		//查询是否有子类
		$childCate = M('category')->where(array('pid' => $id))->select();
		if ($childCate) {
			$this->error('删除失败：请先删除本栏目下的子栏目');
		}

		if (M('category')->delete($id)) {
			//更新栏目缓存
			getCategory(0,1);
			getCategory(1,1);
			getCategory(2,1);
			$this->success('删除栏目成功<script type="text/javascript" language="javascript">window.parent.get_cate();</script>',U(GROUP_NAME. '/Category/index'));
		}else {
			$this->error('删除栏目失败');
		}		
	}


}




?>
