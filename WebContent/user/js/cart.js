$(document).ready(function(){
  /*
    상품정보
    pImg : 상품 사진
    pTitle : 상품 타이틀
    pPrice : 상품 가격
    intNumber : 상품 수량
    tPrice : 제품 가격 * 상품 수량

    결제 정보
    totalprice : 전체 가격 
  */
    totCalc();
    //amount change
    $(".intNumber").blur(function(){
        var n = $(".intNumber").index(this);
        var price =parseInt(uncomma($(".pPrice:eq("+n+")").text()));
        var amount = parseInt($(this).val());
        $(".tPrice:eq("+n+")").html(comma(price*amount));
        totCalc();
    });
    //total Price
    function totCalc(){
      result = 0;
      num = $(".intNumber").length;
      for(i=0; i<num; i++){
          result = result + parseInt(uncomma($(".tPrice:eq("+i+")").text()));
      }
      $(".totalprice").text(comma(result));
    }
    function comma(str) {
        str = String(str);
        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    }
    function uncomma(str) {
        str = String(str);
        return str.replace(/[^\d]+/g, '');
    }

    $(".media").hover(function(){
      $(this).find(".pdelete").css("display","block");

    },function(){
      $(this).find(".pdelete").css("display","none");
    });
    $(".pdelete").click(function(){
        var n = $(".pdelete").index(this);
        flag = confirm("삭제하시겠습니까?");

        if(flag){
          $(".media").eq(n).remove();
          totCalc();
        }
    });
});