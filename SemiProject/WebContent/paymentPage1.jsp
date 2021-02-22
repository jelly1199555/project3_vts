<%@page import="vts_VO.Vts_showVO"%>
<%@page import="vts_DAO.Vts_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("euc-kr");
    response.setContentType("text/html; charset=euckr");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script src="jquery-3.5.1.min.js"></script>
<script>
   function pagemove(index){
      if(index == 1){
         document.form1.action="cprice";
      }else if (index == 2){
         document.form1.action="paymentPage2.jsp"
      }
   }

   function wonvalue(){
      var target1 = document.getElementById("coupon");
      var target2 = document.getElementById("count");
      var target3 = document.getElementById("sdon");
      
      var coupon = parseInt(target1.options[target1.selectedIndex].value);
      var count =  parseInt(target2.options[target2.selectedIndex].value);
      var pay = parseInt(target3.value);
      
      var discount = -count*pay*(coupon/100);
      
        document.form1.totpay.value = count*pay*((100-coupon)/100);
        document.form1.cdon.value = discount;
   }

</script>
<body>
<%
request.setCharacterEncoding("UTF-8");
Vts_DAO tidao = new Vts_DAO(); //객체생성
ArrayList<Vts_showVO> tiArray = tidao.getAllInfo(); //DAO, 전체출력을 위해 
								//객체.메소드
%>
<c:forEach var="vo1" items="${alist1}">	

<table border=0 align="center">
	<tr><td colspan=4>
		<table border=0>
		<tr><td><h3>${vo1.title}</h3></td></tr>
		</table>
	</td></tr>
	<tr><td rowspan="2">
		<table border=0 width=300 height=500>
			<tr><td><img src= ${vo1.time} alt="이미지" width=300 height=500></td></tr>
		</table>
		</td>
		<tr><td>
		<table border=0 width=100>
		<tr><td> </td></tr>
		</table>
	</td>
	<td>
	<form action="" method="get" name="form1" id="form1" accept-charset='UTF-8' >
	<table border=0 width=300 height=500>
			<tr><td height=10%><h3>선택사항</h3></td></tr>
			<tr><td height=12%>관람일자</td></tr>
			<tr><td height=3%><select name="ticket" id="ticket">
      				<option value="none2">관람 일시</option>
     				<option value="2020-02-09" disabled>2020-02-09</option>
     				<option value="2020-02-10">2020-02-10</option>
     				<option value="2020-02-11">2020-02-11</option>
      				<option value="2020-02-12">2020-02-12</option>
      				<option value="2020-02-13">2020-02-13</option>
      				<option value="2020-02-14">2020-02-14</option>
   					</select>
   			</td></tr>
   			<tr><td height=12%>인원</td></tr>
   			<tr><td height=3%><select name="count" id="count" onChange='wonvalue()'>
       				<option value="0">인원수</option>
    				<option value="1">1</option>
      				<option value="2">2</option>
      				<option value="3">3</option>
      				<option value="4">4</option>
      				<option value="5">5</option>
   					</select>
   			</td></tr>
   			<tr><td height=12%>D.C</td></tr>
   			<tr><td height=3%><select name="coupon" id="coupon" onChange='wonvalue()'>
     				<option value="0">할인 쿠폰</option>
      				<option value="10">10%</option>
      				<option value="20">20%</option>
      				<option value="30">30%</option>
   					</select>
   			</td></tr>
			<tr><td height=10%>환불규정</td></tr>
			<tr><td height=35%>규정규정규정규정규정규정규정규정규정규정규정
							   규정규정규정규정규정규정규정규정규정규정규정
							   규정규정규정규정규정규정규정규정규정규정규정
			</td></tr>
		</table>
		</td>
		<td>
		<table border=0 width=300 height=500>
			<tr><td height=10%><h3>회원정보</h3></td></tr>
			<tr><td height=12%>회원정보와 동일<input type="checkbox"></td></tr>
			<tr><td height=12%> 이름 : <input type="text" id='name'name='name' value="" required="required"></td></tr>
			<tr><td height=12%> 전화번호 : <input type="tel" id='tel'name='tel' value=""></td></tr>
			<tr><td height=12%> 휴대폰 : <input type="tel" id='phone' name='phone' value=""required="required"></td></tr>
			<tr><td height=12%> E-mail : <input type="email" id='mail' name='mail' value=""required="required"></td></tr>
			<tr><td align="right" height=12%>총 상품금액</td></tr>
			<tr><td align="right" height=12%><input type="text" id='totpay' name='totpay' readonly="readonly">원</td></tr>
		</table>
		</td></tr>
		<tr><td colspan=4 align="right">
			<input type="submit" value="장바구니" onclick="pagemove(1)">
			<input type="submit" value="결제하기" onclick="pagemove(2)">
		</td></tr>
</table>
   <input type="hidden" id="sdon" name='sdon' value=${vo1.pay}>
	<!-- <input type="hidden" id="cdon" name='cdon' value=""> -->
   <input type="hidden" id="title" name='title' value="${vo1.title}">
   <!-- <input type="hidden" id="ssdon" name='ssdon' value="-200"> -->
   <input type="hidden" id="id" name='id' value="jho">
   <input type="hidden" id="time" name="time" value=${vo1.imgsrc}>
	</form>
		</c:forEach>
</body>
</html>