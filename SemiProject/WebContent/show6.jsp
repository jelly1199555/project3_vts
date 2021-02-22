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


<div><h1>Special Gala</h1></div>

<hr><br><br>

<section>
<img src="images/poster6.jpg">
<br><br><br>
<div class="content"><br><br>[상세설명]<br><br>
한국발레예술단이 주최하는 special gala는 국내 최정상급 발레단과 발레를 사랑하는 아마추어 발레단의 열정 가득한 공연을 볼 수 있다. 1부에는 '백조의 호수'로 110년이 넘도록 클래식 발레의 대명사이다. 2부에서는 '분홍신 그 남자'를 관람할 수 있다. 또한 발레리나, 발레리노들이 궁정발레, 고전발레, 모던발레 등 시대별 발레를 설명해주는 시간도 있다. 공연 무대는 필립이 디자인해 로마 바티칸의 성 베드로 대성당 건축과 흡사하다. special gala는 한국인이 가장 좋아하는 클래식 음악 1위의 작곡가 라흐마니노프도 함께한다.
<br><br><br><br><br><br>
<jsp:include page="notice.jsp"/>
<br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</div>
</section>


<nav>
<table><br><br><br>
<tr><td>공연제목</td><td>Special Gala</td></tr>
<tr><td>공연날짜</td><td>2021.03.05 ~ 2021.04.13</td></tr>
<tr><td>공연시간</td><td>12:00 14:00</td></tr>
<tr><td>출연자  </td><td>한국발레예술단</td></tr>
<tr><td>가격     </td><td>22000원</td></tr>
<tr><td></td></tr>
<tr  id="reservation"><td colspan=2>> 예매하기    </td></tr>
</table>

<br><br><br><br><br>

</nav>



</body>
</html>