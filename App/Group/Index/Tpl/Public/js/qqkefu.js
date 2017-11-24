lastScrollY = 0;
function heartBeat(){
var diffY;
if (document.documentElement && document.documentElement.scrollTop)
diffY = document.documentElement.scrollTop;
else if (document.body)
diffY = document.body.scrollTop
else
{/*Netscape stuff*/}
//alert(diffY);
percent=.1*(diffY-lastScrollY);
if(percent>0)percent=Math.ceil(percent);
else percent=Math.floor(percent);
document.getElementById("leftDiv").style.top = parseInt(document.getElementById("leftDiv").style.top)+percent+"px";
document.getElementById("rightDiv").style.top = parseInt(document.getElementById("rightDiv").style.top)+percent+"px";
lastScrollY=lastScrollY+percent;
//alert(lastScrollY);
}
//下面这段删除后，对联将不跟随屏幕而移动。
window.setInterval("heartBeat()",1);
//-->
//关闭按钮
function close_left1(){
    left1.style.visibility='hidden';
}
function close_left2(){
    left2.style.visibility='hidden';
}
function close_right1(){
    right1.style.visibility='hidden';
}
function close_right2(){
    right2.style.visibility='hidden';
}
//显示样式
document.writeln("<style type=\"text\/css\">");
document.writeln("#leftDiv,#rightDiv{position:absolute;z-index:10010}");
document.writeln("<\/style>");
//以下为主要内容
document.writeln("<div id=\"leftDiv\" style=\"top:140px;left:10px\">");
//------左侧各块开始
//---L1
document.writeln("<div id=\"left1\" class=\"itemFloat\">");
	document.writeln("<div > <br /> <p><img class=\"top\" src=\"/App/Group/Index/Tpl/Public/images/new/logo2.png\" /><br /><a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=383325701&site=qq&menu=yes\"><img src=\"/App/Group/Index/Tpl/Public/images/new/qq.png\" /> </p> <h3>在线咨询</h3> </a>");
//document.writeln("<embed src=flash/100x300-left.swf width=100 height=300></embed>");
document.writeln("<a class=\"close\" href=\"javascript:close_left1();\" title=\"关闭\">×<\/a><br><br><br><br>");
document.writeln("<\/div>");
document.writeln("<\/div>");
//---L2

//------左侧各块结束
document.writeln("<\/div>");

//------右侧各块开始
document.writeln("<div id=\"rightDiv\" style=\"top:140px;right:10px\">");



//---R1
document.writeln("<div id=\"right1\" class=\"itemFloat\"  ");
	document.writeln("<div > <br /> <p><img class=\"top\" src=\"/App/Group/Index/Tpl/Public/images/new/logo2.png\" /><br /><img class=\"wei\" src=\"/App/Group/Index/Tpl/Public/images/new/wei.jpg\" /> </p> <h3>扫码关注</h3> ");

//document.writeln("<embed src=flash/100x300-right.swf width=100 height=300></embed>");
document.writeln("<a class=\"close\" href=\"javascript:close_right1();\" title=\"关闭\">×<\/a><br><br><br><br>");
document.writeln("<\/div>");
//---R2  v

//------右侧各块结束


document.writeln("<\/div>");
