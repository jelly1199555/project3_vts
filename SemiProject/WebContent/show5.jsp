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


<div><h1>WangKarWai 특별전</h1></div>

<hr><br>

<section>
<img src="images/poster5.jpg">
<br><br><br>
<div class="content"><br><br>[상세설명]<br><br>
'살아있는 거장' 왕가위 감독의 작품해설을 왕가위와 왕조위에게 직접 들어볼 수 있다. 그가 연출한 작품 중 아비정전('90), 중경삼림('94), 해피투게더('97), 화양연화('00)를 선보인다. 특히 '중경삼림', '해피투게더' 두 편은 4K 디지털 리마스터링을 통해 업그레이드 된 버전으로 보다 밝고 선명한 화질로 볼 수 있다. 또한 왕가위는 이번 특별전은 장국영을 추모하며 참여했다고 한다. 작품해설과 더불어 장국영과의 일화도 풀어줄 것으로 기대된다. 관람 후 추천을 통해 굿즈 이벤트가 진행돼 많은 마니아들의 주목을 받을 것으로 기대된다.
<br><br><br><br><br><br>
<jsp:include page="notice.jsp"/>
<br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</div>
</section>


<nav>
<table><br><br><br>
<tr><td>공연제목</td><td>WangKarWai 특별전</td></tr>
<tr><td>공연날짜</td><td>2021.03.05 ~ 2021.03.28</td></tr>
<tr><td>공연시간</td><td>14:00 19:00</td></tr>
<tr><td>출연자  </td><td>왕가위, 왕조위</td></tr>
<tr><td>가격     </td><td>23000원</td></tr>
<tr><td></td></tr>
<tr  id="reservation"><td colspan=2>> 예매하기    </td></tr>
</table>

<br><br><br><br><br>

</nav>



</body>
</html>