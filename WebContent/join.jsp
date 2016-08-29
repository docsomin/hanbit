<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import ="java.sql.*"%>
 
<% 
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String email = request.getParameter("E-mail");
	String phone = request.getParameter("phone");
	String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";

	String DB_USER    = "scott"; // DB USER명
	String DB_PASSWORD = "tiger"; // 패스워드

	Connection con = null;
	PreparedStatement  pstmt   = null;
	ResultSet rs = null;
	String sql=null;
	try
	 {
	    Class.forName("oracle.jdbc.driver.OracleDriver");
	    con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	  
	    sql = "insert into clientDB values(?,?,?,?)";
	    pstmt = con.prepareStatement(sql.toString());
	    pstmt.setString(1,id);
	    pstmt.setString(2,password);
	    pstmt.setString(3,email);
	    pstmt.setString(4,phone);
	    pstmt.executeUpdate();
	    pstmt.close();
	    con.close();
	  }catch(SQLException e){out.println(e);}
		//out.print("<script>confirm('가입에 성공하셨습니다.')</script>");
		//response.sendRedirect("login.html");
		%>
	  <script  language=javascript>
	  	confirm("가입에 성공하셨습니다.");
		document.location.href="./login.html";
		
		</script>