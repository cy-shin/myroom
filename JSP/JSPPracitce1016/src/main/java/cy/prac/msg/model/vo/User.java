package cy.prac.msg.model.vo;

public class User {
	
	private String userNo;
	private String userName;
	private String userId;
	private String userPw;
	
	// 기본 생성자
	public User() {}
	
	// 매개변수 생성자
	public User(String userNo, String userName, String userId, String userPw) {
		this.userNo = userNo;
		this.userName = userName;
		this.userId = userId;
		this.userPw = userPw;
	}
	
	// getter and setter
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getUserNo() {
		return userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", userName=" + userName + ", userId=" + userId + ", userPw=" + userPw + "]";
	}
	
	
	
}
