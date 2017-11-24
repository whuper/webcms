<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($title); ?>-厦龙汽车</title>
<meta name="keywords" content="车驿折扣车,杭州厦龙汽车销售有限公司" />
<meta name="description" content="车驿折扣车" />

<link href="__PUBLIC__/css/layout.css" rel="stylesheet">
<link href="__PUBLIC__/css/common.css" rel="stylesheet">

<script type="text/javascript" src="__PUBLIC__/js/jquery-1.9.1.min.js"></script>

<script type="text/javascript" src="__PUBLIC__/js/new/jquery.SuperSlide.2.1.js"></script>

<!--//当前导航栏样式-->
<style type="text/css" media="screen">
<?php if($id): ?>#nav_<?php echo ($parent_cate["id"]); ?> {
	border-color:#1B4B9f;
}
#nav_<?php echo ($parent_cate["id"]); ?>>a{
	color: #1B4B9f;

	}
	<?php else: ?>

#nav_<?php echo ($cid); ?> {
	border-color:#1B4B9f;
}
#nav_<?php echo ($cid); ?>>a{
    color: #1B4B9f;

	}<?php endif; ?>

	
</style>
</head>
<body>                                          
<div class="tool-top">
</div>
<div class="header">
		<div class="head-top">
		<div class="fl">
			<img src="__PUBLIC__/images/logo.jpg" />
			
		</div>
		<div class="frtel">
			<h3>咨询热线： </h3>
			<p class="tel">
			400-880-1713
			</p>
		</div>
	</div>
		<div class="nav">
			<ul class="nav-first clearfix">
				<li id="nav_" ><a href="index.php">首页</a></li>
				<?php if(is_array($nav_list)): $i = 0; $__LIST__ = array_slice($nav_list,0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li id="nav_<?php echo ($vo["id"]); ?>" >
				<a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["name"]); ?></a>
					 <?php if(!empty($vo["sub_nav"])): ?><ul class="nav-second">
                            <?php if(is_array($vo["sub_nav"])): $i = 0; $__LIST__ = $vo["sub_nav"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($sub["url"]); ?>" 	<?php if($sub['type'] == 2): ?>target="_blank"<?php endif; ?> ><?php echo ($sub["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul><?php endif; ?>
				</li><?php endforeach; endif; else: echo "" ;endif; ?>
			</ul>
<script type="text/javascript">
jQuery(document).ready(function(){

$("ul.nav-first>li").hover(function(){
    $(this).find('.nav-second').show();
},function(){
   $(this).find('.nav-second').hide();
});


	var qcloud={};
	$('[_t_nav]').hover(function(){
		var _nav = $(this).attr('_t_nav');
		clearTimeout( qcloud[ _nav + '_timer' ] );
		qcloud[ _nav + '_timer' ] = setTimeout(function(){
		$('[_t_nav]').each(function(){
		$(this)[ _nav == $(this).attr('_t_nav') ? 'addClass':'removeClass' ]('nav-up-selected');
		});
		$('#'+_nav).stop(true,true).slideDown(200);
		}, 150);
	},function(){
		var _nav = $(this).attr('_t_nav');
		clearTimeout( qcloud[ _nav + '_timer' ] );
		qcloud[ _nav + '_timer' ] = setTimeout(function(){
		$('[_t_nav]').removeClass('nav-up-selected');
		$('#'+_nav).stop(true,true).slideUp(200);
		}, 150);
	});
});
</script>
			
		</div>
	</div>

	<!--
<?php if($cid or $cate): ?><link href="__PUBLIC__/css/inside.css" rel="stylesheet">
<div class="banner" style="height:299px;">
	<div class="bd" style="height:299px;">
		<div class="tempWrap" style="overflow:hidden; position:relative; width:1920px">
			<ul style="width: 1920px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">
				<li style="background:url(__PUBLIC__/images/20160220042834.jpg) center top no-repeat; height: 299px; float: left; width: 1920px;"><a href="#"></a></li>

		</ul></div>
	</div>
	<div class="hd">
		<ul><li class="on"></li></ul>
	</div>
</div><?php endif; ?>
-->
	<!--可判断是否是首页-->
<?php if($cid or $cate): ?><div class="cata_pic" style="background-image:url(__PUBLIC__/images/cata/<?php echo (($cata_pic)?($cata_pic):"product.jpg"); ?>);">

</div><?php endif; ?>
<script type="text/javascript" charset="utf-8">

	$(function() {
		$(window).scroll(function() {
			if ($(window).scrollTop() > 100) {
					$('.backtop').fadeIn(500);
				} 
			else {
				$('.backtop').fadeOut(500);
				}
				});
				$('.backtop').click(function() {
				$('html, body').animate({
				scrollTop: 0
				},1000, "easeOutExpo");
		});
		$(':text').each(function(){
		    var val=$(this).val();
		    $(this).focus(function() {
		        if( $(this).val() == val) {
		            this.value = ''
		        }
		    });
		    $(this).blur(function() {
		    if( $(this).val() == '') {
		        this.value = val;
		        }
		    });
		});
		$('.sidebar li').outerWidth(100/$('.sidebar li').length+'%')
		jQuery(".banner").slide({titCell:".hd ul",mainCell:".bd ul",effect:"left",autoPage:'<li></li>',autoPlay:true});		
	}); 
	
</script>

<div class="container center_1000">
			<div class="news-tit">
				<!--<p>
			 <a href="<?php echo U('List/index', array( 'cid' => $cate['id'] ));?>" class="b3" title="返回列表">返回列表</a></li>
				</p>-->
				<h3><?php echo ($content["title"]); ?>	</h3>
                            <p class="time"><?php echo (date_trancer($content["updatetime"])); ?></p>
                        </div>
						<div class="article">
						 <?php echo ($content["content"]); ?>		
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