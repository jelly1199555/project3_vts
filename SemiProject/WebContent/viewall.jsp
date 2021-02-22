<%@page import="vts_VO.Vts_showVO"%>
<%@page import="vts_DAO.Vts_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head> 
<body>
<h1>보기</h1>
<%
request.setCharacterEncoding("UTF-8");
Vts_DAO tidao = new Vts_DAO(); //객체생성
ArrayList<Vts_showVO> tiArray = tidao.getAllInfo(); //DAO, 전체출력을 위해 
								//객체.메소드
%>

<table border=1>
	<tr>
		<td colspan=4>
		<form action="getinfo.do">				<!-- <form action="Telallview" method="post"> -->
			<input type="submit" value="1보기"> 
		</form>
		</td>
	</tr>
	<!-- 서블릿으로 갔다가 business logic을 처리한 다음 다시 출발한 곳으로 온다 -->
	<!-- 아래는 되돌아와서 출력하기 위한 부분 -->
		<!-- output 부분 -->
	<tr>
		<td>no</td>
		<td>title</td>
		<td>startd</td>
		<td>endd</td>
		<td>time</td>
		<td>pay</td>
		<td>actor</td>
	</tr>
	<!-- java의 for와 같음 -->
	<c:forEach var="vo1" items="${alist1}">		<!-- request scope에 객체전체를 ArrayList alist1에 저장 -->
	<tr>	
		<td>${vo1.no}</td>
		<td>${vo1.title}</td>
		<td>${vo1.imgsrc}</td>
		<td>${vo1.time}</td>
		<td>${vo1.pay}</td>
	
	</tr>
	</c:forEach>

</table>

<table border=1>
	<tr>
		<td colspan=4>
		<form action="getinfo2.do">				<!-- <form action="Telallview" method="post"> -->
			<input type="submit" value="2보기">
		</form>
		</td>
	</tr>
	<!-- 서블릿으로 갔다가 business logic을 처리한 다음 다시 출발한 곳으로 온다 -->
	<!-- 아래는 되돌아와서 출력하기 위한 부분 -->
		<!-- output 부분 -->
	<tr>
		<td>no</td>
		<td>title</td>
		<td>startd</td>
		<td>endd</td>
		<td>time</td>
		<td>pay</td>
		<td>actor</td>
	</tr>
	<!-- java의 for와 같음 -->
	<c:forEach var="vo2" items="${alist2}">		<!-- request scope에 객체전체를 ArrayList alist1에 저장 -->
	<tr>	
		<td>${vo2.no}</td>
		<td>${vo2.title}</td>
		<td>${vo2.startd}</td>
		<td>${vo2.endd}</td>
		<td>${vo2.time}</td>
		<td>${vo2.pay}</td>
		<td>${vo2.actor}</td>
	</tr>
	</c:forEach>

</table>
</body>
</html>