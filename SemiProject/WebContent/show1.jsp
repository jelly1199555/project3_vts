<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="detail/detailmenu.css" />
<script src="jquery-3.5.1.js"></script>
<script>
$(function(){
	var $firstMenu = $('nav > ul > li '),
			$header = $('header');
	
	$firstMenu.mouseenter(function(){
		$header.stop().animate({height:'300px'});
	})
	.mouseleave(function(){
		$header.stop().animate({height:'50px'});
	});	
});
</script>
</head>
<body>


<header>
<nav>
			<ul class="clearfix">
				
				<li><a href="index.html"><img src="images/logo.png" id="vlogo"></a></li>
				<li>로그인
						<ul>
							<li><a href="member/view/LoginForm.jsp">로그인</a></li>
							<li><a href="member/view/JoinForm.jsp">회원가입</a></li>
						</ul>
				</li>
				<li>장바구니
						<ul>
							<li><a href="store.html">내 장바구니</a></li>
						</ul>
				</li>
				<li>공연
						<ul>
							<li><a href="index.html#one">인기 공연</a></li>
							<li><a href="index.html#two">새로운 공연</a></li>
							<li><a href="index.html#three">전체 공연</a></li>
						</ul>
				</li>				

			</ul>
	</nav>
</header>


<div><h1>작은 신의 아이들</h1></div>

<hr><br>

<section>
<img src="images/poster1.jpg">
<br><br><br>
<div class="content"><br><br>[상세설명]<br><br>
작은 신의 아이들은 20년전 실제로 일어난 사건중 세상을 뒤집히게 만든 종교 집단 산하의 복지원에서 벌여진 집단 변사 사건을 수사하는 이야기를다루고 
연쇄 살인 사건을 과학수사 전문인 엘리트 형사 홍길동과 신기로 감각적수사를 하는 김철수가 한팀으로 수사하여 풀어나가는 사건이야기를 다룬다.
<br><br><br><br><br><br>
<jsp:include page="notice.jsp"/>
<br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</div>
</section>


<nav>
<table><br><br><br>
<tr><td>공연제목</td><td>작은 신의 아이들</td></tr>
<tr><td>공연날짜</td><td>2021.03.21 ~ 2021.03.30</td></tr>
<tr><td>공연시간</td><td>12:00 14:00</td></tr>
<tr><td>출연자  </td><td>홍길동 , 김철수 , 김비비 , 김길동 등</td></tr>
<tr><td>가격     </td><td>8000원</td></tr>
<tr><td></td></tr>
<tr  id="reservation"><td colspan=2><a href="getinfo.do?">> 예매하기    </a></td></tr>
</table>

<br><br><br><br><br>

</nav>



</body>
</html>