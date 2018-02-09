<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
<div class="main">
    <div class="pos">栏目列表</div>    
    <div class="operate">
        <div class="left"><input type="button" onclick="goUrl('<?php echo U(GROUP_NAME. '/Category/add');?>')" class="btn_blue" value="添加栏目">
        <input type="button" onclick="document.getElementById('form_do').submit();" class="btn_blue" value="更新排序"></div>
    </div>
    <div class="list">    
    <form action="<?php echo U(GROUP_NAME.'/Category/sort');?>" method="post" id="form_do" name="form_do">
        <table width="100%">
            <tr>
                <th><input type="checkbox" id="check"></th>
                <th>编号</th>
                <th>名称</th>
                <th>所属模型</th>
                <th>显示</th>
                <th>排序</th>
                <th>操作</th>
            </tr>
			<?php if(is_array($cate)): foreach($cate as $key=>$v): ?><tr>
                <td><input type="checkbox" name="key[]" value="<?php echo ($v["id"]); ?>"></td>
                <td><?php echo ($v["id"]); ?></td>
                <td class="aleft"><?php echo ($v["delimiter"]); ?>
                    <?php if($v['pid'] != 0): ?>├─<?php endif; ?>
                    <a href="<?php if($v["type"] == 0): echo U(GROUP_NAME. '/'.ucfirst($v['tablename']). '/index', array('pid' => $v['id'])); else: echo U(GROUP_NAME.'/Category/edit',array('id' => $v['id'])); endif; ?>"><?php echo ($v["name"]); ?></a></td>
                <td >
                    <?php if($v["type"] == 1): ?><span style="color:red">内部链接</span>
                    <?php elseif($v["type"] == 2): ?> <span style="color:red">外部链接</span>
                    <?php else: echo ($v["modelname"]); endif; ?>
                    </td>
				<td><?php if($v['status']): ?>是<?php else: ?>否<?php endif; ?></td>
                <td><input type="text" name="<?php echo ($v["id"]); ?>" value="<?php echo ($v["sort"]); ?>" /></td>
                <td>

                <a href="<?php echo U(GROUP_NAME.'/Category/add',array('pid' => $v['id']));?>">添加子栏目</a>
                <a href="<?php echo U(GROUP_NAME. '/'.ucfirst($v['tablename']). '/index', array('pid' => $v['id']));?>">列表</a>
                <a href="<?php echo U(GROUP_NAME.'/Category/edit',array('id' => $v['id']));?>">修改</a>
                <a href="<?php echo U(GROUP_NAME. '/Category/del', array('id' => $v['id']));?>">删除</a>
				</td>
            </tr><?php endforeach; endif; ?>
        </table>
        <div class="th" style="clear: both;"> </div>
    </form>
    </div>
</div>
</body>
</html>