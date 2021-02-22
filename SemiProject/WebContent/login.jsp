<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="./assets/myCSS.css">
<style>
*{
background-image : url(./images/bg8.jpg);
color : white;
}

img{
width : 50px;
height : 50px;
}
placeholder{
background : white;
}

h1{
color : #EC4D36;
}

#loginbutton{
background : black;
color : white;
border : 0;
outline : 0;
}

#loginbutton:hover{
background : black;
color : #EC4D36;
border : 0;
outline : 0;
}


</style>
<script>
function kaja(index){
	if(index ==2){
		document.form1.action="join.jsp"
	}
	if(index == 1){
		document.form1.action="loginServer"
	}
}
</script>
<body>
<form action="" method="post" name='form1'>
		<div>
			<fieldset>
				<legend>
					<img src="images/logo.png"><h1 align="center">로그인 페이지</h1>
				</legend>
				<table align="center">
					<tr>
						<td>아이디</td>
						<td><input placeholder="아이디 입력" type="text" name="id"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input placeholder="비밀번호 입력" type="password" name="pw"></td>
					</tr>
					<tr>
						<td colspan="2">
						<br><br><input type="submit" value="로그인" onclick="kaja(1)" id="loginbutton">
						<input type="reset" value="초기화" id="loginbutton">
						<input type="submit" value="회원가입" onclick="kaja(2)" id="loginbutton">
						</td>
					</tr>
				</table>
			</fieldset>
		</div>
	</form>
</body>
</html>