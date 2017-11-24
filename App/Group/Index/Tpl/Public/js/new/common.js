
	$(function() {
		$(window).scroll(function() {
			if ($(window).scrollTop() > 100) {
					$('.backtop').fadeIn(500);
				} 
			else {
				$('.backtop').fadeOut(500);
				}
				});
				$('.backtop').click(function() {
				$('html, body').animate({
				scrollTop: 0
				},1000, "easeOutExpo");
		});
		$(':text').each(function(){
		    var val=$(this).val();
		    $(this).focus(function() {
		        if( $(this).val() == val) {
		            this.value = ''
		        }
		    });
		    $(this).blur(function() {
		    if( $(this).val() == '') {
		        this.value = val;
		        }
		    });
		});
		$('.sidebar li').outerWidth(100/$('.sidebar li').length+'%')
		jQuery(".banner").slide({titCell:".hd ul",mainCell:".bd ul",effect:"left",autoPage:'<li></li>',autoPlay:true});		
	}); 
