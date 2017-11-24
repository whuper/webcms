$(function(){
	//var sWidth = $("#slider_name").width();
	var sWidth = 1400;
	var con_Width = $(window).width();
	if( con_Width> 1400) {
	con_Width = 1400;
	}
	//alert(sWidth);
	$('#slider').width(con_Width);


	//alert(sWidth);
	var len = $("#slider_name .silder_panel").length;
	var index = 0;
	var picTimer;
	var f_info = $('.f_info');
	

	$("#slider_name .silder_nav li").hover(function() {														
	//$(this).find('img').fadeIn();
	index = $(this).index();
		showPics(index);
	},function(){
	//$(this).find('img').stop().hide();
	});

	$("#slider_name .silder_con").css("width",sWidth * (len));
	
	// mouse 
	$("#slider_name").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			showPics(index);
			index++;
			if(index == len) {index = 0;}
		},3000); 
	});
	
	// showPics
	function showPics(index) {
		f_info.css({
			"opacity":"0.1",
			"filter":"alpha(opacity=40)",
			"left":"800px"
		});
		var nowLeft = -index*sWidth; 
		$("#slider_name .silder_con").stop(true,false).animate({"left":nowLeft},800,function(){

		f_info.eq(index).animate({
			"opacity":"0.9",
			"filter":"alpha(opacity=90)",
			"left":"190px"
		},800);

		});
		$("#slider_name .silder_nav li").removeClass("current").eq(index).addClass("current"); 
		
	}
});
