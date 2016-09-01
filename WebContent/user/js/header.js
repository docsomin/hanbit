$(document).ready(function(e){
	
		$('nav ul li a').hover(function(){
			var target=$(this).html();
			switch(target){
				case "BIKE":
					$(this).html("자전거");
					break;
				case "ACCESSORY":
					$(this).html("악세사리");
					break;
				case "CLOTHES":
					$(this).html("옷");
					break;
				case "BOARD":
					$(this).html("게시판");
					break;
			}
		},function(){
			var target=$(this).html();
			switch(target){
				case "자전거":
					$(this).html("BIKE");
					break;
				case "악세사리":
					$(this).html("ACCESSORY");
					break;
				case "옷":
					$(this).html("CLOTHES");
					break;
				case "게시판":
					$(this).html("BOARD");
					break;
			}
		});	

		$( ".topSearch_btn" ).click(function() {
  			$( ".topSearch_box" ).slideToggle( "slow", "linear" );

		});

		$( ".topSearch_close" ).click(function() {
			$( ".topSearch_box" ).slideToggle( "slow", "linear" );
		});
		
		var display = false;
		$( ".nav-list" ).click(function() {
			nav = $("nav");
			if(display==false){
				nav.animate({ left: "0%" }, 800 );
				display=true;
			}else{
				nav.animate({ left: "-30%" }, 600 );
				display=false;
			}
			$( ".top_modal").fadeToggle("slow","linear");
		  
		});

	});