	$(document).ready(function(){
		var mySlider = $('.image_slider').bxSlider({
			mode:'horizontal',
			speed:500,
			pager:false,
			auto:true,
			controls:false
			
		});
		$( '.slider-left' ).on( 'click', function () {
			mySlider.goToPrevSlide();  //이전 슬라이드 배너로 이동
			return false;              //<a>에 링크 차단
		} );
		
		//다음 버튼을 클릭하면 다음 슬라이드로 전환
		$( '.slider-right' ).on( 'click', function () {
			mySlider.goToNextSlide();  //다음 슬라이드 배너로 이동
			return false;
		} );
		
	});