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


<div><h1>토끼뎐</h1></div>

<hr><br>

<section>
<img src="images/poster7.jpg">
<br><br><br>
<div class="content"><br><br>[상세설명]<br><br>
우리 시대를 대표하는 대명창 김민아가 '토끼뎐'으로 무대를 함께한다. 김민아 명창은 2007년 첫 완창 무대를 가진 이후, 해마다 국립극장 무대의 주인공으로 많은 관객들에게 두터운 신뢰와 큰 사랑을 받아왔다. 이번 '토끼뎐'은 용왕이 병이 나자 도사가 나타나 육지에 있는 토끼의 간을 먹으면 낫는다고 한다. 용왕은 수궁의 대신을 모아놓고 육지에 나갈 사자를 고르는데 서로 다투기만 할 뿐 결정을 하지 못하며 펼쳐지는 내용이다. 우아한 명창의 소리에 근심을 모두 날려버리고, 귀한 무대를 놓치지 말자.
<br><br><br><br><br><br>
<jsp:include page="notice.jsp"/>
<br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</div>
</section>


<nav>
<table><br><br><br>
<tr><td>공연제목</td><td>토끼뎐</td></tr>
<tr><td>공연날짜</td><td>2021.03.13 ~ 2021.05.16</td></tr>
<tr><td>공연시간</td><td>13:00</td></tr>
<tr><td>출연자  </td><td>김민아, 정미향, 김기호</td></tr>
<tr><td>가격     </td><td>22000원</td></tr>
<tr><td></td></tr>
<tr  id="reservation"><td colspan=2>> 예매하기    </td></tr>
</table>

<br><br><br><br><br>

</nav>



</body>
</html>