<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="menu.css" />
<script src="../jquery-3.5.1.js"></script>
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
<title>Insert title here</title>

</head>
<body>
	<header>
	<nav>
			<ul class="clearfix">
				
				
				<li>로그인
						<ul>
							<li>로그인</li>
							<li>회원가입</li>
						</ul>
				</li>
				<li>장바구니
						<ul>
							<li>추천 공연</li>
							<li>내 장바구니</li>
						</ul>
				</li>
				<li>공연
						<ul>
							<li>인기 공연</li>
							<li>새로운 공연</li>
							<li>전체 공연</li>
						</ul>
				</li>				

			</ul>
	</nav>
</header>

</body>
</html>