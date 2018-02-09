<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel='stylesheet' type="text/css" href="__PUBLIC__/css/style.css" />
<script type="text/javascript" src="__PUBLIC__/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/js/common.js"></script>
<script type="text/javascript" src="__PUBLIC__/js/jquery.form.min.js"></script>

<script type="text/javascript" src="__DATA__/static/jq_plugins/jBox/jquery.jBox-2.3.min.js"></script>
<script type="text/javascript" src="__DATA__/static/jq_plugins/jBox/i18n/jquery.jBox-zh-CN.js"></script>
<link type="text/css" rel="stylesheet" href="__DATA__/static/jq_plugins/jBox/Skins2/blue/jbox.css"/>
<script type="text/javascript">
$(function () {
	//缩略图上传
	var litpic_tip = $(".litpic_tip");
	var btn = $(".litpic_btn span");
	$("#fileupload").wrap("<form id='myupload' action='<?php echo U(GROUP_NAME. '/Public/upload');?>' method='post' enctype='multipart/form-data'></form>");
    $("#fileupload").change(function(){
    	if($("#fileupload").val() == "") return;
		$("#myupload").ajaxSubmit({
			dataType:  'json',
			beforeSend: function() {
        		$('#litpic_show').empty();
				btn.html("上传中...");
    		},
			success: function(data) {
				//litpic_tip.html("<b>"+data.title+"("+data.size+"k)</b> <span class='delimg' rel='"+data.url+"'>删除</span>");
				if(data.state == 'SUCCESS'){					
					litpic_tip.html(""+ data.title +" 上传成功("+data.size+"k)");
					var img = data.url;
					$('#litpic_show').html("<img src='"+img+"' width='88' height='31'>");
					$("#litpic").val(img);
				}else {
					litpic_tip.html(data.state);		
				}			
					btn.html("上传图片");

			},
			error:function(xhr){
				btn.html("上传失败");
				litpic_tip.html(xhr);
			}
		});
	});
	
});


$(function () {

	$('#BrowerPicture').click(function(){
		$.jBox("iframe:<?php echo U(GROUP_NAME.'/Public/browseFile', array('stype' => 'picture'));?>",{
			title:'YYCMS',
			width: 650,
   			height: 350,
    		buttons: { '关闭': true }
   			}
		);
	});	

});


function selectPicture(sfile) {
	$('#litpic_show').html("<img src='"+sfile+"' width='120'>");
	$("#litpic").val(sfile);
	$.jBox.tip("选择文件成功");
	$.jBox.close(true);
}
</script>
</head>
<body>
<div class="main">
    <div class="pos">添加轮播图</div>
	<div class="form">
		<form method='post' id="form_do" name="form_do" action="<?php echo U(GROUP_NAME. '/PicPlay/add');?>">
		<dl>
			<dt> 名称：</dt>
			<dd>
				<input type="text" name="name" class="inp_large" />
			</dd>
		</dl>
		<dl>
			<dt> 链接地址：</dt>
			<dd>
				<input type="text" name="url" class="inp_large" value="http://" />
			</dd>
		</dl>
		<dl>
			<dt> 图片：</dt>
			<dd>
				<div class="litpic_show">
				    <div style="float:left;">
				    <input type="text" class="inp_w250" name="pic" id="litpic"  value="" />
				    <input type="button" class="btn_blue_b" id="BrowerPicture" value="选择站内图片">
				    </div>
						<div class="litpic_btn">
				        <span>上传图片</span>
				        <input id="fileupload" type="file" name="mypic">
				    </div>
				    <div class="litpic_tip"></div>
				    <div id="litpic_show"> </div>
				</div>
			</dd>
		</dl>	
		<!--<dl>-->
			<!--<dt> 排列位置：</dt>-->
			<!--<dd>-->
				<!--<input type="text" name="sort" class="inp_small" value="1" />-->
			<!--</dd>-->
		<!--</dl>-->
		<dl>
			<dt> 描述：</dt>
			<dd>
				<textarea name="description" class="tarea_default"></textarea>
			</dd>
		</dl>	

		<!--<dl>
			<dt> 链接位置：</dt>
			<dd>
				<input type="radio" name="ischeck" value="0" checked="checked"  />首页
				&nbsp;&nbsp;
				<input type="radio" name="ischeck" value="1" />内页

			</dd>
		</dl>-->
		<div class="form_b">		
			<input type="submit" class="btn_blue" id="submit" value="提 交">
		</div>
	   </form>
	</div>
</div>


</body>
</html>