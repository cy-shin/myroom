package cy.prac.msg.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cy.prac.msg.model.service.MsgService;
import cy.prac.msg.model.vo.User;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 서비스 객체 생성
		MsgService service = new MsgService();
		
		// post방식은 인코딩 필요함
		req.setCharacterEncoding("UTF-8");
		
		// id, password를 가져옴
		User user = service.login();
		
		// 입력한 id, password를 parameter로 가져옴
		String inputId = req.getParameter("inputId");
		String inputPw = req.getParameter("inputPw");
		
		if(user.getUserId().equals(inputId) && user.getUserPw().equals(inputPw)) {
			// 위임 준비
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/login.jsp");
			// 전달
			dispatcher.forward(req, resp);
			
		}
		
	}
}
