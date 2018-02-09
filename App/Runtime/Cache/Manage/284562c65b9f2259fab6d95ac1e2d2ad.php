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
<script language="JavaScript">

function returnValue(sfile, stype){  
    if (stype == 'picture') {
        window.parent.selectPicture(sfile);
    } else {
        window.parent.selectFile(sfile);
    }
}

function showPreview(sfile){       
    document.getElementById('PictureSrc').src = sfile;
    document.getElementById('PicturePreviewDiv').style.display='block';
}
</script>
</head>
<body>
<div id="PicturePreviewDiv" class="bf_picture_preview">
<a href="javascript:;" onClick="document.getElementById('PicturePreviewDiv').style.display='none';"><img src='__PUBLIC__/images/nopic.png' id='PictureSrc' border='0' alt='单击关闭预览'></a>
</div>
<div class="main">
    <div class="pos"><?php echo ($type); ?>
    </div>

    <div class="operate">
        
    </div>
    <div class="list">    
    <form action="<?php echo U(GROUP_NAME. '/Public/backup');?>" method="post" id="form_do" name="form_do">
        <table width="100%">
            <tr>
                <th class="aleft">文件名称</th>
                <!--th class="aleft">类型</th-->
                <th class="aleft">大小</th>
                <th class="aleft">修改时间</th>
                <th>可读</th>
                <th>可写</th>
                <th>操作</th>
            </tr>
            <tr>
                <td class="aleft"><a href="<?php echo ($purl); ?>">↑上级目录</a></td>
                <td></td>
                <!--td></td-->
                <td></td>
                <td></td>
                <td></td>
                <td>  </td>
            </tr>
			<?php if(is_array($vlist)): foreach($vlist as $key=>$v): ?><tr>
                <td class="aleft">
                 <?php if($v["isDir"] == 1): ?><a href="<?php echo ($v["url"]); ?>"><?php echo ($v["filename"]); ?></a>
                <?php else: ?>
                <a href="javascript:returnValue('<?php echo ($v["url"]); ?>', '<?php echo ($stype); ?>');"><?php echo ($v["filename"]); ?></a><?php endif; ?>
                </td>
                <!--td class="aleft"><?php if($v["isDir"] == 1): ?>目录<?php else: ?>文件<?php endif; ?></td-->
                <td class="aleft"><?php echo ($v["size"]); ?></td>
                <td class="aleft"><?php echo (date('Y-m-d H:i:s',$v["mtime"])); ?></td>
                <td><?php if($v["isReadable"] == 1): ?>√<?php else: ?>×<?php endif; ?></td>
                <td><?php if($v["isWritable"] == 1): ?>√<?php else: ?>×<?php endif; ?></td>
                <td>
                <?php if($v["isDir"] == 1): ?><a href="<?php echo ($v["url"]); ?>">打开</a>
                <?php else: ?>
                <a href="javascript:returnValue('<?php echo ($v["url"]); ?>', '<?php echo ($stype); ?>');">选择</a> 
                <?php if($v["isImg"] == 1): ?><a href="javascript:showPreview('<?php echo ($v["url"]); ?>');">预览</a><?php endif; endif; ?>        
				</td>
            </tr><?php endforeach; endif; ?>
        </table>
        <div class="th" style="clear: both;"></div>
    </form>
    </div>
</div>
</body>
</html>