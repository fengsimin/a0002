$(document).ready(function () {

	if( !$.cookie('isguide') ) {
		$('.guide-bg').addClass('show');
		$('.arrow-down').click(function(){
			$('.guide-bg').addClass('slideOutDown');
			$('.swiper-container').addClass('show slideInDown');
//			$.cookie('isguide', 'true');
		});
	} else {
		$('.swiper-container').addClass('show');
	}

	var $items = JSON.parse(items);

    var swiper_options = {
		pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
		paginationClickable: true,
		keyboardControl: true,
		mousewheelControl: true,
//      hashnav: true,
        preloadImages: false,
        lazyLoading: true,
		onInit: function(swiper) {

			$slide = $(swiper.slides[0]);
			$slide.css('background-image', 'url('+$slide.data('path')+'/'+$slide.data('image')+'?v='+$slide.data('utime')+')');

            $($slide).find('h1').addClass('fadeInDown')
                .end().find('p').addClass('fadeInLeft')
                .end().find('a').addClass('fadeInUp');
		},
		onSlideChangeStart: function(swiper) {
			$slide = $(swiper.slides[swiper.activeIndex]);
			$slide.css('background-image', 'url('+$slide.data('path')+'/'+$slide.data('image')+'?v='+$slide.data('utime')+')');
			swiper.disableMousewheelControl();
		},
		onSlideChangeEnd: function(swiper) {
			setTimeout(function(){
            	swiper.enableMousewheelControl();
            }, 1000);
		},
		onTransitionEnd: function(swiper) {

            var count = swiper.slides.length;

            for(var i=0; i<count; i++) {
                $(swiper.slides[i]).find('h1').removeClass('fadeInDown')
                    .end().find('p').removeClass('fadeInLeft')
                    .end().find('a').removeClass('fadeInUp');
            }

            $(swiper.slides[swiper.activeIndex]).find('h1').addClass('fadeInDown')
                .end().find('p').addClass('fadeInLeft')
                .end().find('a').addClass('fadeInUp');
		}
    };

	var swiper = new Swiper('.swiper-container', $.extend(swiper_options, swiper_options_custom));
});
