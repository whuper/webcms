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


<div class="container center_1000">

	<div class="cata-list-box">
	<ul class="cata-list clearfix">
	 <?php
 $typeid = intval(1); $type = 'son'; $__catlist = getCategory(0); import('Class.Category', APP_PATH); if (0 == 0) { $__catlist = Category::clearPageAndLink($__catlist); } if($typeid == 0 || $type == 'top') { $_catlist = Category::unlimitedForLayer($__catlist); }else { if ($type == 'self') { $_typeinfo = Category::getSelf($__catlist, $typeid ); $_catlist = Category::unlimitedForLayer($__catlist, 'child', $_typeinfo['pid']); }else { $_catlist = Category::unlimitedForLayer($__catlist, 'child', $typeid); } } foreach($_catlist as $autoindex => $catlist): if($autoindex >= 30) break; $catlist['url'] = getUrl($catlist); ?><li><a href="<?php echo ($catlist["url"]); ?>"><?php echo ($catlist["name"]); ?></a><li><?php endforeach;?>
	 </ul>

		
	</div>
	
               
            <div class="main">
                    <ul class="piclist clearfix">
						<?php
 $typeid = $cid; $keyword = ""; $nochild = "0"; if ($typeid>0 || substr($typeid,0,1) == '$') { import('Class.Category', APP_PATH); $_selfcate = Category::getSelf(getCategory(), $typeid); $_tablename = strtolower($_selfcate['tablename']); if($nochild){ $ids = $typeid; }else { $ids = Category::getChildsId(getCategory(), $typeid, true); } $where = array($_tablename.'.status' => 0, $_tablename .'.cid'=> array('IN',$ids)); }else { $_tablename = 'article'; $where = array($_tablename.'.status' => 0); } if ($keyword != '') { $where[$_tablename.'.title'] = array('like','%'.$keyword.'%'); } if (0 > 0) { $where['_string'] = $_tablename.'.flag & 0 = 0 '; } if (!empty($_tablename) && $_tablename != 'page') { if (10 > 0) { import('ORG.Util.Page'); $count = D(ucfirst($_tablename ).'View')->where($where)->count(); $thisPage = new Page($count, 10); $ename = I('e', '', 'trim'); if (!empty($ename) && C('URL_ROUTER_ON') == true) { $thisPage->url = ''.$ename. '/p'; } $thisPage->rollPage = 5; $thisPage->setConfig('header','条记录'); $thisPage->setConfig('first', '第一页'); $thisPage->setConfig('last', '最后一页'); $thisPage->setConfig('prev', '上一页'); $thisPage->setConfig('next', '下一页'); $thisPage->setConfig('theme', ' %nowPage%/%totalPage% 页 %upPage% %downPage%  %prePage% %linkPage% %nextPage%'); $limit = $thisPage->firstRow. ',' .$thisPage->listRows; $page = $thisPage->show(); }else { $limit = "10"; } $_list = D(ucfirst($_tablename ).'View')->where($where)->order("weight desc,id DESC")->limit($limit)->select(); if (empty($_list)) { $_list = array(); } }else { $_list = array(); } foreach($_list as $autoindex => $list): $_jumpflag = ($list['flag'] & B_JUMP) == B_JUMP? true : false; $list['url'] = getContentUrl($list['id'], $list['cid'], $list['ename'], $_jumpflag, $list['jumpurl']); if(0) $list['title'] = str2sub($list['title'], 0, 0); if(80) $list['description'] = str2sub($list['description'], 80, 0); ?><li class="fix">
			<a href="<?php echo ($list["url"]); ?>" class="fl-img">
										<img src="<?php echo (($list["litpic"])?($list["litpic"]):'__PUBLIC__/images/nofound.jpg'); ?>" ></a>
                                    <div class="text">
                                        <h2><a href="<?php echo ($list["url"]); ?>"><?php echo (msubstr($list["title"],0,44,'utf-8',false)); ?></a></h2>
										<!--<span>￥<?php echo ($list["price"]); ?>万</span>-->
                                        <p><?php echo ($list["description"]); ?></p>
									
                                    </div>
                                </li><?php endforeach;?>  
		          
                            
                                                   </ul>
                                  
                            <div class="pagelist">
								<?php echo ($page); ?>
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