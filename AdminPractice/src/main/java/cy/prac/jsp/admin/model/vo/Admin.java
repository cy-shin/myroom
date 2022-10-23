package cy.prac.jsp.admin.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor 			// * 기본 생성자
@AllArgsConstructor 		// 모든 매개변수 생성자
@Getter 					// * 모든 필드의 getter
@Setter 					// * 모든 필드의 setter
@ToString 					// toString overriding

public class Admin {
	private int memberNo;
	private String memberEmail;
	private String memberName;
	private String memberBirth;
	private String signupDate;
	private String memberStatus;
}
