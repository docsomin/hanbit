<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat" %>
<%@ page import="hanbit.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="dao" class="hanbit.FreeBoardDAO"/>

<%	
	//int idx = Integer.parseInt(request.getParameter("idx"));
	int idx = 1;
	
	dao.UpdateHit(idx);
	FreeBoardVO vo = dao.getView(idx);
    
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
      <div class="w3-xxlarge"> > 자유게시판</div>
      <br>
	  <div class="w3-container" style="width: 90%;">
	  <div class="w3-border-bottom w3-xlarge"><%=vo.getTitle() %></div>
	  <div class="w3-right w3-text-dark-grey">작성자 <%=vo.getWriter() %> 
	  조회<%=vo.getHit()%> 추천<%=vo.getGood()%></div>
	  <br>
	  <br>
	  <div class="w3-padding-medium w3-light-grey">
	    <%=vo.getContent() %>
	  </div>
	  <br>
	  <div class="w3-center">
	  <button class="w3-btn w3-dark-grey">추천</button>
	  </div>
	  <div class="w3-padding-tiny w3-content" style="width:80%">
	    <div class="w3container w3-light-grey" style="min-height:50px;">
	      <img class="w3-left" src="http://placehold.it/50x50"></img>
	      <p>작성자 Sysdate</p>
	      <p>댓글 내용</p>
	    </div>
	    <div class="w3container w3-light-grey" style="min-height:50px;">
	      <img class="w3-left" src="http://placehold.it/50x50"></img>
	      <p>작성자 Sysdate</p>
	      <p>댓글 내용</p>
	    </div>
	    <div class="w3container w3-light-grey" style="min-height:50px;">
	      <img class="w3-left" src="http://placehold.it/50x50"></img>
	      <p>작성자 Sysdate</p>
	      <p>댓글 내용</p>
	    </div>
	  </div>
	  </div>
	</div>
  </div>
  
</body>
</html>