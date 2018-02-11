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

<nav class="navbar navbar-default <?php if($cid or $cate): ?>cata<?php endif; ?> " role="navigation">
    <div class="container">
    <div class="navbar-header text-center">
			
        <a class="navbar-brand" href="__APP__">
		<img class="logo" src="__PUBLIC__/images/logo2.png" />
		</a>

    </div>
    <div>
        <ul class="nav navbar-nav">
			<li class="text-center" id="nav_<?php echo ($vo["id"]); ?>"> <a href="__APP__">网站首页</a> </li>
			<?php if(is_array($nav_list)): $i = 0; $__LIST__ = array_slice($nav_list,0,6,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="text-center" id="nav_<?php echo ($vo["id"]); ?>"  <?php if(!empty($vo["sub_nav"])): ?>class="dropdown"<?php endif; ?> >
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

<?php if($cid or $cate): ?><div class="container-fluid cata-bg" style="background-image:url(__PUBLIC__/images/<?php echo (($cata_pic)?($cata_pic):"vehicle.jpg"); ?>);">
	
</div><?php endif; ?>




<div id="myCarousel" class="carousel slide">
			    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
		<!--
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
		-->
		
    </ol> 

    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
      
	<?php
 if (0 > 0) { import('ORG.Util.Page'); $count = M('picplay')->count(); $thisPage = new Page($count, 0); $thisPage->rollPage = 3; $thisPage->setConfig('theme',' %upPage% %downPage% %linkPage%'); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10"; } $_picplaylist = M('picplay')->order("sort DESC")->limit($limit)->select(); if (empty($_picplaylist)) { $_picplaylist = array(); } foreach($_picplaylist as $autoindex => $picplay): $picplay['url'] = strlen($picplay['url']) > 7 ? $picplay['url'] : 'javascript:void(0)'; ?><div class="item text-center <?php if($picplay["id"] == 4): ?>active<?php endif; ?>">
		<img src="<?php echo ($picplay["url"]); ?>" data-index="<?php echo ($key); ?>">
        </div><?php endforeach;?>

    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" 
        data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    </a>
    <a class="carousel-control right" href="#myCarousel" 
        data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </a>
</div>
<script type="text/javascript" charset="utf-8">
$('.carousel').carousel({
		interval:5000,
		pause:'hover',
		wrap:true
		});
</script>


<div class="container mar-top">


			
	<div class="row brand-ico hidden-xs">

	<table class="table table-condensed">
		<tr>
			<?php $__FOR_START_31428__=1;$__FOR_END_31428__=10;for($i=$__FOR_START_31428__;$i < $__FOR_END_31428__;$i+=1){ ?><td><img class="brnad-ico" src="__PUBLIC__/images/<?php echo ($i); ?>.jpg" /></td><?php } ?>  
		</tr>
	</table>
	
		
	</div>
	<!--row //-->


		


<div class="row mar-top">
  <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label</p>
      </div>
	  <p class="view-box text-right">
	  <a href="#" class="btn btn-default" role="button">查看详情</a>
	  </p>
    </div>

  </div>

  <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label.</p>
      </div>
	   <p class="view-box text-right">
	  <a href="#" class="btn btn-default" role="button">查看详情</a>
	  </p>
    </div>

  </div>

   <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label</p>
      </div>
    </div>

  </div>

  <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label.</p>
      </div>
    </div>

  </div>


</div>
<!--row //-->

<div class="row">

	 <div class="col-sm-4 col-md-4">

		 <div class="panel panel-default">
		 <div class="panel-heading">
    <h3 class="panel-title">新闻动态</h3>
  </div>
  <div class="panel-body">
   		 <ul class="list">
		 <?php
 $typeid = 2; $keyword = ""; $nochild = "0"; if ($typeid>0 || substr($typeid,0,1) == '$') { import('Class.Category', APP_PATH); $_selfcate = Category::getSelf(getCategory(), $typeid); $_tablename = strtolower($_selfcate['tablename']); if($nochild){ $ids = $typeid; }else { $ids = Category::getChildsId(getCategory(), $typeid, true); } $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$keyword.'%'); $isSearch = true; } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (10 > 0) { import('ORG.Util.Page'); $count = D(ucfirst($_tablename ).'View')->where($where)->count(); $thisPage = new Page($count, 10); $ename = I('e', '', 'trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $thisPage->url = ''.$ename. '/p'; } $thisPage->rollPage = 5; $thisPage->setConfig('header','条记录'); $thisPage->setConfig('first', '第一页'); $thisPage->setConfig('last', '最后一页'); $thisPage->setConfig('prev', '上一页'); $thisPage->setConfig('next', '下一页'); $thisPage->setConfig('theme', ' %nowPage%/%totalPage% 页 %upPage% %downPage%  %prePage% %linkPage% %nextPage%'); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10"; } $_list = D(ucfirst($_tablename ).'View')->where($where)->order("weight desc,id DESC")->limit($limit)->select(); if (empty($_list)) { if($isSearch){ $_list = array("nodata"=>true); } else { $_list = array(); } } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = getContentUrl($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(0) $list['title'] = str2sub($list['title'], 0, 0); if(80) $list['description'] = str2sub($list['description'], 80, 0); ?><li class="list"> <a href="<?php echo ($list["url"]); ?>"> <?php echo ($list["title"]); ?> </a> <span class="time hidden-xs"> <?php echo (date_trancer($list["updatetime"])); ?></span></li><?php endforeach;?>

</ul>
  </div>
 
</div>
		 </div>
		 <!--col-md-4-->


		 <div class="col-sm-4 col-md-4">
			 	 <div class="panel panel-default">
		 <div class="panel-heading">
    <h3 class="panel-title">优惠活动</h3>
  </div>
  <div class="panel-body">

  </div>
 
</div>
		 </div>
		  <!--col-md-4-->

		 <div class="col-sm-4 col-md-4">

			 	 	 <div class="panel panel-default">
		 <div class="panel-heading">
    <h3 class="panel-title">售前咨询</h3>
  </div>
  <div class="panel-body">

  </div>
 
</div>
		 </div>
		  <!--col-md-4-->
	
</div>

<!--row //-->

<h3>推荐车型 </h3>
<div class="row">
  <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label</p>
      </div>
    </div>

  </div>

  <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label.</p>
      </div>
    </div>

  </div>

   <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label</p>
      </div>
    </div>

  </div>

  <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label.</p>
      </div>
    </div>

  </div>

    <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label.</p>
      </div>
    </div>

  </div>


    <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label.</p>
      </div>
    </div>

  </div>

    <div class="col-sm-3 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label.</p>
      </div>
    </div>

  </div>


</div>
<!--row //-->

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


</body>
</html>