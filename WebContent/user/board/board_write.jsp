<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>

  $("document").ready(function(){
	 $("#btnWrite").click(function(){
		 // 빈칸 체크
		 
	 }); 
  });
</script>
</head>
<body>
	<header class="w3-container w3-grey w3-center">
		<h2>header</h2>
	</header>
	<div class="w3-row-padding">
	  <div class="w3-col s4">
	    <br>
	    <div class="w3-border" style="width: 100%;">
          <header class="w3-container w3-border-bottom">
	      <h3>Community</h3>
	      </header>
	    <div class="w3-container">
	      <p>자유게시판</p>
	      <p>문의</p>
	      <p>후기</p>
	      <p>Q & A</p>
	    </div>
	    </div>
        <br>
	  <div class="w3-border" style="width: 100%;">
        <header class="w3-container w3-border-bottom">
	    <h3>커뮤니티 새 글</h3>
	    </header>
	    <div class="w3-container">
	    <ul style="list-style-type:none;">
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	    </ul>
	    </div>
	  </div>
	  <div class="w3-border" style="width: 100%;">
        <header class="w3-container  w3-border-bottom">
	    <h3>커뮤니티 인기글</h3>
	    </header>
        <div class="w3-container">
	    <ul style="list-style-type:none;">
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	      <li>드디어 테슬라, 19일 한국예약</li>
	    </ul>
	    </div>
	  </div>
	  <br>
    </div>

    <div class="w3-col s8">
      <br>  
      <h3>> 새 글 쓰기</h3>
      <br>     
      <div class="w3-container" style="width:100%;">
      <form name="WriteForm" action="write_ok.jsp" method="post">
        <div class="w3-center w3-border-top w3-border-bottom w3-light-grey w3-padding-8">
          <span style="margin-left:10px;">제목</span>
          <input type="text" id="title" name="title" style="margin-left:10px; width:500px;"></input>
        </div>
        <div class="w3-center w3-light-grey w3-padding-8">
          <textarea id="content" name="content" rows="20" cols="50">
          </textarea>
        </div>
        <br>
        <div>
          <div class="w3-left">
            <span >&nbsp;&nbsp;구분&nbsp;&nbsp;</span>
			   <input type="radio"  name="board" value="free">&nbsp;자유&nbsp;&nbsp;
               <input type="radio"  name="board" value="query">&nbsp;문의&nbsp;&nbsp;
               <input type="radio"  name="board" value="qna">&nbsp;Q&A
          </div>
          <div class="w3-right">
            <button id="BtnWrite">등록</button>
            <button>취소</button>
          </div>
        </div>
      </form>
      </div>
	</div>
  </div>


</body>
</html>

