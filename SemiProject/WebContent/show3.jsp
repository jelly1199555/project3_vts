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


<div><h1>SHOW CAR</h1></div>

<hr><br>

<section>
<img src="images/poster3.jpg">
<br><br><br>
<div class="content"><br><br>[상세설명]<br><br>
매번 순둥순둥한 자동차가 질리십니까? 쇼카 즉 꿈의 자동차! 전시회에서 만날수있는 공도에선 볼수없는 차들 
자동차회사 또는 개인의차로 이쁘게 꾸미고 멋지게 꾸민 자동차를 자랑하는 쇼 순정자동차에 매말라있거나
신기한차들을 보고싶다면 바로 쇼카!
<br><br><br><br><br><br>
<jsp:include page="notice.jsp"/>
<br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</div>
</section>


<nav>
<table><br><br><br>
<tr><td>공연제목</td><td>SHOW CAR</td></tr>
<tr><td>공연날짜</td><td>2021.03.10 ~ 2021.03.13</td></tr>
<tr><td>공연시간</td><td>13:00 19:00</td></tr>
<tr><td>출연자  </td><td>MC 유리 , 베스트카 차주</td></tr>
<tr><td>가격     </td><td>6500원</td></tr>
<tr><td></td></tr>
<tr  id="reservation"><td colspan=2 onclick="alert('공연예정작입니다');">> 예매하기    </td></tr>
</table>

<br><br><br><br><br>

</nav>



</body>
</html>