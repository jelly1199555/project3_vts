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


<div><h1>Day of Being Wild</h1></div>

<hr><br>

<section>
<img src="images/poster2.jpg">
<br><br><br>
<div class="content"><br><br>[상세설명]<br><br>
15년간 단짝친구인 맹구와 훈이 그둘은 살다가 어느날 문뜩 대화하다가 삶의 즐거움을 느끼고파 
책에서 나온 실존하는인물인 아이스를 찾아가면 삶의 즐거움과 교훈을 얻을수있다고 읽은 훈이와 맹구는
즐겁고 가벼운마음으로 아이스를 찾으러 떠나는 내용을 다룬다.
<br><br><br><br><br><br>
<jsp:include page="notice.jsp"/>
<br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</div>
</section>


<nav>
<table><br><br><br>
<tr><td>공연제목</td><td>Day of Being Wild</td></tr>
<tr><td>공연날짜</td><td>2021. 03.02 ~ 2021.03.05</td></tr>
<tr><td>공연시간</td><td>14:00 16:00</td></tr>
<tr><td>출연자  </td><td>아이스 , 맹구 , 훈이 외</td></tr>
<tr><td>가격     </td><td>8000원</td></tr>
<tr><td></td></tr>
<tr  id="reservation"><td><a href="getinfo2.do">> 예매하기    </a></td></tr>
</table>

<br><br><br><br><br>

</nav>



</body>
</html>