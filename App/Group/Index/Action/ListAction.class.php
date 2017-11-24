<?php
//ListAction
class ListAction extends CommonAction{
	//方法：index
	public function index(){
		
		$cid = I('cid', 0,'intval');
		$ename = I('e', '', 'htmlspecialchars,trim');
		$cate = getCategory();
		import('Class.Category', APP_PATH);	
		
		if (!empty($ename)) {//ename不为空
			$self = Category::getSelfByEName($cate, $ename);//当前栏目信息
		}else {//$cid来判断

			$self = Category::getSelf($cate, $cid);//当前栏目信息
				//dump($self);
		}		

		if(empty($self)) {
			$this->error('栏目不存在');
		}
	
		$cid = $self['id'];//当使用ename获取的时候，就要重新给$cid赋值，不然0
		$_GET['cid'] = $cid;//栏目ID
		$self['url'] = getUrl($self);

		//获取子栏目id
		$son_cids = Category::getChildsId($cate, $cid);

		//dump($son_cid);




		$this->son_cid = $son_cids[0];
		$this->cate = $self;
		$this->flag_son = Category::hasChild($cate, $cid);//是否包含子类
		$this->title = empty($self['seotitle']) ? $self['name'] : $self['seotitle'];
		$this->keywords = $self['keywords'];
		$this->description = $self['description'];
		$this->cid = $cid;

		
		$patterns = array('/^List_/', '/.html$/');
		$replacements = array('', '');
		$template_list = preg_replace($patterns, $replacements, $self['template_list']);
		
		if (empty($template_list)) {
			$this->error('模板不存在');
		}
	
		$this->assign('cata_pic',$self['cata_pic']);
		$this->cata_pic = $self['cata_pic'];

		switch ($self['tablename']) {
			case 'article':
				$this->display($template_list);
				return;
				break;
			case 'product':
				$this->display($template_list);
				return;
				break;
			case 'picture':
				$this->display($template_list);
				return;
				break;	
			case 'soft':
				$this->display($template_list);
				return;
				break;	
			case 'page':
				{
					$cate = M('Category')->Field('content')->find($cid);
					$self['content'] = $cate['content'];
					$this->cate = $self;
					$this->display($template_list);
				}
				return;
				break;	
			case 'phrase':
				$this->display($template_list);
				return;
				break;		
			default:
				$this->error('参数错误');
				break;
		}
	
		$this->display();

	}




}

?>
