<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat" %>
<%@ page import="hanbit.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="dao" class="hanbit.FreeBoardDAO"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 db write</title>
 <script>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="board_detail_list.jsp"; 
</script>
</head>
<body>
<%
	String writer = "writer"; //request.getParameter("writer");
	String pass = "pass"; //request.getParameter("pass");
//	String write_date = request.getParameter("write_date");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
//	int hit = Integer.parseInt(request.getParameter("hit"));
//	int good = Integer.parseInt(request.getParameter("good"));
	
	FreeBoardVO vo = new FreeBoardVO();
	vo.setWriter(writer);
	vo.setPass(pass);
	vo.setWrite_date("dummy");
	vo.setTitle(title);
	vo.setContent(content);
	vo.setHit(0);
	vo.setGood(0);
	
	dao.insertWrite(vo);
%>
</body>
</html>