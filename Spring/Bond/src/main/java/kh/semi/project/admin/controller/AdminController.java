package kh.semi.project.admin.controller;

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
	
	/*
	   		- 일반 for + 추가 기능
   		
   		- 속성
   		1) var : 현재 반복 횟수에 해당하는 변수 (int i)
   		2) begin : 반복 시 var 시작 값
   		3) end : 반복이 종료될 var 값
   		4) step : 반복 시 마다 var의 증가값(기본값 1)
   		
   		* 5) items : 반복 접근할 객체(배열 또는 컬렉션)
   		* 6) varStatus : 현재 반복 상태와 관련된 정보를 제공하는 변수 선언
   						varStatus="변수명"
   						-> c:forEach 구문 내에서 "변수명"을 통해 원하는 값을 얻을 수 있다.
   						
   						- varStatus의 하위 속성
   						1> current: 현재 반복 횟수(현재 var 값)
   									또는 현재 반복 접근 중인 객체(컬렉션/배열 요소)
   						2> index : 현재 인덱스값을 반환(0부터 시작)
   						3> count : 현재 몇 바퀴째인지, 반복 횟수를 반환(1부터 시작)
   						4> first : 첫 번째 반복이면 true, 아니면 false
   						5> last : 마지막 반복이면 true, 아니면 false
	 */
	
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
