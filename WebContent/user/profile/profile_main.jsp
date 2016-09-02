<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TRACKER</title>
<script type="text/javascript" src="../js/jquery-3.1.0.min.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../css/profile_main.css">
</head>
<body>
<jsp:include page="../outline/header.jsp" flush="false"></jsp:include>
  <div class="container">
  
    <div class="side">
      <div class="profile">
        <div class="profile_picture"></div>
        <div class="profile_description">
          <h3>John Mayer</h3>
          <p class="id_val">@jmayer12</p>
          <div class="action">
            <button>팔로우</button>
            <button>쪽지</button>
          </div>
        </div>
      </div>
      <div class="menu">
        <ul>
          <li><a href="#">About Me</a></li>
          <li><a href="#">배송 조회</a></li>
          <li><a href="#">회원 탈퇴</a></li>
        </ul>
      </div>
    </div>

    <div class="about">
      <h2 class="title">About Me</h2>

      <div class="content">
        <h2>내 정보</h2>
        <div class="card">
          <div class="col">
            <div class="col_title">
              <h5>요약</h5>
              <h5><a class="edit" href="#">수정하기</a></h5>
            </div>
            <hr>
            <div class="profile_content">
	            <ul>
	              <li class="name">이진혁</li>
	              <li class="birthday">1991년 11월 17일</li>
	              <li class="phone">010 1234 4567</li>
	              <li class="address">배송지가 아직 입력되지 않았습니다.</li>
	              <li class="detail">자기소개가 아직 입력되지 않았습니다.</li>
	            </ul>
            </div>
            
          </div>
        </div>
      </div>

      <div class="content">
        <h2>친구</h2>
        <div class="card">
          <div class="col">
            <div class="col_title">
              <h5>전체&nbsp;&nbsp;121</h5>
              <h5><a class="more" href="#">더 보기</a></h5>
            </div>

            <hr>
            <div class="friend">
              <div class="friend_picture"></div>
              <div class="friend_description">
                <h3>John Mayer</h3>
                <div class="f_action">
                  <span>언팔로우</span>
                </div>
              </div>
            </div>
            <div class="friend">
              <div class="friend_picture"></div>
              <div class="friend_description">
                <h3>John Mayer</h3>
                <div class="f_action">
                  <span>언팔로우</span>
                </div>
              </div>
            </div>
            <div class="friend">
              <div class="friend_picture"></div>
              <div class="friend_description">
                <h3>John Mayer</h3>
                <div class="f_action">
                  <span>언팔로우</span>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
     <jsp:include page="../outline/footer.jsp" flush="false"></jsp:include>
  </div>

</body>
</html>
