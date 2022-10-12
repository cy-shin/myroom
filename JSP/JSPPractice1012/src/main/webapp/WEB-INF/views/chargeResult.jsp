<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Charge</title>
</head>
<body>

    <%-- Scriptlet으로 값 가져오기 --%>
    <%
    int tenNum = Integer.parseInt(request.getParameter("ten"));
    int fiveNum = Integer.parseInt(request.getParameter("five"));
    int oneNum = Integer.parseInt(request.getParameter("one"));
    %>

    <%
    int tot = tenNum * 10000 + fiveNum * 5000 + oneNum * 1000;
    int coinNum = tot/500;
    %>
    
    <h3>투입 금액 확인</h3>
    <ul>
        <li>10000원 : <%= tenNum %>장</li>
        <li>5000원 : <%= fiveNum %>장</li>
        <li>1000원 : <%= oneNum %>장</li>
        <li>총액 : <%= tot %>원</li>
        <li>반환 개수 : <%= coinNum %>개</li>
    </ul>
    
    
</body>
</html>