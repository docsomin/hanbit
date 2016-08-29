<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="hanbit.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="pull" class="hanbit.Pull"/>

<%
  pull.doPull();
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script language=javascript>
		self.window.alert("do");
 		location.href="javascript:history.back()";
	</script>
</head>
<body>

</body>
</html>