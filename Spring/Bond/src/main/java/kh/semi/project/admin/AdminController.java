package kh.semi.project.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	/** 로그인 후 관리자 페이지로 이동
	 * @return
	 */
	@GetMapping("/admin/memberList")
	public String goMemberList() {
		return "/admin/memberList";
	}
}
