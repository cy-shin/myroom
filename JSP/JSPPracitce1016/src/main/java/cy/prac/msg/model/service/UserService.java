package cy.prac.msg.model.service;

import static cy.prac.common.JDBCTemplate.*;

import java.sql.Connection;

import cy.prac.msg.model.dao.UserDAO;
import cy.prac.msg.model.vo.User;

public class UserService {
	
	UserDAO dao = new UserDAO();
	
	 
	/** 로그인 메서드
	 * @return
	 * @throws Exception
	 */
	public int login(String userId, String userName) throws Exception {
		Connection conn = getConnection();
		
		int result = dao.login(conn, userId, userName);
		
		close(conn);
		
		return result;
	}
			
}
