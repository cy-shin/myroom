<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 하세요</title>
</head>
<body>
	<h3>로그인</h3>
	<form action="/login" id="loginFrm" method="POST">
		아이디 <input type="text" name="inputEmail">
		<br>
		비밀번호 <input type="password" name="inputPw">
		<br>
		<button>확인</button>
	</form>
	
</body>
</html>