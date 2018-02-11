<?php

//自定义标签库
class TagLibYang extends TagLib {
	

	protected $tags = array(
		//自定义标签
		
		//通用列表
		'list'	=> array(
			'attr'	=> 'flag,typeid,titlelen,infolen,orderby,keyword,limit,pagesize',
			'close'	=> 1,
		),

		//专题列表分页
		'spelist'	=> array(
			'attr'	=> 'flag,typeid,titlelen,infolen,orderby,keyword,limit,pagesize',
			'close'	=> 1,
		),

		//栏目
		'catlist'	=> array(
			'attr'	=> 'typeid,type,orderby,limit,flag',//flag为是否全部显示
			'close'	=> 1,
		),

		//导航
		'navlist'	=> array(
			'attr'	=> 'typeid',
			'close'	=> 1,
		),

		//类名和链接
		'type'	=> array(
			'attr'	=> 'typeid',
			'close'	=> 1,
		),
		//user list
			'userlist'	=> array(
			'attr'	=> 'typeid,titlelen,infolen,orderby,limit,pagesize',//attr 属性列表
			'close'	=> 1,
		),
		//announce list
		'announcelist'	=> array(
			'attr'	=> 'titlelen,infolen,orderby,limit,pagesize',//attr 属性列表
			'close'	=> 1,
		),
		
		//friendLink list
		'flink'	=> array(
			'attr'	=> 'typeid,titlelen,infolen,orderby,limit,pagesize',//attr 属性列表
			'close'	=> 1,
		),
		//Picplay list
		'picplay'	=> array(
			'attr'	=> 'titlelen,infolen,orderby,limit,pagesize',//attr 属性列表
			'close'	=> 1,
		),


		'block'	=> array(
			'attr'	=> 'name,infolen,textflag',
			'close'	=> 0,
		),


		'field'	=> array(
			'attr'	=> 'typeid,artid,name,infolen,imgindex,imgwidth,imgheight',//imgindex,imgwidth,imgheight针对图片
			'close'	=> 0,
		),

		'position'	=> array(
			'attr'	=> 'typeid,ismobile,sname,surl,delimiter',
			'close'	=> 0,
		),


		'sitekeywords'	=> array('close' => 0),
		'sitedescription'	=> array('close' => 0),
		'company'	=> array('close' => 0),
		'sitetitle'	=> array('close' => 0),
		'siteurl'	=> array('close' => 0),
		'address'	=> array('close' => 0),
		'phone'	=> array('close' => 0),
		'qq'	=> array('close' => 0),
		'copyright'	=> array('close' => 0),
		'swturl'	=> array('close' => 0),
		'searchurl'	=> array('close' => 0),
		'gbookurl'	=> array('close' => 0),
		'gbookaddurl'	=> array('close' => 0),
		'vcodeurl'	=> array('close' => 0),		
		'mobileauto'	=> array(
			'attr'	=> 'flag',//0自动,1是php,2是js
			'close' => 0
		),

		'prev'	=> array(
			'attr'	=> 'titlelen',//attr 属性列表
			'close' => 0
		),
		'next'	=> array(			
			'attr'	=> 'titlelen',//attr 属性列表
			'close' => 0
		),
		'click'	=> array('close' => 0),

	);

	//标签名前加下划线
	//文章列表
	public function _list($attr, $content) {
		$attr = $this->parseXmlAttr($attr, 'list');
		$flag = empty($attr['flag'])? '': $attr['flag'];
		$typeid = !isset($attr['typeid']) || $attr['typeid'] == '' ? I('get.cid', 0, 'intval') : trim($attr['typeid']);//只接收一个栏目ID
		//echo '###'.$typeid;
	
		$titlelen = empty($attr['titlelen'])? 0 : intval($attr['titlelen']);
		$infolen = empty($attr['infolen'])? 0 : intval($attr['infolen']);		
		$orderby = empty($attr['orderby'])? 'weight desc,id DESC' : $attr['orderby'];
		$limit = empty($attr['limit'])? '10' : $attr['limit'];
		$pagesize = empty($attr['pagesize'])? '0' : $attr['pagesize'];
		$keyword = empty($attr['keyword'])? '': trim($attr['keyword']);

		$nochild = empty($attr['nochild'])? 0: 1;
		

		$flag = flag2sum($flag);
	
		$str = <<<str
<?php
	\$typeid = $typeid;	
	\$keyword = "$keyword";
	\$nochild = "$nochild";
	if (\$typeid>0 || substr(\$typeid,0,1) == '$') {
		import('Class.Category', APP_PATH);
		\$_selfcate = Category::getSelf(getCategory(), \$typeid);
		\$_tablename = strtolower(\$_selfcate['tablename']);
		if(\$nochild){
		\$ids = \$typeid;
		}else {

		\$ids = Category::getChildsId(getCategory(), \$typeid, true);
}
		\$where = array(\$_tablename.'.status' => 0, \$_tablename .'.cid'=> array('IN',\$ids));
	}else {
		\$_tablename = 'article';
		\$where = array(\$_tablename.'.status' => 0);
		
	}
	if (\$keyword != '') {
		\$where[\$_tablename.'.title'] = array('like','%'.\$keyword.'%');
		\$isSearch = true;
	}


	if ($flag > 0) {	
		\$where['_string'] = \$_tablename.'.flag & $flag = $flag ';	
	}

	if (!empty(\$_tablename) && \$_tablename != 'page') {
	
		//分页
		if ($pagesize > 0) {
			
			import('ORG.Util.Page');
			\$count = D(ucfirst(\$_tablename ).'View')->where(\$where)->count();

			\$thisPage = new Page(\$count, $pagesize);
			
			\$ename = I('e', '', 'trim');
			if (!empty(\$ename) && C('URL_ROUTER_ON') == true) {
				\$thisPage->url = ''.\$ename. '/p';
			}
			//设置显示的页数
			\$thisPage->rollPage = 5;
			 \$thisPage->setConfig('header','条记录');
			\$thisPage->setConfig('first', '第一页');
			\$thisPage->setConfig('last', '最后一页');
			\$thisPage->setConfig('prev', '上一页');
			\$thisPage->setConfig('next', '下一页');
			\$thisPage->setConfig('theme', ' %nowPage%/%totalPage% 页 %upPage% %downPage%  %prePage% %linkPage% %nextPage%');

			\$limit = \$thisPage->firstRow. ',' .\$thisPage->listRows;	
			\$page = \$thisPage->show();

		}else {
			\$limit = "$limit";
		}	

		\$_list = D(ucfirst(\$_tablename ).'View')->where(\$where)->order("$orderby")->limit(\$limit)->select();
		if (empty(\$_list)) {
			if(\$isSearch){
				\$_list = array("nodata"=>true);
			} else {
				\$_list = array();
			}
			
		}
	}else {
		\$_list = array();
	}

//调用msubstr()
	//Load('extend');
	//dump(\$_list);

	foreach(\$_list as \$autoindex => \$list): 

	\$_jumpflag = (\$list['flag'] & B_JUMP) == B_JUMP? true : false;
	\$list['url'] = getContentUrl(\$list['id'], \$list['cid'], \$list['ename'], \$_jumpflag, \$list['jumpurl']);
	if($titlelen) \$list['title'] = str2sub(\$list['title'], $titlelen, 0);	

	if($infolen) \$list['description'] = str2sub(\$list['description'], $infolen, 0);

	

?>
str;

	$str .= $content;
	$str .='<?php endforeach;?>';

	return $str;

	}



	//专题列表
	public function _spelist($attr, $content) {
		$attr = $this->parseXmlAttr($attr, 'spelist');
		$flag = empty($attr['flag'])? '': $attr['flag'];
		$typeid = !isset($attr['typeid']) || $attr['typeid'] == '' ? 0 : trim($attr['typeid']);//只接收一个栏目ID
		$titlelen = empty($attr['titlelen'])? 0 : intval($attr['titlelen']);
		$infolen = empty($attr['infolen'])? 0 : intval($attr['infolen']);		
		$orderby = empty($attr['orderby'])? 'id DESC' : $attr['orderby'];
		$limit = empty($attr['limit'])? '10' : $attr['limit'];
		$pagesize = empty($attr['pagesize'])? '0' : $attr['pagesize'];
		$keyword = empty($attr['keyword'])? '': trim($attr['keyword']);
		

		$flag = flag2sum($flag);
		
		$str = <<<str
<?php
	\$_typeid = $typeid;	
	\$_keyword = "$keyword";
	if (\$_typeid>0) {
		import('Class.Category', APP_PATH);
		\$_selfcate = Category::getSelf(getCategory(), \$_typeid);
		if (\$_selfcate) {
			\$_tablename = strtolower(\$_selfcate['tablename']);
			\$ids = Category::getChildsId(getCategory(), \$_typeid, true);

			\$where = array('special.status' => 0, 'special.cid'=> array('IN',\$ids));
		}else {
			\$_typeid = 0;
		}			
		
	}
	if (\$_typeid == 0) {
		\$where = array('special.status' => 0);
		
	}

	if (\$_keyword != '') {
		\$where['special.title'] = array('like','%'.\$_keyword.'%');
	}


	if ($flag > 0) {	
		\$where['_string'] = 'special.flag & $flag = $flag ';	
	}


	//分页
	if ($pagesize > 0) {
		
		import('ORG.Util.Page');
		\$count = D('SpecialView')->where(\$where)->count();

		\$thisPage = new Page(\$count, $pagesize);
		
		\$ename = I('e', '', 'trim');
		if (!empty(\$ename) && C('URL_ROUTER_ON') == true) {
			\$thisPage->url = ''.\$ename. '/p';
		}
		//设置显示的页数
		\$thisPage->rollPage = 3;
		\$thisPage->setConfig('theme',' %upPage% %downPage% %linkPage%');
		\$limit = \$thisPage->firstRow. ',' .\$thisPage->listRows;	
		\$page = \$thisPage->show();

	}else {
		\$limit = "$limit";
	}	

	\$_spelist = D('SpecialView')->where(\$where)->order("$orderby")->limit(\$limit)->select();
	if (empty(\$_spelist)) {
		\$_spelist = array();
	}


	foreach(\$_spelist as \$autoindex => \$spelist):

	if ((\$spelist['flag'] & B_JUMP)  && !empty(\$spelist['jumpurl'])) {
        \$spelist['url'] = \$spelist['jumpurl'];
    }else {
    	//开启路由
	    if(C('URL_ROUTER_ON') == true) {
	        \$spelist['url'] = U('Special/'.\$spelist['id'],'');
	    }else {
	        \$spelist['url']  = U('Special/shows', array('id'=> \$spelist['id']));     
	        
	    }
    }
	

	if($titlelen) \$spelist['title'] = str2sub(\$spelist['title'], $titlelen, 0);	
	if($infolen) \$spelist['description'] = str2sub(\$spelist['description'], $infolen, 0);

?>
str;
	$str .= $content;
	$str .='<?php endforeach;?>';
	return $str;

	}



	//栏目名称
	public function _type($attr, $content) {
		$attr = $this->parseXmlAttr($attr, 'artlist');
		$typeid = empty($attr['typeid'])? 0 : intval($attr['typeid']);
		
		 if ($typeid == 0) {
		         $typeid = $attr['typeid'];
		 }
		 
		$str = <<<str
<?php

	import('Class.Category', APP_PATH);	
	\$type = Category::getSelf(getCategory(0), $typeid);		
	\$type['url'] = getUrl(\$type);

?>
str;
		$str .= $content;
		return $str;

	}

	//导航
	public function _catlist($attr, $content) {
		$attr = $this->parseXmlAttr($attr, 'catlist');
		$typeid = !isset($attr['typeid']) || $attr['typeid'] == '' ? I('get.cid', 0, 'intval') : trim($attr['typeid']);//只接收一个栏目ID
		$type = empty($attr['type'])? 'son' : $attr['type'];//son表示下级栏目,self表示同级栏目,top顶级栏目(top忽略typeid)
		$flag = empty($attr['flag']) ? 0: intval($attr['flag']);//0(不显示链接和单页),1(全部显示),2
		$orderby = empty($attr['orderby'])? 'id DESC' : $attr['orderby'];
		$limit = empty($attr['limit'])? '10' : $attr['limit'];
		$str = <<<str
<?php
	\$typeid = intval($typeid);
	\$type = '$type';
	\$__catlist = getCategory(0);

	import('Class.Category', APP_PATH);	
	if ($flag == 0) {
		\$__catlist = Category::clearPageAndLink(\$__catlist);
	}
	
	//\$type为top,忽略$typeid
	if(\$typeid == 0 || \$type == 'top') {
		\$_catlist  = Category::unlimitedForLayer(\$__catlist);
	}else {
		//同级分类
		if (\$type == 'self') {
			\$_typeinfo  = Category::getSelf(\$__catlist, \$typeid );
			//if (\$_typeinfo['pid'] != 0) {
				\$_catlist  = Category::unlimitedForLayer(\$__catlist, 'child', \$_typeinfo['pid']);
			//}
		}else {
			//son，子类列表
			\$_catlist  = Category::unlimitedForLayer(\$__catlist, 'child', \$typeid);
		}
	}

	foreach(\$_catlist as \$autoindex => \$catlist):
	if(\$autoindex >= $limit) break;
	\$catlist['url'] = getUrl(\$catlist);
	//判断是否有子栏目
	\$subcat = Category::unlimitedForLayer(\$__catlist, 'child', \$catlist['id']);
	if(!empty(\$subcat)){
		\$catlist['hasSub'] = true;
	}
	
?>
str;

	$str .= $content;
	$str .='<?php endforeach;?>';
	return $str;

	}

	//导航
	public function _navlist($attr, $content) {
		//$attr = $this->parseXmlAttr($attr, 'navlist');
		$attr = !empty($attr)? $this->parseXmlAttr($attr, 'navlist') : null;
		
		
		//$typeid = $attr['typeid'] == '' ? I('get.cid', 0, 'intval') : intval($attr['typeid']);//不能用empty,0,'','0',会认为true
		$typeid = !isset($attr['typeid']) || $attr['typeid'] == '' ? I('get.cid', 0, 'intval') : trim($attr['typeid']);//只接收一个栏目ID
		//echo '###'.$typeid;
		
		
		
		$str = <<<str
<?php
	\$_navlist = getCategory(1);
	import('Class.Category', APP_PATH);	
	
	\$typeid = $typeid;
	if($typeid == 0) {
		\$_navlist  = Category::unlimitedForLayer(\$_navlist);
	}else {
		\$_navlist  = Category::unlimitedForLayer(\$_navlist, 'child', $typeid);
	}

	foreach(\$_navlist as \$autoindex => \$navlist):
		\$navlist['url'] = getUrl(\$navlist);	
?>
str;

	$str .= $content;
	$str .='<?php endforeach;?>';
	return $str;

	}


	//user list
	public function _userlist($attr, $content) {
		$attr = $this->parseXmlAttr($attr, 'userlist');
		$typeid = isset($attr['typeid']) ? trim($attr['typeid']) : 0;
		$typeid = trim($typeid) == '' ? 0 : $typeid;
		$titlelen = empty($attr['titlelen'])? 0 : intval($attr['titlelen']);
		$infolen = empty($attr['infolen'])? 0 : intval($attr['infolen']);		
		$orderby = empty($attr['orderby'])? 'id DESC' : $attr['orderby'];
		$limit = empty($attr['limit'])? '10' : $attr['limit'];
		$pagesize = empty($attr['pagesize'])? '0' : $attr['pagesize'];
		//echo "$typeid---------";

		
		$str = <<<str
<?php
	\$typeid = $typeid;	
	if (\$typeid>0 || substr(\$typeid,0,1) == '$') {
		\$where = array('member.islock' => 0, 'member.groupid'=> \$typeid);
	}else {
		\$where = array('member.islock' => 0);
	}

	//分页
	if ($pagesize > 0) {
		
		import('ORG.Util.Page');
		\$count = D('MemberView')->where(\$where)->count();

		\$thisPage = new Page(\$count, $pagesize);
		
		//设置显示的页数
		\$thisPage->rollPage = 3;
		\$thisPage->setConfig('theme',' %upPage% %downPage% %linkPage%');
		\$limit = \$thisPage->firstRow. ',' .\$thisPage->listRows;	
		\$page = \$thisPage->show();
	}else {
		\$limit = "$limit";
	}
	

	\$_userlist = D('MemberView')->where(\$where)->order("$orderby")->limit(\$limit)->select();
	if (empty(\$_userlist)) {
		\$_userlist = array();
	}

	foreach(\$_userlist as \$autoindex => \$userlist):
	//开启路由
	if(C('URL_ROUTER_ON') == true) {
		\$userlist['url'] = U('u/'. \$userlist['id']);
	}else {
		\$userlist['url'] = U(GROUP_NAME.'/Public/user', array('id'=> \$userlist['id']));
	}


?>
str;
	$str .= $content;
	$str .='<?php endforeach;?>';
	return $str;

	}

		//announce list
public function _announcelist($attr, $content) {
		$attr = $this->parseXmlAttr($attr, 'announcelist');
		$titlelen = empty($attr['titlelen'])? 0 : intval($attr['titlelen']);
		$infolen = empty($attr['infolen'])? 0 : intval($attr['infolen']);		
		$orderby = empty($attr['orderby'])? 'starttime DESC' : $attr['orderby'];
		$limit = empty($attr['limit'])? '10' : $attr['limit'];
		$pagesize = empty($attr['pagesize'])? '0' : $attr['pagesize'];
	

		
		$str = <<<str
<?php

	\$where = array('endtime' => array('gt',time()));


	//分页
	if ($pagesize > 0) {
		
		import('ORG.Util.Page');
		\$count = M('announce')->where(\$where)->count();

		\$thisPage = new Page(\$count, $pagesize);
		

		//设置显示的页数
		\$thisPage->rollPage = 3;
		\$thisPage->setConfig('theme',' %upPage% %downPage% %linkPage%');
		\$limit = \$thisPage->firstRow. ',' .\$thisPage->listRows;	
		\$page = \$thisPage->show();
	}else {
		\$limit = "$limit";
	}
	

	\$_announcelist = M('announce')->where(\$where)->order("$orderby")->limit(\$limit)->select();
	if (empty(\$_announcelist)) {
		\$_announcelist = array();
	}

	foreach(\$_announcelist as \$autoindex => \$announcelist):

	if($titlelen) \$announcelist['title'] = str2sub(\$announcelist['title'], $titlelen, 0);
	if($infolen) \$announcelist['content'] = str2sub(strip_tags(\$announcelist['content']), $infolen, 0);//清除html再截取


?>
str;
	$str .= $content;
	$str .='<?php endforeach;?>';
	return $str;

	}


//friend Link list
	public function _flink($attr, $content) {
		$attr = $this->parseXmlAttr($attr, 'flink');
		$typeid = isset($attr['typeid']) ? trim($attr['typeid']) : 0;
		$typeid = trim($typeid) == '' ? 0 : $typeid;
		$titlelen = empty($attr['titlelen'])? 0 : intval($attr['titlelen']);
		$infolen = empty($attr['infolen'])? 0 : intval($attr['infolen']);		
		$orderby = empty($attr['orderby'])? 'sort ASC' : $attr['orderby'];
		$limit = empty($attr['limit'])? '10' : $attr['limit'];
		$pagesize = empty($attr['pagesize'])? '0' : $attr['pagesize'];
		//echo "$typeid---------";

		
		$str = <<<str
<?php
	\$typeid = $typeid;	
	if (\$typeid>0 || substr(\$typeid,0,1) == '$') {
		\$where = array('ischeck'=> \$typeid);
	}else {
		\$where = array('id' => array('gt',0));
	}

	//分页
	if ($pagesize > 0) {
		
		import('ORG.Util.Page');
		\$count = M('link')->where(\$where)->count();

		\$thisPage = new Page(\$count, $pagesize);
		

		//设置显示的页数
		\$thisPage->rollPage = 3;
		\$thisPage->setConfig('theme',' %upPage% %downPage% %linkPage%');
		\$limit = \$thisPage->firstRow. ',' .\$thisPage->listRows;	
		\$page = \$thisPage->show();
	}else {
		\$limit = "$limit";
	}
	

	\$_flink = M('link')->where(\$where)->order("$orderby")->limit(\$limit)->select();
	if (empty(\$_flink)) {
		\$_flink = array();
	}

	foreach(\$_flink as \$autoindex => \$flink):



?>
str;
	$str .= $content;
	$str .='<?php endforeach;?>';
	return $str;

	}
		//picplay list
public function _picplay($attr, $content) {
		$attr = $this->parseXmlAttr($attr, 'picplay');
		$orderby = empty($attr['orderby'])? 'sort DESC' : $attr['orderby'];
		$limit = empty($attr['limit'])? '10' : $attr['limit'];
		$pagesize = empty($attr['pagesize'])? '0' : $attr['pagesize'];
	
		$str = <<<str
<?php

	//分页
	if ($pagesize > 0) {
		
		import('ORG.Util.Page');
		\$count = M('picplay')->count();

		\$thisPage = new Page(\$count, $pagesize);
		

		//设置显示的页数
		\$thisPage->rollPage = 3;
		\$thisPage->setConfig('theme',' %upPage% %downPage% %linkPage%');
		\$limit = \$thisPage->firstRow. ',' .\$thisPage->listRows;	
		\$page = \$thisPage->show();
	}else {
		\$limit = "$limit";
	}
	

	\$_picplaylist = M('picplay')->order("$orderby")->limit(\$limit)->select();
	if (empty(\$_picplaylist)) {
		\$_picplaylist = array();
	}

	foreach(\$_picplaylist as \$autoindex => \$picplay):
		\$picplay['url'] = strlen(\$picplay['url']) > 7 ? \$picplay['url'] : 'javascript:void(0)';
	


?>
str;
	$str .= $content;
	$str .='<?php endforeach;?>';
	return $str;

	}
	public function _block($attr, $content) {
		$attr = !empty($attr)? $this->parseXmlAttr($attr, 'block') : null;
		$name = isset($attr['name']) ? $attr['name'] : '';
		$infolen = empty($attr['infolen']) ? 0 : intval($attr['infolen']);
		$textflag = empty($attr['textflag']) ? 0 : 1;

		$name = trim(htmlspecialchars($name));
		$str =<<<str
<?php

	\$block = getBlock("$name");
	\$block_content = '';
	if (\$block) {
		if (\$block['blocktype'] == 2) {
			if (!$textflag) {
				\$block_content = '<img src="'. \$block['content'] .'" />';
			}else {
				\$block_content = \$block['content'];
			}
			
		}else {
			if($infolen) {
				\$block_content = str2sub(strip_tags(\$block['content']), $infolen, 0);//清除html再截取
			}else {
				\$block_content = \$block['content'];
			}
		}
	}
	echo \$block_content;


?>
str;

		return $str;
	}






	/**/
	public function _position($attr, $content) {
		$attr = !empty($attr)?$this->parseXmlAttr($attr, 'position') : null;
		$typeid = !isset($attr['typeid']) || $attr['typeid'] == '' ? I('get.cid', 0, 'intval') : trim($attr['typeid']);//只接收一个栏目ID
		$ismobile = empty($attr['ismobile'])? 0 : 1;
		$sname = isset($attr['sname'])? trim($attr['sname']) : '';	
		$surl = isset($attr['surl'])? trim($attr['surl']) : '';	
		$delimiter = isset($attr['delimiter'])? trim($attr['delimiter']) : '';

		$str =<<<str
<?php
		\$_sname = "$sname";
		if ($typeid == 0 &&  \$_sname == '') {
			\$_sname = isset(\$title) ? \$title : '';
		}
	echo getPosition($typeid, \$_sname, "$surl", $ismobile, "$delimiter");

?>
str;

		return $str;
	}


	public function _prev($attr, $content) {
		$attr = !empty($attr)? $this->parseXmlAttr($attr, 'prev') : null;
		$titlelen = empty($attr['titlelen']) ? 0 : intval($attr['titlelen']);
		$str =<<<str
<?php

	if(empty(\$content['id']) || empty(\$content['cid']) || empty(\$cate['tablename']) ) {
		echo '无记录';
	} else {
		//上一条记录
        \$_vo=D(ucfirst(\$cate['tablename'].'View'))->where(array(\$cate['tablename'].'.status' => 0, 'id' => array('lt',\$content['id'])))->order('id desc')->find();

        if (\$_vo) {

			\$_jumpflag = (\$_vo['flag'] & B_JUMP) == B_JUMP? true : false;
        	\$_vo['url'] = getContentUrl(\$_vo['id'], \$_vo['cid'], \$_vo['ename'], \$_jumpflag, \$_vo['jumpurl']);
			if($titlelen) \$_vo['title'] = str2sub(\$_vo['title'], $titlelen, 0);	
			echo '<a href="'. \$_vo['url'] .'">'. \$_vo['title'] .'</a>';
        } else {
        	echo '第一篇';
        }
	}

?>
str;

		return $str;
	}

	public function _next($attr, $content) {
		$attr = !empty($attr)? $this->parseXmlAttr($attr, 'next') : null;
		$titlelen = empty($attr['titlelen']) ? 0 : intval($attr['titlelen']);
		$str =<<<str
<?php
	if(empty(\$content['id']) || empty(\$content['cid']) || empty(\$cate['tablename']) ) {
		echo '无记录';
	} else {
		//下一条记录
        \$_vo=D(ucfirst(\$cate['tablename'].'View'))->where(array(\$cate['tablename'].'.status' => 0,'id' => array('gt',\$content['id'])))->order('id ASC')->find();

        if (\$_vo) {	

			\$_jumpflag = (\$_vo['flag'] & B_JUMP) == B_JUMP? true : false;
        	\$_vo['url'] = getContentUrl(\$_vo['id'], \$_vo['cid'], \$_vo['ename'], \$_jumpflag, \$_vo['jumpurl']);				
			if($titlelen) \$_vo['title'] = str2sub(\$_vo['title'], $titlelen, 0);	
			echo '<a href="'. \$_vo['url'] .'">'. \$_vo['title'] .'</a>';
        } else {
        	echo '最后一篇';
        }
	}

?>
str;

		return $str;
	}

	//针对内容页
	public function _click($attr, $content) {

		$str =<<<str
<?php

	if (!empty(\$id) && !empty(\$tablename)) {


		//开启静态缓存
		if (C('HTML_CACHE_ON') == true) {
			echo '<script type="text/javascript" src="'.U(GROUP_NAME. '/Public/click', array('id' => \$id, 'tn' => \$tablename)).'"></script>';
		}
		else {
			echo getClick(\$id, \$tablename);
		}
		
		
	}

?>
str;
		return $str;
	}
	



	public function _company($attr, $content) {
		return C('cfg_webname');
	}

	public function _sitetitle($attr, $content) {
		return C('cfg_webtitle');
	}

	public function _siteurl($attr, $content) {
		return C('cfg_weburl');
	}

	public function _sitekeywords($attr, $content) {
		return C('cfg_keywords');
	}

	public function _sitedescription($attr, $content) {
		return C('cfg_description');
	}
	public function _address($attr, $content) {
		return C('cfg_address');
	}

	public function _phone($attr, $content) {
		return C('cfg_phone');
	}
	public function _qq($attr, $content) {
		return C('cfg_qq');
	}
	
	public function _copyright($attr, $content) {
		return C('cfg_powerby');
	}
	public function _swturl($attr, $content) {
		return C('cfg_swturl');
	}

	public function _searchurl($attr, $content) {
		return U('Search/index');
	}


	public function _gbookurl($attr, $content) {
		return U('Guestbook/index');
	}

	public function _gbookaddurl($attr, $content) {
		return U('Guestbook/add');
	}
	public function _vcodeurl($attr, $content) {
		return U('Public/verify', '');
	}

	public function _mobileauto($attr, $content) {
		$attr = !empty($attr)? $this->parseXmlAttr($attr, 'mobileauto') : null;
		$flag = empty($attr['flag']) ? 0 : intval($attr['flag']);

		$str =<<<str
<?php
		\$_flag = $flag;
		switch (\$_flag) {
			case 0:
				if (C('cfg_mobile_auto') == 1) {
					//开启静态缓存
					if (C('HTML_CACHE_ON') == true) {
						echo '<script type="text/javascript" src="__DATA__/static/js/mobile_auto.js"></script>';
					}
					else {
						goMobile();
					}
				}
				break;
			case 1:
				goMobile();
				break;
			case 2:
				if (C('cfg_mobile_auto') == 1) {
					echo '<script type="text/javascript" src="__DATA__/static/js/mobile_auto.js"></script>';					
				}
				break;
			
			default:
				break;
		}
	

?>
str;

		return $str;
	}


}


?>
