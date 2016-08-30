<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
						<%@page import="javax.mail.Transport"%>
						<%@page import="javax.mail.Message"%>
						<%@page import="javax.mail.Address"%>
						<%@page import="javax.mail.internet.InternetAddress"%>
						<%@page import="javax.mail.internet.MimeMessage"%>
						<%@page import="javax.mail.Session"%>
						<%@page import="web.SMTPAutenticator"%>
						<%@page import="javax.mail.Authenticator"%>
						<%@page import="java.util.Properties"%>
    
<% 
	request.setCharacterEncoding("utf-8");
	String email = request.getParameter("E-mail");


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
				if(email.equals( rs.getString(3))){  // 3번이 이메일
					
						// 아이디가 틀렸을때%>	
						<script  language=javascript>
					  	confirm("이메일이 맞습니다.");
						</script>
						
						
						
						
						<%
						request.setCharacterEncoding("utf-8");
						String from = "";
						String to = "dksdytpq2008@naver.com";
						String subject = "제목";
						String content = "내용";
						// 입력값 받음
						Properties p = new Properties(); // 정보를 담을 객체
						p.put("mail.smtp.host","smtp.naver.com"); // 네이버 SMTP
						p.put("mail.smtp.port", "465");
						p.put("mail.smtp.starttls.enable", "true");
						p.put("mail.smtp.auth", "true");
						p.put("mail.smtp.debug", "true");
						p.put("mail.smtp.socketFactory.port", "465");
						p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
						p.put("mail.smtp.socketFactory.fallback", "false");
						// SMTP 서버에 접속하기 위한 정보들
						try{
							Authenticator auth = new SMTPAutenticator();
							Session ses = Session.getInstance(p, auth);
							ses.setDebug(true);
							MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
							msg.setSubject(subject); // 제목

							Address fromAddr = new InternetAddress(from);
							msg.setFrom(fromAddr); // 보내는 사람

							Address toAddr = new InternetAddress(to);
							msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
						
							msg.setContent(content, "text/html;charset=UTF-8"); // 내용과 인코딩
						
							Transport.send(msg); // 전송
						} catch(Exception e){
							e.printStackTrace();
							out.println("<script>alert('Send Mail Failed..');history.back();</script>");
							// 오류 발생시 뒤로 돌아가도록
							return;
						}
						
						out.println("<script>alert('Send Mail Success!!');location.href='mailForm.html';</script>");
						// 성공 시
						
						
				}
		}
		 // 아이디가 틀렸을때%>
		<script  language=javascript>
	  	confirm("이메일이 틀립니다.");
		document.location.href="./login_forget.html";
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
			document.location.href="./login.html";
		</script>
	