package prac.cy.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/vendingMachine")
public class vendingMachine extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 1. 인코딩
		req.setCharacterEncoding("UTF-8");
		
		// 2. getParameter로 값을 가져오기
        String selectBeverage = req.getParameter("beverage");
        int price = 0;

        switch(selectBeverage) {
        case "sports": price=1300; break;    
        case "coke": price=1800; break;    
        case "soda": price=1700; break;    
        case "coffee": price=1000; break;    
        case "water": price=500; break;    
        default: price=0;
        }

        int tenNum = Integer.parseInt(req.getParameter("ten"));
        int fiveNum = Integer.parseInt(req.getParameter("five"));
        int oneNum = Integer.parseInt(req.getParameter("one"));

        int tot = tenNum * 10000 + fiveNum * 5000 + oneNum * 1000;

        int chargeTot = tot - price;
		
		// 3. JSP 요청 위임
		RequestDispatcher dispatcher = null;
		
		if(chargeTot>=0) {
			dispatcher = req.getRequestDispatcher("WEB-INF/views/machineResult.jsp");
		} else {
			dispatcher = req.getRequestDispatcher("WEB-INF/views/fail.jsp");
		}
		
		// 4. req에 값 세팅
		
		// 5. JSP로 전달
		dispatcher.forward(req, resp);
		
	}
}
