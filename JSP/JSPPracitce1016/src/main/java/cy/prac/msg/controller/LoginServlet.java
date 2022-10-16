package cy.prac.msg.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cy.prac.msg.model.service.UserService;
import cy.prac.msg.model.vo.User;

@WebServlet("/msg/Login")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 서비스 객체 생성
		UserService userService = new UserService();
		
		// post방식은 인코딩 필요함
		req.setCharacterEncoding("UTF-8");
		
		try {
			// 입력한 id, password를 parameter로 가져옴
			String inputId = req.getParameter("inputId");
			String inputPw = req.getParameter("inputPw");

			// id, password를 가져옴
			int result = userService.login(inputId, inputPw);
			
			
			if(result > 0) {
				// 위임 준비
				RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/msg/Login.jsp");
				// 전달
				dispatcher.forward(req, resp);
			} else {
				System.out.println("아이디 혹은 비밀번호가 일치하지 않습니다.");
			}
		} catch (Exception e) {
			
			// TODO: handle exception
		}

		
	}
}
