package kh.semi.project.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kh.semi.project.admin.model.service.AdminService;
import kh.semi.project.member.model.vo.Member;

@SessionAttributes("memberList")
@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;

	/** 로그인 후 관리자 페이지로 이동
	 * @return
	 */
	@GetMapping("/admin/memberList")
	public String goMemberList() {
		return "/admin/memberList";
	}
	
	/** 리스트 불러오기
	 * @return
	 */
	@GetMapping("/printMemberList")
	public String printMemberList(Model model) {
		
		List<Member> memberList = service.printMemberList();
		
		model.addAttribute("memberList", memberList);
		
		return "redirect:/admin/memberList";
	}
}
