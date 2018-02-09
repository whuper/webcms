<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel='stylesheet' type="text/css" href="__PUBLIC__/css/style.css" />
<script type="text/javascript" src="__PUBLIC__/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/js/common.js"></script>
<script type="text/javascript">
	$(function(){

		$("#form_do").submit(function(){
			var name = $("input[name='name']");
			if($.trim(name.val())==''){
				name.parent().find("span").remove().end().append("<span class='error'>名称不能为空</span>");
				return false;			
			}else {
				name.parent().find("span").remove().end();
			}


		});


		$("#link_btn").click(function(){
            //var inputs = $(this).parents('dl').find('dt');
            var dl = $(this).parents('dl').next();//.find('dt');
            var nextdls = $("#nextdl").nextAll();
            
            
                dl.find('dt').html('链接地址：');
                dl.find('span').hide();
                nextdls.hide();

		
            
        });
	$("#cata").click(function(){
            //var inputs = $(this).parents('dl').find('dt');
            var dl = $(this).parents('dl').next();//.find('dt');
            var nextdls = $("#nextdl").nextAll();
            
           
              	dl.find('dt').html('别名(拼音)：');
            	dl.find('span').show();
            	nextdls.show();

	
            
        });
		
		autoHide();
        function autoHide(){

        	var inputs = $("input[name='type']")
        	var dl = inputs.parents('dl').next();//.find('dt');
            var nextdls = $("#nextdl").nextAll();
            
            if(inputs.attr('checked')) {
                dl.find('dt').html('链接地址：');
                dl.find('span').hide();  
                nextdls.hide();
		//alert(3213);

            }


        }


        $("select[name='modelid']").change(function(){
        	
			$("select[name='modelid'] option").each(function(i,o){
			if($(this).attr("selected")){
				//$(".city").hide();
				//$(".city").eq(i).show();
				var styleid = $(this).val();
				setStyleSelect(styleid);
				
			}
			});
		});
		
		function setStyleSelect(id){
			var template_list = $("select[name='template_list']");
        	var template_show = $("select[name='template_show']");
			switch (id){
				<?php if(is_array($mlist)): foreach($mlist as $key=>$v): ?>case '<?php echo ($v["id"]); ?>':
					template_list.val("<?php echo ($v["template_list"]); ?>");
					template_show.val("<?php echo ($v["template_show"]); ?>");
				 	break;<?php endforeach; endif; ?>
			}

		}
		
		

    });
</script>
</head>
<body>
<div class="main">
    <div class="pos">添加栏目</div>
	<div class="form">
		<form method='post' id="form_do" name="form_do" action="<?php echo U(GROUP_NAME.'/Category/edit');?>">
		<dl>
			<dt> 所属栏目：</dt>
			<dd>
				<select name="pid">
					<option value="0">顶级栏目</option>
					<?php if(is_array($cate)): foreach($cate as $key=>$v): ?><option value="<?php echo ($v["id"]); ?>" <?php if($data["pid"] == $v['id']): ?>selected="selected"<?php endif; ?>><?php echo ($v["delimiter"]); echo ($v["name"]); ?></option><?php endforeach; endif; ?>
				</select>
			</dd>
		</dl>
		<dl>
			<dt> 内容模型：</dt>
			<dd>
				<select name="modelid">
					<?php if(is_array($mlist)): foreach($mlist as $key=>$v): ?><option value="<?php echo ($v["id"]); ?>" <?php if($data["modelid"] == $v['id']): ?>selected="selected"<?php endif; ?>><?php echo ($v["name"]); ?></option><?php endforeach; endif; ?>
				</select>
			</dd>
		</dl>
		<dl>
			<dt> 栏目名称：</dt>
			<dd>
				<input type="text" name="name" class="inp_one" value="<?php echo ($data["name"]); ?>" />
			</dd>
		</dl>	
		<dl>
			<dt>栏目模板：</dt>
			<dd>
				<select name="template_list">
					<?php if(is_array($styleListList)): foreach($styleListList as $key=>$v): ?><option value="<?php echo ($v); ?>" <?php if($data["template_list"] == $v): ?>selected="selected"<?php endif; ?>><?php echo ($v); ?></option><?php endforeach; endif; ?>
				</select>
			</dd>
		</dl>
		<dl>
			<dt>内容页模板：</dt>
			<dd>
				<select name="template_show">
					<?php if(is_array($styleShowList)): foreach($styleShowList as $key=>$v): ?><option value="<?php echo ($v); ?>" <?php if($data["template_show"] == $v): ?>selected="selected"<?php endif; ?>><?php echo ($v); ?></option><?php endforeach; endif; ?>
				</select>
			</dd>
		</dl>

			<dl>
			<dt> 栏目图片：</dt>
			<dd>
				<input type="text" name="cata_pic" class="inp_one" value="<?php echo ($data["cata_pic"]); ?>" />
			</dd>
		</dl>	
		<dl>

		<dl>
			<dt>链接</dt>
			<dd>
				<input type="radio" name="type" id="link_btn" value="1" <?php if($data["type"] == 1): ?>checked="checked"<?php endif; ?> />内部链接
				<input type="radio" name="type" id="link_btn" value="2" <?php if($data["type"] == 2): ?>checked="checked"<?php endif; ?> />外部链接
				<input type="radio" name="type" id="cata" value="0" <?php if($data["type"] == 0): ?>checked="checked"<?php endif; ?> /> 正常栏目		</dd>
		</dl>	
		<dl>
			<dt>别名(拼音)：</dt>
			<dd>
				<input type="text" name="ename" class="inp_one" value="<?php echo ($data["ename"]); ?>" /><span>只能包含字母，数字</span>
			</dd>
		</dl>	
		<dl>
			<dt> 排序：</dt>
			<dd>
				<input type="text" name="sort" class="inp_one" value="<?php echo ($data["sort"]); ?>" />
			</dd>
		</dl>
		<dl id="nextdl">
			<dt> 显示：</dt>
			<dd>
				<input type="radio" name="status" value="1" <?php if($data["status"] == 1): ?>checked="checked"<?php endif; ?> />显示
				<input type="radio" name="status" value="0" <?php if($data["status"] == 0): ?>checked="checked"<?php endif; ?> />隐藏
			</dd>
		</dl>	
		<dl>
			<dt> Seo标题：</dt>
			<dd>
				<input type="text" name="seotitle" class="inp_one" value="<?php echo ($data["seotitle"]); ?>" />
			</dd>
		</dl>
		<dl>
			<dt> 关键词：</dt>
			<dd>
				<input type="text" name="keywords" class="inp_one" value="<?php echo ($data["keywords"]); ?>" />
			</dd>
		</dl>
		<dl>
			<dt> 栏目描述：</dt>
			<dd>
				<textarea name="description" class="tarea_default"><?php echo ($data["description"]); ?></textarea>
			</dd>
		</dl>
		</div>
		<div class="form_b">
			<input type="hidden" name="id" value="<?php echo ($data["id"]); ?>"/>
			<input type="submit" class="btn_blue" id="submit" value="提 交">
		</div>
	   </form>
	</div>


</body>
</html>