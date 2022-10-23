package cy.prac.jsp.admin.model.dao;

import static cy.prac.jsp.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import cy.prac.jsp.admin.model.vo.Admin;
import cy.prac.jsp.common.JDBCTemplate;

public class AdminDAO {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	public AdminDAO() {
		try {
			String filePath = AdminDAO.class.getResource("/cy/prac/jsp/sql/admin-sql.xml").getPath();
			
			prop = new Properties();
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public List<Admin> memberList(Connection conn) throws Exception {
		List<Admin> memberList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("memberList");
			
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Admin admin = new Admin();
				
				admin.setMemberNo(rs.getInt("MEMBER_NO"));
				admin.setMemberEmail(rs.getString("MEMBER_EMAIL"));
				admin.setMemberName(rs.getString("MEMBER_NAME"));
				admin.setMemberBirth(rs.getString("MEMBER_BIRTH"));
				admin.setSignupDate(rs.getString("SIGNUP_DATE"));
				admin.setMemberStatus(rs.getString("MEMBER_STATUS"));
				
				memberList.add(admin);
			}
		} finally {
			close(rs);
			close(stmt);
		}
		return memberList;
	}

	/** 키워드로 검색
	 * @param conn
	 * @return
	 * @throws Exception
	 */
	public List<Admin> findMemberList(Connection conn, String keyword) throws Exception {
		List<Admin> findMemberList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("findMemberList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, keyword);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Admin admin = new Admin();
				
				admin.setMemberNo(rs.getInt("MEMBER_NO"));
				admin.setMemberEmail(rs.getString("MEMBER_EMAIL"));
				admin.setMemberName(rs.getString("MEMBER_NAME"));
				admin.setMemberBirth(rs.getString("MEMBER_BIRTH"));
				admin.setSignupDate(rs.getString("SIGNUP_DATE"));
				admin.setMemberStatus(rs.getString("MEMBER_STATUS"));
				
				findMemberList.add(admin);
			}
		} finally {
			close(rs);
			close(stmt);
		}
		return findMemberList;
	}

}
