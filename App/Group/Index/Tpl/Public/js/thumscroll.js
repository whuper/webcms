/**
* 手动滚动图片
*
**/
$.extend({
manualScroll:function(opt,callback){
//alert("suc");
this.defaults = {
objId:"", // 滚动区域id
showArea:"", // 大图显示区域id，如果没有就不显示
showWidth:700, // 大图宽度
showHeight:525, // 大图高度
showTitle: false, // 是否在大图下方显示标题
width:300, // 每行的宽度
height:100, // div的高度
line:2, // 每次滚动的行数
autoLine:1, // 自动滚动的行数
speed:0, // 动作时间
interval:3000, // 滚动间隔
imgPath:"", // 图片根目录
directBtn:"img/direct_btn02.png", // 指向图片
picTimer:0, // 间隔句柄，不需要设置，只是作为标识使用
opacity:0.3 // 按钮透明度
};

//参数初始化
var opts = $.extend(this.defaults,opt);

// 定义外层元素样式
$("#"+opts.objId).css({
"position":"relative",
"overflow":"hidden",
"width":(opts.line * opts.width) + "px"
});
// 定义ul样式
$("#"+opts.objId + " ul").css({
"width":opts.width * $("#"+opts.objId + " ul").find("li").size() + "px",
"height":opts.height + "px"
});

// 定义li样式
$("#"+opts.objId + " ul li").css({
"float":"left",
"width":opts.width + "px",
"height":opts.height + "px"
});

/*
// 添加向左滚动按钮
$("#"+opts.objId).append("<div id=\"button_left\"></div>");

// 定义向左按钮的位置
$("#button_left").css({
"width":"40px",
"height":"40px",
"background":"url(" + opts.imgPath + opts.directBtn + ")",
"background-position":"0px 0px",
"position":"absolute",
"left":"0px",
"top":(opts.height/2 - 20) + "px"
});

// 添加向右滚动按钮
$("#"+opts.objId).append("<div id=\"button_right\"></div>");

// 定义向右按钮的位置
$("#button_right").css({
"width":"40px",
"height":"40px",
"background":"url(" + opts.imgPath + opts.directBtn + ")",
"background-position":"-40px 0px",
"position":"absolute",
"left":(opts.line * opts.width - 40) + "px",
"top":(opts.height/2 - 20) + "px"
});
*/
// 向左按钮添加动作
$("#button_left").click(function(){
var scrollWidth = 0 - opts.line * opts.width - (0 - $("#"+opts.objId).find("ul:first").css("margin-left").replace("px",""));
// 无间断滚动
$("#"+opts.objId).find("ul:first").animate({
marginLeft:scrollWidth
},opts.speed,function(){
for(i=1;i<=opts.line;i++){
$("#"+opts.objId).find("li:first").appendTo($("#"+opts.objId).find("ul:first"));
}
$("#"+opts.objId).find("ul:first").css({marginLeft:0});
showArea();
});
});

// 向右按钮添加动作
$("#button_right").click(function(){
var scrollWidth = (0 - opts.line*opts.width + (0 - $("#"+opts.objId).find("ul:first").css("margin-left").replace("px","")));
// 无间断滚动
$("#"+opts.objId).find("ul:first").animate({
marginLeft:scrollWidth
},0,function(){
for(i=1;i<=opts.line;i++){
$("#"+opts.objId).find("li:last").prependTo($("#"+opts.objId).find("ul:first"));
}
$("#"+opts.objId).find("ul:first").animate({
marginLeft:0
},opts.speed,function(){
$("#"+opts.objId).find("ul:first").css({marginLeft:0});
showArea();
});
});
});

/**
* 自动横向滚动
*/
function scrollLeft(){
var scrollWidth = 0 - opts.autoLine * opts.width - (0 - $("#"+opts.objId).find("ul:first").css("margin-left").replace("px",""));
$("#"+opts.objId).find("ul:first").animate({
marginLeft:scrollWidth
},opts.speed,function(){
for(i=1;i<=opts.autoLine;i++){
$("#"+opts.objId).find("li:first").appendTo($("#"+opts.objId).find("ul:first"));
}
$("#"+opts.objId).find("ul:first").css({marginLeft:0});
showArea();
});
};

/**
* 大图下方显示标题
*/
if(opts.showTitle && $("#"+opts.showArea).size() > 0){
$("#"+opts.showArea).css({
"width":opts.showWidth + "px",
"position":"relative",
"height":opts.showHeight + "px"
});
$("#"+opts.showArea).html("<img />");
/*
$("#"+opts.showArea).append("<div id=\"manualScroll_banner\" ></div>");
$("#manualScroll_banner").css({
"width":opts.showWidth + "px",
"height":"20px",
"background":"#333",
"position":"absolute",
opacity:0.7,
"text-align":"center",
"color":"#FFF",
"left":"0px",
"top":(opts.showHeight - 20) + "px"
});
*/
}

/**
* 在指定区域显示大图
*/
function showArea(){
if($("#"+opts.showArea).size() > 0){
// 显示主图的位置
var index = Math.floor((opts.line - 1) / 2);
showIndexArea(index);
// 鼠标划上后显示大图
$("#"+opts.objId + " ul li").each(function(index){
$(this).mouseover(function(){
showIndexArea(index);
});
});
}
}

/**
* 显示指定元素的大图
*/
function showIndexArea(index){
var imgSrc = $("#"+opts.objId + " ul li:eq(" + index + ") img:first").attr("src");
var imgAlt = $("#"+opts.objId + " ul li:eq(" + index + ") img:first").attr("alt");
// 淡化显示其余图片
$("#"+opts.objId + " ul li:lt(" + index + ")").css({
opacity:0.5
});
$("#"+opts.objId + " ul li:gt(" + index + ")").css({
opacity:0.5
});
$("#"+opts.objId + " ul li:eq(" + index + ")").css({
opacity:1
});
// 显示大图
$("#"+opts.showArea + " img:first").attr("src", imgSrc);
// 显示标题
if(opts.showTitle){
$("#manualScroll_banner").text(imgAlt);
}
}

/**
* 鼠标滑上后显示按钮
*/
$("#"+opts.objId).hover(function() {
$("#button_left").css({
opacity:1
});
$("#button_right").css({
opacity:1
});
},function() {
$("#button_left").css({
opacity:opts.opacity
});
$("#button_right").css({
opacity:opts.opacity
});
}).trigger("mouseleave");

/**
* 最先执行的函数
* 鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
*/
// 初始化大图
showArea();
$("#"+opts.objId).hover(function() {
clearInterval(opts.picTimer);
},function() {
opts.picTimer = setInterval(function() {
scrollLeft();
},opts.interval); // 自动播放的间隔，单位：毫秒
}).trigger("mouseleave");
}
}); 

