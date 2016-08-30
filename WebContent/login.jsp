<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
    
<% 
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");

	String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";

	String DB_USER    = "scott"; // DB USER명
	String DB_PASSWORD = "tiger"; // 패스워드

	Connection con = null;
	Statement  stmt   = null;
	ResultSet rs = null;
	String sql=null;
	try
	 {
	    Class.forName("oracle.jdbc.driver.OracleDriver");
	    con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	    sql = "select * from clientDB";
	    stmt = con.createStatement();  
	    rs = stmt.executeQuery(sql);
		while(rs.next()){
				if(id.equals( rs.getString(1))){
					
						// 아이디가 틀렸을때%>	
						<script  language=javascript>
					  	confirm("아이디가 맞습니다.");
						</script>
						<%
					if(password.equals(rs.getString(2))){
						
						
						//로그인 성공%>
						<script  language=javascript>
					  	confirm("로그인 성공했습니다.");
						document.location.href="./index.html";
						</script>
						<%
					}else{
						 // 비번이 틀렸을때%>
						<script  language=javascript>
					  	confirm("비번이 틀립니다.");
						document.location.href="./login_failed.html";
						</script>
						<%
					}
				}
				
			
			
		}
		 // 아이디가 틀렸을때%>
		<script  language=javascript>
	  	confirm("아이디가 틀립니다.");
		document.location.href="./login_failed.html";
		</script>
		<%
	    rs.close();
	    stmt.close();
	    con.close();
	    
	  }catch(SQLException e){out.println(e);}
		//out.print("<script>confirm('가입에 성공하셨습니다.')</script>");
		//response.sendRedirect("index.html");
		%>
		<script  language=javascript>
		  	confirm("로그인성공했습니다.");
			document.location.href="./index.html";
		</script>
	