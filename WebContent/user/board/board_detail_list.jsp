<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat" %>
<%@ page import="hanbit.*" %>
<%@ page import="java.util.*" %>

<jsp:useBean id="dao" class="hanbit.FreeBoardDAO"/>

<%	
	int total = dao.count();
	ArrayList<FreeBoardVO> alist = dao.getMemberList();
	int size = alist.size();
	int size2 = size;
	
	final int ROWSIZE = 12;
	final int BLOCK = 5;
	int indent = 0;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int end = (pg*ROWSIZE);
	
	int allPage = 0;

	int startPage = ((pg-1)/BLOCK*BLOCK)+1;
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;
	
	allPage = (int)Math.ceil(total/(double)ROWSIZE);
	
	if(endPage > allPage) {
		endPage = allPage;
	}
	
	size2 -=end;
	if(size2 < 0) {
		end = size;
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
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
      <div class="w3-container">
        <h2>자유게시판</h2>
        <select>
          <option value="1">제목+내용</option>
          <option value="2">제목</option>
          <option value="3">내용</option>
        </select>
        <input type="text" name="firstname" style="background-image:url('images/search-icon.png');
               background-position:right center; background-repeat: no-repeat;">
      </div>
      <br>
      <div class="w3-container">
        <table class="w3-centered w3-table">
          <tr class="w3-border w3-border-black w3-grey">
            <th>번호</th>
            <th style="min-width:300px;max-width:600px">제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>추천</th>
            <th>조회수</th>
          </tr>
          
          <%
          if(total==0) {
          %>
            <tr align="center" bgcolor="#FFFFFF" height="30">
            <td colspan="6">등록된 글이 없습니다.</td>
          </tr>
          <%
          } else {
        	  for(int i=ROWSIZE*(pg-1); i<end; i++) {
        		  FreeBoardVO vo = alist.get(i);
        		  int idx = vo.getId();
          %>
          <tr>
            <td><%=idx %></td>
            <td>
            <%
            for(int j=0; j<indent; j++) {
            	%> &nbsp;&nbsp;&nbsp;<%
            }
            // todo: add reply img 
            %>  
            <a href="board_view.jsp?idx=<%=idx%>"><%=vo.getTitle() %></a></td>
            <td><%=vo.getWriter() %></td>
            <td><%=vo.getWrite_date() %></td>
<!--             change Hit to recommend -->
            <td><%=vo.getGood() %></td>  
            <td><%=vo.getHit() %></td>
        	<%
        	// todo: add new img        	
        	} 
          }
          %>
          </tr>
          <!--
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          <tr>
            <td>110011</td>
            <td>"그누보드"하면 어떤것이 떠오르시나요?<span style="color:red;">24</span></td>
            <td>그누보드</td>
            <td>16/01/18</td>
            <td>0</td>
            <td>22</td>
          </tr>
          -->
        </table>
        <table width="100%" cellpadding="0" cellspacing="0" >
        <tr><td colspan="4" height="5"></td></tr>
        <tr>
        </tr>
        <tr align="center">
        <td>
        <%
        if(pg>BLOCK) {
        %>
          [<a href="#?pg=1">◀◀</a>]
          [<a href="#?pg=<%=startPage-1%>">◀</a>]
        <% 
        } 
        for(int i = startPage; i<=endPage; i++) {
        	if(i==pg) {
        	%>
        	<u><b>[<%=i %>]</b></u>
        	<%
        	} else {
        	%>
        	[<a href="#?pg=<%=i %>"><%=i %></a>]
        	<%        		
        	}
        }        
        %>
        <%
        if(endPage<allPage) {
        %>
        [<a href="#?pg=<%=endPage+1%>">▶</a>]
		[<a href="#?pg=<%=allPage%>">▶▶</a>]
		<%
        }
		%>
		</td>          
        </tr>
        <tr><td class="w3-center"><br><button class="w3-btn w3-dark-grey" OnClick="window.location='#'">글쓰기</button></td></tr>
        </table>
      </div>
	</div>
  </div>
</body>
</html>

