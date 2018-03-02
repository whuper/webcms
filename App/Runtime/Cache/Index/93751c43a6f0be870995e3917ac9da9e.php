<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($title); ?>-厦龙房车汇-杭州厦龙汽车销售有限公司</title>
<meta name="keywords" content="厦龙房车汇,,厦龙汽车,杭州厦龙汽车销售有限公司" />
<meta name="description" content="厦龙房车汇" />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="__PUBLIC__/css/bootstrap.min.css" rel="stylesheet">
<link href="__PUBLIC__/css/layout.css" rel="stylesheet">

<script type="text/javascript" src="__PUBLIC__/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/js/bootstrap.min.js"></script>

<!--//当前导航栏样式-->
<style type="text/css" media="screen">
		#nav_<?php echo ($cid); ?>{
			border-color:#1B4B9f;
		}
		#nav_<?php echo ($cid); ?>>a{
			color: #1B4B9f;
			}

</style>
</head>
<body>                                          

<nav id="top" class="navbar navbar-default <?php if($cid or $cate): ?>cata<?php endif; ?> " role="navigation">
    <div class="container">
			

    <div class="navbar-header">

		<div class="navbar-brand">
        		<img class="logo img-responsive" src="__PUBLIC__/images/logo2.png"/>
        </div>
	
		 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navBar">  
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

    </div>
    <div class="collapse navbar-collapse" id="navBar">
        <ul class="nav navbar-nav">
			<li class="text-center" id="nav_<?php echo ($vo["id"]); ?>"> <a href="__APP__">网站首页</a> </li>
			<?php if(is_array($nav_list)): $i = 0; $__LIST__ = array_slice($nav_list,0,6,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="text-center <?php if(!empty($vo["sub_nav"])): ?>dropdown<?php endif; ?>" id="nav_<?php echo ($vo["id"]); ?>"   >
							<a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["name"]); ?></a>
				 <?php if(!empty($vo["sub_nav"])): ?><ul class="dropdown-menu hidden-xs">
								<?php if(is_array($vo["sub_nav"])): $i = 0; $__LIST__ = $vo["sub_nav"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($sub["url"]); ?>" 	<?php if($sub['type'] == 2): ?>target="_blank"<?php endif; ?> ><?php echo ($sub["name"]); ?></a></li>
					<li role="separator" class="divider"></li><?php endforeach; endif; else: echo "" ;endif; ?>
							</ul><?php endif; ?>
						</li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
		 <form class="navbar-form navbar-right" method="post" action="/webcms/index.php?s=/Search/index.html">
        <div class="form-group">
          <input type="text" name="keyword" type="text" id="keyword" class="form-control" placeholder="请输入内容">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
      </form>
    </div>
    </div>
</nav>

<?php if($cid or $cate): ?><div class="container-fluid cata-bg hidden-xs" style="background-image:url(__PUBLIC__/images/<?php echo (($cata_pic)?($cata_pic):"vehicle.jpg?t=24"); ?>);">
	
</div><?php endif; ?>


<div class="container">

	<div class="row cata-list-box">
		

	   <ul class="nav navbar-nav hidden-xs">
				<?php
 $typeid = intval(1); $type = 'son'; $__catlist = getCategory(0); import('Class.Category', APP_PATH); if (0 == 0) { $__catlist = Category::clearPageAndLink($__catlist); } if($typeid == 0 || $type == 'top') { $_catlist = Category::unlimitedForLayer($__catlist); }else { if ($type == 'self') { $_typeinfo = Category::getSelf($__catlist, $typeid ); $_catlist = Category::unlimitedForLayer($__catlist, 'child', $_typeinfo['pid']); }else { $_catlist = Category::unlimitedForLayer($__catlist, 'child', $typeid); } } foreach($_catlist as $autoindex => $catlist): if($autoindex >= 10) break; $catlist['url'] = getUrl($catlist); $subcat = Category::unlimitedForLayer($__catlist, 'child', $catlist['id']); if(!empty($subcat)){ $catlist['hasSub'] = true; } ?><li <?php if($catlist['hasSub']): ?>class="dropdown"<?php endif; ?> > <a href="<?php echo ($catlist["url"]); ?>"> <?php echo ($catlist["name"]); ?></a> 
					<?php if($catlist['hasSub']): ?><ul class="dropdown-menu" >
							<?php
 $_navlist = getCategory(1); import('Class.Category', APP_PATH); $typeid = $catlist['id']; if($catlist['id'] == 0) { $_navlist = Category::unlimitedForLayer($_navlist); }else { $_navlist = Category::unlimitedForLayer($_navlist, 'child', $catlist['id']); } foreach($_navlist as $autoindex => $navlist): $navlist['url'] = getUrl($navlist); ?><li> <a href="<?php echo ($navlist["url"]); ?>" ><?php echo ($navlist["name"]); ?> </a>	</li><?php endforeach;?>
						</ul><?php endif; ?>
				</li><?php endforeach;?>
				
				</ul>

			

	</div>
	<div class="row search-box">
		<h5 >您当前的位置：<?php
 $_sname = ""; if (1 == 0 && $_sname == '') { $_sname = isset($title) ? $title : ''; } echo getPosition(1, $_sname, "", 0, ""); ?></h5>

		<div class="col-xs-8 col-md-8">
			</div>

			<div class="col-xs-4 col-md-4">
					 <form class="navbar-form navbar-right hidden-xs" method="post" action="/webcms/index.php?s=/Search/index.html">
        <div class="form-group">
         <input type="text" name="keyword" type="text" id="keyword" class="form-control" placeholder="请输入型号">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
      </form>
			</div>
		</div>
	
               
			<div class="row">
			<?php
 $typeid = $cid; $keyword = ""; $nochild = "0"; if ($typeid>0 || substr($typeid,0,1) == '$') { import('Class.Category', APP_PATH); $_selfcate = Category::getSelf(getCategory(), $typeid); $_tablename = strtolower($_selfcate['tablename']); if($nochild){ $ids = $typeid; }else { $ids = Category::getChildsId(getCategory(), $typeid, true); } $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$keyword.'%'); $isSearch = true; } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (10 > 0) { import('ORG.Util.Page'); $count = D(ucfirst($_tablename ).'View')->where($where)->count(); $thisPage = new Page($count, 10); $ename = I('e', '', 'trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $thisPage->url = ''.$ename. '/p'; } $thisPage->rollPage = 5; $thisPage->setConfig('header','条记录'); $thisPage->setConfig('first', '第一页'); $thisPage->setConfig('last', '最后一页'); $thisPage->setConfig('prev', '上一页'); $thisPage->setConfig('next', '下一页'); $thisPage->setConfig('theme', '<li><a>%totalRow% %header%</a></li>  %upPage% %downPage%  %prePage% %linkPage% %nextPage%'); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10"; } $_list = D(ucfirst($_tablename ).'View')->where($where)->order("weight desc,id DESC")->limit($limit)->select(); if (empty($_list)) { if($isSearch){ $_list = array("nodata"=>true); } else { $_list = array(); } } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = getContentUrl($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(0) $list['title'] = str2sub($list['title'], 0, 0); if(80) $list['description'] = str2sub($list['description'], 80, 0); ?><div class="col-xs-6 col-md-3">
				<div class="thumbnail">
					
			
				
				<a href="<?php echo ($list["url"]); ?>" >
					<img src="<?php echo (($list["litpic"])?($list["litpic"]):'uploads/system/nopic.png'); ?>" alt="<?php echo ($list["title"]); ?>">
				</a>
				<p>
				<?php echo (msubstr($list["title"],0,44,'utf-8',false)); ?>
				</p>
				 <!--<p><?php echo ($list["description"]); ?></p>-->
				 	</div>
			  </div><?php endforeach;?>  
			</div>

			          <nav aria-label="Page navigation">
		 <ul class="pagination">
								<?php echo ($page); ?>
						  </ul>
		</nav>

							
		
    </div>


<div class="container-fluid footer text-center padding30">
	



	<div class="row">
	<div class="col-sm-3 col-md-3">

	</div>
			<div class="col-sm-3 col-md-3">
		 <div class="text-center" >
		 	<img class="code" src="__PUBLIC__/images/logo.png" />
		 </div>
		<p class="text-center">
		 厦龙房车汇 
		</p>
	</div>

	<div class="col-sm-3 col-md-3">
		 <div class="text-center" >
		 	<img class="code" src="__PUBLIC__/images/code.jpg" />
		 </div>
		<p class="text-center">
		 扫描二维码,关注夏龙房车公众号
		</p>
	</div>

		
	</div>

		<div class="row">
			<p>
</p>
			<div class="col-sm-3 col-md-3">
				</div>

	<div class="col-sm-6 col-md-6">
		 
		<div class="btn-group btn-group-justified" role="group" aria-label="...">

				<a class="btn" href="__APP__">网站首页</a>
				<?php if(is_array($nav_list)): $i = 0; $__LIST__ = array_slice($nav_list,0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a class="btn" href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<p>
</p>
				
        
	</div>

		
	</div>
	<!--row //-->
	
	

    <div class="copyright">
		<p>
		 厦龙房车汇-杭州厦龙汽车销售有限公司
		</p>
       <p class="text-center">
           浙ICP备******号 版权所有© 厦龙房车汇 
		   公司地址:杭州市拱墅区石祥路589号
	</p>
    </div>

</div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?9dd680c607d2c15c84566c6077f088ff";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

<div class="back-box">
<!--	
<a href="javascript:void(0)" class=" text-center">
	<p class="text-center">
	<img src="__PUBLIC__/images/icon_support.png" />
	</p>
	
	<p class="title">
	在线客服
	</p>
	
</a>
-->
<a href="#top" class="back-to-top text-center">
		<p>
	<img src="__PUBLIC__/images/icon_top.png" />
	</p>
	<!--<p class="title">
	返回顶部
	</p>-->
	
</a>
</div>


</body>
</html>