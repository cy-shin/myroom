package prac.cy.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/charge")
public class CoinChanger extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 1. UTF-8로 인코딩
		req.setCharacterEncoding("UTF-8");
		
		// 2. getParameter
		
		// 3. JSP로 요청 위임
		RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/views/chargeResult.jsp");
		
		// 4. 값 세팅
		
		// 5. JSP로 전달
		dispatcher.forward(req, resp);
		
		
		
	}
}
