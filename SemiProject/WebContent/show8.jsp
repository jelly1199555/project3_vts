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
							<li><a href="../store.html">내 장바구니</a></li>
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


<div><h1>이마고와 센트</h1></div>

<hr><br>

<section>
<img src="images/poster8.jpg">
<br><br><br>
<div class="content"><br><br>[상세설명]<br><br>
'향수의 인격화' 후각을 시각적으로 변형시켜 향의 이해를 돕는다. 대중의 높은 이해도를 위해 '그리스로마신화'로 이해를 더욱 쉽게 만든다. 또한 봄, 여름, 가을, 겨울 사계절로 각 계절마다 어울리는 주제와 그와 관련된 신화 이야기와 향수를 연결시켜 구성되어있다. 에로스와 프쉬케, 디오니소스, 메두사, 하데스 등의 이야기를 일러스트 만화로 구성하였고 각 신화와 어울리는 향수의 탑노트, 미들노트, 베이스노트의 특성을 시각적으로 구현하였다. 소개에는 딥디크 한국지사에서 담당하였다.
<br><br><br><br><br><br>
<jsp:include page="notice.jsp"/>
<br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</div>
</section>


<nav>
<table><br><br><br>
<tr><td>공연제목</td><td>이마고와 센트</td></tr>
<tr><td>공연날짜</td><td>2021.02.27 ~ 2021.06.27</td></tr>
<tr><td>공연시간</td><td>10:30 17:30</td></tr>
<tr><td>출연자  </td><td>COSMIC</td></tr>
<tr><td>가격     </td><td>19000원</td></tr>
<tr><td></td></tr>
<tr  id="reservation"><td colspan=2 onclick="alert('공연예정작입니다');">> 예매하기    </td></tr>
</table>

<br><br><br><br><br>

</nav>



</body>
</html>