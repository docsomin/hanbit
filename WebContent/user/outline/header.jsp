<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link rel="stylesheet" href="../css/header.css">
	<script type="text/javascript" src="../js/jquery-3.1.0.min.js"></script>
	<script src="../js/header.js"></script>
</head>
<body>
	<header>
		<div class="logo">
			<img src="../images/logo_header.png" alt="logo" >
		</div>
		<div class="nav-list"></div>
		<nav id="nav">
			<ul>
				<li><a href="#">BIKE</a></li>
				<li><a href="#">ACCESSORY</a></li>
				<li><a href="#">CLOTHES</a></li>
				<li><a href="#">BOARD</a></li>
			</ul>
		</nav>
		<div class="topInfo">
			<div class="topLogin">
				<div class="topInfoSet">
					<!--<sapn><a href="#">login</a></sapn><span class="top_">|</span>-->
					<sapn class="info"><a href="#">Mypage</a></sapn><span class="top_">|</span>
					<sapn><a href="#">logout</a></sapn><span class="top_">|</span>
					<sapn><a href="#">cart</a></sapn>
				</div>
				<div class="topSearch_btn"><img src="../images/ic_search.png" alt="서치"></div>
			</div>
			<div class="topSearch_box">
				<div class="topSearch_l">
					<input type="text" placeholder="검색어를 입력하세요">
				</div>
				<div class="topSearch_r">
					<a href="#"><img src="../images/ic_search.png" alt="서치" width="20" height="20"></a>
				</div>
				<div class="topSearch_b">인기 검색어</div>
				<div class="topSearch_close">닫기 X</div>
			</div>
		</div>
	</header>
	<div class="top_modal"></div>
	 
</body>
</html>
