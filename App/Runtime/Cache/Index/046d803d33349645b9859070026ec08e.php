<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($title); ?>-厦龙汽车</title>
<meta name="keywords" content="车驿折扣车,杭州厦龙汽车销售有限公司" />
<meta name="description" content="车驿折扣车" />

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

<nav class="navbar navbar-default <?php if($cid or $cate): ?>cata<?php endif; ?>" role="navigation">
    <div class="container">
    <div class="navbar-header">
        <a class="navbar-brand" href="__APP__">夏龙房车</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
			<?php if(is_array($nav_list)): $i = 0; $__LIST__ = array_slice($nav_list,0,6,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li id="nav_<?php echo ($vo["id"]); ?>"  <?php if(!empty($vo["sub_nav"])): ?>class="dropdown"<?php endif; ?> >
							<a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["name"]); ?></a>
				 <?php if(!empty($vo["sub_nav"])): ?><ul class="dropdown-menu">
								<?php if(is_array($vo["sub_nav"])): $i = 0; $__LIST__ = $vo["sub_nav"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($sub["url"]); ?>" 	<?php if($sub['type'] == 2): ?>target="_blank"<?php endif; ?> ><?php echo ($sub["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
							</ul><?php endif; ?>
						</li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </div>
    </div>
</nav>

<?php if($cid or $cate): ?><div class="container-fluid cata-bg" style="background-image:url(__PUBLIC__/images/<?php echo (($cata_pic)?($cata_pic):"vehicle.jpg"); ?>);">
	
</div><?php endif; ?>


<div class="container center_1000">
	<div class="page-header">
  <h3><?php echo ($content["title"]); ?><small> <?php echo (date_trancer($content["updatetime"])); ?></small></h3>
</div>
		
		<!--<p>
	 <a href="<?php echo U('List/index', array( 'cid' => $cate['id'] ));?>" >返回列表</a></li>
		</p>-->
		
		<div class="article">
		 <?php echo ($content["content"]); ?>		
		</div>
	
</div>

    <div class="container-fluid footer text-center padding30">
	

	<div class="ftlink clearfix ">
				<?php if(is_array($nav_list)): $i = 0; $__LIST__ = array_slice($nav_list,0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
				
      <!--厦龙汽车-->
        
    </div>

	<div class="row">

	<div class="col-sm-2 col-md-2">
		 <div class="text-center">
		 	<img src="__PUBLIC__/images/p-icon3.png" />
		 </div>
	</div>


		
	</div>
	

    <div class="copyright">
       <p class="foot-icp">
           浙ICP备09007265号 版权所有© 厦龙汽车 杭州市拱墅区石祥路589号
	</p>
    </div>

</div>


</body>
</html>