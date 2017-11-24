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
		#nav_<?php echo ($cid); ?>{
			border-color:#1B4B9f;
		}
		#nav_<?php echo ($cid); ?>>a{
			color: #1B4B9f;
			}

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


<div class="banner" >
		<a class="prev" href="javascript:void(0)"></a>
	<a class="next" href="javascript:void(0)"></a>
    <div class="bd">
				<ul style=""> 
				
                   <li style="background: url(__PUBLIC__/images/1474273653.jpg) center top no-repeat; float: left; width: 1920px;"><a href="javascript:;"></a></li>
                
                                
                    <li style="background: url(__PUBLIC__/images/1474276489.jpg) center top no-repeat; float: left; width: 1920px;"><a href="javascript:;"></a></li>
                
                                
                    <li style="background: url(__PUBLIC__/images/1474795418.jpg) center top no-repeat; float: left; width: 1920px;"><a href="javascript:;"></a></li>
				
		<?php
 if (0 > 0) { import('ORG.Util.Page'); $count = M('picplay')->count(); $thisPage = new Page($count, 0); $thisPage->rollPage = 3; $thisPage->setConfig('theme',' %upPage% %downPage% %linkPage%'); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10"; } $_picplaylist = M('picplay')->order("sort DESC")->limit($limit)->select(); if (empty($_picplaylist)) { $_picplaylist = array(); } foreach($_picplaylist as $autoindex => $picplay): $picplay['url'] = strlen($picplay['url']) > 7 ? $picplay['url'] : 'javascript:void(0)'; ?><li style="background: url(<?php echo ($picplay["pic"]); ?>) center top no-repeat; float: left; width: 1920px;"><a href="<?php echo ($picplay["url"]); ?>"><?php echo ($picplay["name"]); ?></a></li><?php endforeach;?>

						<!--<?php
 $typeid = 23; $keyword = ""; $nochild = "0"; if ($typeid>0 || substr($typeid,0,1) == '$') { import('Class.Category', APP_PATH); $_selfcate = Category::getSelf(getCategory(), $typeid); $_tablename = strtolower($_selfcate['tablename']); if($nochild){ $ids = $typeid; }else { $ids = Category::getChildsId(getCategory(), $typeid, true); } $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (0 > 0) { import('ORG.Util.Page'); $count = D(ucfirst($_tablename ).'View')->where($where)->count(); $thisPage = new Page($count, 0); $ename = I('e', '', 'trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $thisPage->url = ''.$ename. '/p'; } $thisPage->rollPage = 5; $thisPage->setConfig('header','条记录'); $thisPage->setConfig('first', '第一页'); $thisPage->setConfig('last', '最后一页'); $thisPage->setConfig('prev', '上一页'); $thisPage->setConfig('next', '下一页'); $thisPage->setConfig('theme', ' %nowPage%/%totalPage% 页 %upPage% %downPage%  %prePage% %linkPage% %nextPage%'); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "0,8"; } $_list = D(ucfirst($_tablename ).'View')->where($where)->order("weight desc,id DESC")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = getContentUrl($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(0) $list['title'] = str2sub($list['title'], 0, 0); if(0) $list['description'] = str2sub($list['description'], 0, 0); ?>-->
									<!--<li style="background: url(<?php echo ($list["litpic"]); ?>) center top no-repeat; float: left; width: 1920px;"><a href="<?php echo ($list["url"]); ?>"></a></li>-->
									<!--<?php endforeach;?>-->
                
                                    
        </ul>
    </div>
    <div class="hd">
        <ul><li class=""></li><li class="on"></li><li class=""></li></ul>
    </div>

</div>
<!--banner结束 //-->

 

	<div class="center_1000">

		<div class="yt_show">
    <h2>热门推荐</h2>
        <a href="<?php echo U('List/index', array( 'cid' => 5 ));?>" target="_blank"><img src="__PUBLIC__/images/superior_quality_car.jpg" ><span>高档轿车改装</span></a>
        <a href="<?php echo U('List/index', array( 'cid' => 6 ));?>"><img src="__PUBLIC__/images/business_purpose_vehicle.jpg" ><span>商务车改装</span></a>
        <a href="<?php echo U('List/index', array( 'cid' => 7 ));?>" target="_blank"><img src="__PUBLIC__/images/Midsize_commercial_vehicle.jpg"><span>中型商务车改装</span></a>
        <a href="<?php echo U('List/index', array( 'cid' => 8 ));?>" target="_blank"><img src="__PUBLIC__/images/Product_show.jpg" ><span>产品展示车</span></a>
        <a href="<?php echo U('List/index', array( 'cid' => 9 ));?>" target="_blank"><img src="__PUBLIC__/images/xlfc.png"><span>厦龙房车</span></a>
</div>



<div class="product-show">

	  <ul class="pro-list-index clearfix">
		<?php
 $typeid = 1; $keyword = ""; $nochild = "0"; if ($typeid>0 || substr($typeid,0,1) == '$') { import('Class.Category', APP_PATH); $_selfcate = Category::getSelf(getCategory(), $typeid); $_tablename = strtolower($_selfcate['tablename']); if($nochild){ $ids = $typeid; }else { $ids = Category::getChildsId(getCategory(), $typeid, true); } $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (10 > 0) { import('ORG.Util.Page'); $count = D(ucfirst($_tablename ).'View')->where($where)->count(); $thisPage = new Page($count, 10); $ename = I('e', '', 'trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $thisPage->url = ''.$ename. '/p'; } $thisPage->rollPage = 5; $thisPage->setConfig('header','条记录'); $thisPage->setConfig('first', '第一页'); $thisPage->setConfig('last', '最后一页'); $thisPage->setConfig('prev', '上一页'); $thisPage->setConfig('next', '下一页'); $thisPage->setConfig('theme', ' %nowPage%/%totalPage% 页 %upPage% %downPage%  %prePage% %linkPage% %nextPage%'); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10"; } $_list = D(ucfirst($_tablename ).'View')->where($where)->order("weight desc,id DESC")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = getContentUrl($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(0) $list['title'] = str2sub($list['title'], 0, 0); if(80) $list['description'] = str2sub($list['description'], 80, 0); ?><li class="fix">
			<a href="<?php echo ($list["url"]); ?>" class="fl-img">
										<img src="<?php echo (($list["litpic"])?($list["litpic"]):'__PUBLIC__/images/nofound.jpg'); ?>" width="206" height="128"></a>
                                    <div class="text">
                                        <h2><a href="<?php echo ($list["url"]); ?>"><?php echo (msubstr($list["title"],0,44,'utf-8',false)); ?></a></h2>
										<a href="<?php echo ($list["url"]); ?>" class="more">浏览</a>
                                    </div>
                                </li><?php endforeach;?>  
		          
                            
                                                   </ul>
	
</div>


	</div>
	<!--cener1000 end //-->
	
	
	

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