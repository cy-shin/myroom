package cy.prac.jsp.admin.model.service;

import static cy.prac.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import cy.prac.jsp.admin.model.dao.AdminDAO;
import cy.prac.jsp.admin.model.vo.Admin;

public class AdminService {

	AdminDAO dao = new AdminDAO();
	
	public List<Admin> memberList() throws Exception {
		Connection conn = getConnection();
		
		List<Admin> memberList = dao.memberList(conn);
		
		close(conn);
		
		return memberList;
	}

	/** 키워드로 검색
	 * @param keyword
	 * @return
	 * @throws Exception
	 */
	public List<Admin> findMemberList(String keyword) throws Exception {
		Connection conn = getConnection();
		
		List<Admin> findMemberList = dao.findMemberList(conn, keyword);
		
		close(conn);
		
		return findMemberList;
	}

}
