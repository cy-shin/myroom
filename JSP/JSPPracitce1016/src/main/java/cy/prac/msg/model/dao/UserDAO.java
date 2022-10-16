package cy.prac.msg.model.dao;

import static cy.prac.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import cy.prac.msg.model.vo.User;

public class UserDAO {
	
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	Properties prop;
	
	public UserDAO() {
		try {
			
			String filePath = UserDAO.class.getResource("/cy/prac/sql/user-sql.xml").getPath();
					
			prop = new Properties();
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * @param conn
	 * @return
	 * @throws Exception
	 */
	public int login(Connection conn, String userId, String userPw) throws Exception {
		int result = 0;
		
		try {
			String sql = prop.getProperty("login");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}
}
