/**
 * 
 */
	$(document).ready(function(){
			$(".mainMenu li").hover(function(){
				$(this).css('background','#389bff');
				$(this).children().css('color','#ffffff');
			},function(){
				$(this).css('background','#ffffff');
				$(this).children().css('color','#b9c2cc');
			});
			$(".subMenu li").hover(function(){
				$(this).css('background','#389bff');
				$(this).children().css('color','#ffffff');
			},function(){
				$(this).css('background','#ffffff');
				$(this).children().css('color','#b9c2cc');
			});
			
					//alert($(this).html());
				//$(this).html()
		
			var CurrentFileName = document.URL.substring(document.URL.lastIndexOf("/") + 1, document.URL.lastIndexOf("/") + 30);
			//alert(CurrentFileName);
			if(CurrentFileName == ("productManagement.html")){
				
				if($(".subMenu li a").html()==("상품관리")){	
					alert($(".subMenu li a").html());
					$(".subMenu li a").parent().css('background',"#389bff");
					$(".subMenu li a").css('color',"#b9c2cc");
				}
			}
			
			var flag=true;
			$('.showMenu').click(function(){
					if(flag){
						//var width_size = $('subMenu').attr('width');
						$('.subMenu').animate({left:'-300px', opacity:'0'},1000);
						
						flag=false;
					}else{
						//var width_size = $('subMenu').attr('width');
						
						$('.subMenu').animate({left:'0px', opacity:'1'},1000);
						flag=true;
					}
					
			});
	});