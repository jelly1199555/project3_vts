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
<body>
<form action='joinServer' method='post' name='form1'>
	<img src="images/logo.png"><h1 align ="center">ȸ������</h1><br>

	<table align="center">
		<tr><td>�̸� :</td>
			<td><input type="text" name='name' id='name' required="required"></td>
		</tr><tr><td>ID :</td>
			<td><input type="text" name='id' id='id' required="required"></td>
		</tr><tr><td>Password :</td>
			<td><input type="password" name='pw' id='pw' required="required"></td>
		</tr><tr><td>������� :</td>
			<td><input type="text" name='birth' id='birth' required="required"></td>
			<td> ex) 21210101 ����</td>
		</tr>
		<tr><td>���� :</td>
			<td><select name="gender" id="gender">
				<option value="��">����</option>
				<option value="��">����</option>     		
   				</select></td>
		</tr>
		<tr><td>��ȭ��ȣ :</td>
			<td><input type="text" name='tel' id='tel' required="required"></td>
		</tr>
		</tr>
		<tr><td>�ּ� :</td>
			<td><input type="text" name='address' id='address' required="required"></td>
		</tr>
		<tr><td>�̸��� :</td>
			<td><input type="email" name='email' id='email' required="required"></td>
		</tr>
		<tr>
		<td><br><br><input type="submit" value="ȸ������" id="loginbutton"></td>
		<td><a href="index.html"><br><br><input type="button" value="���" id="loginbutton"></a></td>
		</tr>
	</table>

</form>
</body>
</html>