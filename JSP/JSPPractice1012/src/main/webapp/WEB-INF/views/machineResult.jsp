<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>음료수 자판기</title>
</head>
<body>
    <%-- parameter 및 attribute 세팅 --%>
    <%
        String selectBeverage = request.getParameter("beverage");
        int price = 0;

        switch(selectBeverage) {
        case "sports": price=1300; break;    
        case "coke": price=1800; break;    
        case "soda": price=1700; break;    
        case "coffee": price=1000; break;    
        case "water": price=500; break;    
        default: price=0;
        }

        int tenNum = Integer.parseInt(request.getParameter("ten"));
        int fiveNum = Integer.parseInt(request.getParameter("five"));
        int oneNum = Integer.parseInt(request.getParameter("one"));

        int tot = tenNum * 10000 + fiveNum * 5000 + oneNum * 1000;

        int chargeTot = tot - price;
        boolean flag = true;
        int coin500 = 0;
        int coin100 = 0;
        int temp = chargeTot;

        if(chargeTot>=500) {
            coin500 = temp/500;
            temp = temp%500;
        }
        if(chargeTot>=100) {
            coin100 = temp/100;
        }
    %>
    <ul>
        <li>선택한 음료:<%=selectBeverage%></li>
        <li>가격:<%=price%></li>
        <li>10000원:<%=tenNum%></li>
        <li>5000원:<%=fiveNum%></li>
        <li>1000원:<%=oneNum%></li>
        <li>총 금액:<%=tot%></li>
    </ul>
    <ul>
        <li>총 거스름돈:<%=chargeTot%></li>
        <li>500원:<%=coin500%></li>
        <li>100원:<%=coin100%></li>
    </ul>
    이용해주셔서 감사합니다.
</body>
</html>