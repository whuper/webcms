/**
* 手动滚动图片
*
**/
$.extend({
manualScroll:function(opt,callback){
//alert("suc");
this.defaults = {
id:"", // 滚动区域id
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

var scrollBox = $("#"+opts.id);
var scrollDiv = scrollBox.find('#scrollDiv');

var showArea = scrollBox.find('#showArea');
var scroll_ul = scrollDiv.find('.scroll-ul');

var li_width = scroll_ul.find('li').eq(0).outerWidth();
var ul_width = scroll_ul.find('li').size() * li_width;
scroll_ul.width(ul_width);
var cur_index = 0;

scrollBox.on('click','a',function(){

	var act = scrollBox.find(this).data('act');
	switch(act) {
		case 'prev':
			if(cur_index  <= 0){
				return;
			}
			cur_index --;
			showimg(cur_index);
			break;
		case 'next':
			if((cur_index +1) >= scroll_ul.find('li').size()){
				return;
			}
			cur_index ++;
			showimg(cur_index);
			// code
			break;
	}

});

scrollBox.on('click','a',function(){

	var act = scrollBox.find(this).data('act');
	switch(act) {
		case 'right':
			silde();
			break;
		case 'left':
			silde(1);
			// code
			break;
	}

});

scroll_ul.on('click','li',function(){
	var index = scroll_ul.find(this).index();
	showimg(index);
});
function silde(x){
	var cur_left = scroll_ul.position().left;

	//默认是减少left,向右移动
	if(!x){
		cur_left -= li_width;	
	} else {
		cur_left += li_width;	
	}
	
	scroll_ul.animate({left:cur_left},500,function(){
	console.log('cur_left',cur_left);
	if(cur_left >0){
		console.log('cur_left > 0');
		scroll_ul.animate({left:0},100);
		return;
	}
	if((Math.abs(cur_left) + scrollDiv.width()) >= ul_width){
		console.log(scrollDiv.width());
		console.log(scroll_ul.width());
		
		console.log('右移过头了');
		cur_left =  scrollDiv.width() - ul_width ;
		scroll_ul.animate({left:cur_left},100);	
	}
});

}
function showimg(i){
	if(showArea.find('img').length > 0){
		showArea.find('img').fadeOut(200,function(){
		showArea.find('img').remove();
		scroll_ul.find("li").removeClass('cur').eq(i).addClass('cur');
		scroll_ul.find("li").eq(i).find('img').clone().appendTo(showArea);
		});
	//创建元素
	
	} else {
		showArea.find('img').remove();
		scroll_ul.find("li").removeClass('cur').eq(i).addClass('cur');
		scroll_ul.find("li").eq(i).find('img').clone().appendTo(showArea);
	}
	

	
	
	
}

showimg(cur_index);

}
}); 


