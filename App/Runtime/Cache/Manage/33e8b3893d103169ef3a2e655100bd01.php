<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理中心</title>
<link rel='stylesheet' type="text/css" href="__PUBLIC__/css/style.css" />
<script type="text/javascript" src="__PUBLIC__/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/js/common.js"></script>
 <script language="JavaScript">
    <!--
    var URL = '__URL__';
    var APP	 = '__APP__';
    var SELF='__SELF__';
    var PUBLIC='__PUBLIC__';
    //-->
</script>
</head>
<body>
<style type="text/css">
	html{_overflow-y:scroll}
</style>
<div style="min-width:780px">

<div class="column">
	<dl class="dbox winbg1" id="item3">
	    <dt class="lside">
	        <div class="l">我的个人信息</div>
	    </dt>
	    <dd>
			<div class="content">
				您好，<?php echo (session('yang_adm_username')); ?><br/>
				<div class="clear"></div>
				上次登录时间：<?php echo (session('yang_adm_logintime')); ?><br/>
				上次登录IP：<?php echo (session('yang_adm_loginip')); ?> <br/>
			</div>
	    </dd>
	</dl>

	<dl class="dbox winbg2" id="item1">
	    <dt class="lside"><span class="l">系统信息</span></dt>
	    <dd>
	        <div class="content">
	              
	操作系统：<?php echo ($os); ?> <br />
	服务器软件：<?php echo ($software); ?><br />
	MySQL 版本：<?php echo ($mysql_ver); ?><br />
	上传文件：<?php echo ($environment_upload); ?><br />	
	         </div>
	    </dd>
	</dl>




</div>

<div class="column">



</div>

</div>
</body>
</html>