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


<div><h1>당신의 꿈을 삽니다</h1></div>

<hr><br>

<section>
<img src="images/poster4.jpg">
<br><br><br>
<div class="content"><br><br>[상세설명]<br><br>
세상에는 꿈이없는 사람들이 너무 많습니다. 이런이들에게 꿈을 나눠주세요.
나누는 당신은 더크게 돌아와 꿈을 이루는 힘을 줄 것이고, 당신이 나눈꿈이
다른이들의 꿈 꾸는 것을 도와줄것입니다 모두 서로도와 꿈 선언 효과라는
이 경험을 함께해봐요! 
<br><br><br><br><br><br>
<jsp:include page="notice.jsp"/>
<br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</div>
</section>


<nav>
<table><br><br><br>
<tr><td>공연제목</td><td>당신의 꿈을 삽니다</td></tr>
<tr><td>공연날짜</td><td>2021.04.01 ~ 2021.04.02</td></tr>
<tr><td>공연시간</td><td>12:00 18:00</td></tr>
<tr><td>출연자  </td><td>Mr.길동</td></tr>
<tr><td>가격     </td><td>7000원</td></tr>
<tr><td></td></tr>
<tr  id="reservation"><td colspan=2>> 예매하기    </td></tr>
</table>

<br><br><br><br><br>

</nav>



</body>
</html>