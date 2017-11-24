/**jquery事件延时插件 0425**/


var timeOut; //全局定时器
var sub_nav; //子菜单
var time = 200 ; //延迟时间
$.fn.timeOutshow = function(fname) {

sub_nav = $(this);

switch(fname)
{
case "show":
  timeOut = setTimeout("sub_nav.show()",time);
  break;
case "fadeIn":
  timeOut = setTimeout("sub_nav.fadeIn()",time);
  break;
case "slideDown":
  timeOut = setTimeout("sub_nav.slideDown('fast')",time);
  break;
default:
   timeOut = setTimeout("sub_nav.show()",time);
};	


};

