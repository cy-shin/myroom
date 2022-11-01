<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 하세요</title>
</head>
<body>
	<h3>로그인</h3>
	<form action="/login" id="loginFrm" method="POST">
		아이디 <input type="text" name="memberEmail">
		<br>
		비밀번호 <input type="password" name="memberPw">
		<br>
		<button>확인</button>
	</form>
	
	
<c:if test="${!empty message}">
    <script>
        alert("${message}")
    </script>

    <%-- message 1회 출력 후 모든 scope 삭제 --%>
    <c:remove var="message" />
    <%-- message라고만 입력하면 page, request, session, applicaton 스코프의 변수값을 모두 확인 --%>
</c:if>
</body>
</html>