$(function(){

	//banner

	function baner_h(){

		var width=$('.banner').width();

			height=width/2;

			$('.banner').height(height);

	}baner_h();

	$(window).resize(function() {

		baner_h();

		sub_nav();

		h_chioce();

		

		var h=$('#rx .swiper-slide').outerHeight(true);

        $('#rx .swiper-pagination').css('bottom',h+30);

	});

	

	//子導航-手滑動

	function sub_nav(){

		var width=$('.body').width();

		$('#sub_nav').width(width*0.75);

		$('#sub_nav .swiper-slide').width(width*0.25);

		var size=$('#sub_nav').find('.swiper-slide').size();
		
		var mySwiper = new Swiper('#sub_nav',{

			loop : true,

			slidesPerView : 'auto',

			loopedSlides :size,

		});

		if($('#sub_nav').find('.swiper-slide').length > 0)
		{
			mySwiper.stopAutoplay();
		}

	};

	sub_nav();

	

	$(window).load(function() {

        var $swiper_slide=$('.swiper-slide');

		var width=$('.body').width();

	    if($swiper_slide.has('a.on')){

			var num=$swiper_slide.has('a.on').attr('data-swiper-slide-index');

			$('.swiper-wrapper').css('margin-left',-width*num*0.25);

		}

    });

	

	//子導航-點擊事件

	$('.sun_nav span.pre').on('click',function(){

		var width=$('.body').width();

		//alert(-width*0.25);

		$('#sub_nav .swiper-slide:first').animate({marginLeft:-width*0.25},500,function(){

			$(this).appendTo($('#sub_nav .swiper-wrapper')).css('margin-left',0);

		})

	});

	$('.sun_nav span.next').on('click',function(){

		var width=$('.body').width();

		//alert(-width*0.25);

		$('#sub_nav .swiper-slide:last').prependTo($('#sub_nav .swiper-wrapper')).css('margin-left',-width*0.25);

		$('#sub_nav .swiper-slide:first').animate({marginLeft:0},500);

	})

	

	//海格帮你选车

	function h_chioce(){

		var width=$('.body').width();

		var size=$('#rx').find('.swiper-slide').size();

		var mySwiper = new Swiper('#rx',{

			loop : true,

			slidesPerView : 'auto',

			loopedSlides :size,

			pagination : '#rx .swiper-pagination',

		});

		if($('#rx').find('.swiper-slide').length > 0)
		{
			mySwiper.stopAutoplay();
		}

	};

	h_chioce();

	

	$(window).load(function() {

		var h=$('#rx .swiper-slide').outerHeight(true);

        $('#rx .swiper-pagination').css('bottom',h+30);

    });

	

	//客车展示

	var $tit_li=$('.tit_name .mode li');

	$('li.mode2').on('click',function(){

		$tit_li.find('a').removeClass('on');

		$(this).find('a').addClass('on');

		$('.bus_show .list').hide(500);

		$('.bus_list_icon').show(500);

	});

	$('li.mode1').on('click',function(){

		$tit_li.find('a').removeClass('on');

		$(this).find('a').addClass('on');

		$('.bus_show .list').show(500);

		$('.bus_list_icon').hide(500);

	});

	

	//返回顶部

	$('a.back_top').on('click',function(){

		$('body,html').animate({scrollTop:0},500);

	});

	

	//展开收缩

	$('.catalog').on('click',function(){

		$(this).next('.catalog_list').slideToggle();

	});

	$('.tit_name').on('click',function(){

		$(this).find('i').toggleClass('on');

		$(this).next('.flex_bar').slideToggle();

	});

	

	//翻页

	$('.flip .number').on('click',function(){

		$('.zoom_flip').slideDown();

	});

	$('.i_zoom_flip li').on('click',function(){

		$('.zoom_flip').slideUp();

	})

	

	//tab

	function tabs(tab_name,tab_list){

	  $(tab_name).on('click',function(){

		var index=$(this).index();

		$(tab_list).siblings().hide();

		$(tab_list).eq(index).show();

	  })

	};

	tabs('.tab_name li','.tab_content .show_img');

	tabs('.net_name li','.net_box .list');

	tabs('.tab_name_moto li','.moto_txt');

	

	tabs('.tab_ss .name li','.tab_ss .tab_con li');

	

	$('.tab_ss .name li').on('click',function(){

		$(this).siblings().removeClass('on');

		$(this).addClass('on');

	})

	

	$('.tab_name li').on('click',function(){

		$(this).siblings().removeClass('on');

		$(this).addClass('on');

	});

	

	$('.tab_name_moto li').on('click',function(){

		$(this).siblings().removeClass('on');

		$(this).addClass('on');

	});

	

	$('.net_name li').on('click',function(){

		$(this).siblings().find('a').removeClass('on');

		$(this).find('a').addClass('on');

	});

	

	

	

	

	

	

	//表单验证

	$('.form_btn .submit').on('click',function(){

		layer.load();

		var obj = $(this);

		var form = obj.parents("form");

		//alert(form.html());

		var flag = 1;

		var require=form.find('.f_requit');

		var ftxt=form.find('.f_txt');

		var tel=form.find('.f_tel');

		var email=form.find('.f_email');

		var emailReg = /^[-._A-Za-z0-9]+@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/; 

		var mobileReg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;  

		var telReg = /^(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/;

		require.each(function(index, element) {

			if($(this).val()==""){

				$(this).addClass('b_b');

				flag = 0;

			}

		 });

		 //alert(1);

	/**/require.focus(function() {

			$(this).removeClass('b_b');

		});

		

		email.each(function(index, element) {

			//alert($(this).val());

			if(!emailReg.test($(this).val())){

				$(this).addClass('b_b');

				flag = 0;

			}else{

				$(this).removeClass('b_b');

			}

		});

		

		//alert(tel.length);

		tel.each(function(index, element) {

			//alert($(this).val());

			if(!mobileReg.test($(this).val())&&!telReg.test($(this).val())){

				$(this).addClass('b_b');

				flag = 0;

				//layer.closeAll('loading');

				//return false;

			}else{

				$(this).removeClass('b_b');

			}

		});

			

		if(flag == 0){

			layer.closeAll('loading');

			return false;

		}else{

			return true;

		}

		

	});

	

	

	//专题

	$('.buy_a a').click(function() {

         var name=$(this).parent().attr('class');

		 var s_top=$('#'+name).offset().top;

		 $('body,html').animate({scrollTop:s_top},500);

     });

	 

	  try{

		 var win_top=$('.matic').offset().top;

		 $(window).scroll(function() {

			if($(this).scrollTop()>win_top){

				$('.matic .menu').addClass('fixed');

			}else{

				$('.matic .menu').removeClass('fixed');

			}

		})

	 }

 	catch(err){};

	

})