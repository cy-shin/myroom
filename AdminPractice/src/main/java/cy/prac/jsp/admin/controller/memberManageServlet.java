package cy.prac.jsp.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cy.prac.jsp.admin.model.service.AdminService;
import cy.prac.jsp.admin.model.vo.Admin;

@WebServlet("/memberManage")
public class memberManageServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Admin admin = new Admin();
		AdminService service = new AdminService();
		
		try {
			List<Admin> memberList = service.memberList();
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/memberManage.jsp");
			
			req.setAttribute("memberList", memberList);
			
			dispatcher.forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		Admin admin = new Admin();
		AdminService service = new AdminService();
		
		try {
			String keyword = req.getParameter("keyword");
			
			List<Admin> findMemberList = service.findMemberList(keyword);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/memberManage.jsp");
			
			req.setAttribute("memberList", findMemberList);
			req.setAttribute("usedKeyword", keyword);
			
			dispatcher.forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
