<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%request.setCharacterEncoding("euc-kr");
response.setContentType("text/html; charset=euc-kr");%> 
    
    <%
 //   String name = (String)request.getAttribute("name");
 //   String email = (String)request.getAttribute("email");
 //  String phone = (String)request.getAttribute("phone");
 //  String address = (String)request.getAttribute("address");
  //  int totalPrice = (int)request.getAttribute("totalPrice");
     String buyer_name = (String)request.getParameter("buyer_name");
     String email = (String)request.getParameter("mail");
     String phone = (String)request.getParameter("phone");
     String address = (String)request.getParameter("address");
     String stotalPrice =(String)request.getParameter("totpay");
     
     int totalPrice = 100;//Integer.parseInt(stotalPrice);
     String title = request.getParameter("title");
     String id = request.getParameter("id");
     String time = request.getParameter("time");
     String count = request.getParameter("count");
     String ticket = request.getParameter("ticket");
     
     
      
     System.out.println("이름: "+buyer_name);
    System.out.println("이메일: "+email);
     System.out.println("연락처: "+phone);
     System.out.println("주소: "+address);
     System.out.println("가격: "+stotalPrice);
     System.out.println("총가격: "+totalPrice);
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"
		charset='EUC-KR'></script>
<script>



IMP.init('imp44221020');

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '<%=title%>',
    amount : <%=totalPrice%> , //판매 가격
    buyer_email : '<%=email%>',
    buyer_name : '<%=buyer_name%>',
    buyer_tel : '<%=phone%>',
    buyer_addr : '<%=address%>',
    buyer_postcode : '123-456'
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        
       
    
       	$.ajax({
       		type:"get",
       		url: "orderInsert.java", // 이렇게 호출하는대가 있는진 모르겠지만 말도 안되는 경로고 ㅋ
        	url: "http://localhost:8081/3_semiProject/orderInsert", // 실제로 호출하는 URL을 적어줘야되 도메인까지 아 저는 여태 배웟을때 파일을 호출하고 form에서도 서블릿을 호출하려면
       
        	data:{
        		id:"<%=id%>",
        		title:"<%=title%>",
        		ticket:"<%=ticket%>",
        		count:"<%=count%>",
        		time:"<%=time%>",
        		totalPrice:"<%=totalPrice%>"     	
        	},
        	
        	success: function(){
        		alert("결과는 성공");
        	} ,
        		
        	error: function(){
        		alert("결과는 실패");
       	}
        }) //ajax-end
               
        
        window.onload = function(){
            setTimeout("startPage()", 5000);
        }  
        function startPage(){
            document.location.href="./2page2.jsp";
        }

        
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }
    alert(msg);
});
</script>
</head>
<body>

<div style="text-align:center;">
 <p>결제가 완료후 Main Page로 이동합니다.</p>  
</div>

<form action="index.html">
<center><input type="submit" value="처음으로"></center>
</form>


</body>
</html>