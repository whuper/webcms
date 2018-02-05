<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($title); ?>-厦龙汽车</title>
<meta name="keywords" content="车驿折扣车,杭州厦龙汽车销售有限公司" />
<meta name="description" content="车驿折扣车" />

<link href="__PUBLIC__/css/bootstrap.min.css" rel="stylesheet">

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

<nav class="navbar navbar-default" role="navigation">
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
			<!--
            <li class="active"><a href="#">车型总览</a></li>
            <li><a href="#">SVN</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    Java
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">jmeter</a></li>
                    <li><a href="#">EJB</a></li>
                    <li><a href="#">Jasper Report</a></li>
					<li class="divider"></li>
                   
                </ul>
            </li>
			-->
        </ul>
    </div>
    </div>
</nav>




<div id="myCarousel" class="carousel slide">
			    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol> 

    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="__PUBLIC__/images/slide1.png" alt="Second slide">
        </div>
        <div class="item">
            <img src="__PUBLIC__/images/slide2.png" alt="Second slide">
        </div>
        <div class="item">
            <img src="__PUBLIC__/images/slide3.png" alt="Second slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" 
        data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" href="#myCarousel" 
        data-slide="next">&rsaquo;
    </a>
</div>
<script type="text/javascript" charset="utf-8">
$('.carousel').carousel({
		interval:2000,
		pause:'hover',
		wrap:true
		});
</script>


<div class="container">
<div class="row">
  <div class="col-sm-4 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label</p>
      </div>
    </div>

  </div>

  <div class="col-sm-4 col-md-3">

    <div class="thumbnail">
      <img src="__PUBLIC__/images/excellegt.png" alt="...">
      <div class="caption">
        <!--<h3>Thumbnail label</h3>-->
        <p>Thumbnail label.</p>
      </div>
    </div>

  </div>


</div>

</div>
	

<div class="footer">
    
        <div class="ftlink clearfix ">
				<?php if(is_array($nav_list)): $i = 0; $__LIST__ = array_slice($nav_list,0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
				
      <!--厦龙汽车-->
        
    </div>
    <div class="copyright">
       <p class="foot-icp">
           浙ICP备09007265号 版权所有© 厦龙汽车 杭州市拱墅区石祥路589号
</p>
    </div>
</div>

</body></html>