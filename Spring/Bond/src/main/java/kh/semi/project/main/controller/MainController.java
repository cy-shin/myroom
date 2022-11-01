package kh.semi.project.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kh.semi.project.member.model.service.MemberService;
import kh.semi.project.member.model.vo.Member;

@Controller
public class MainController {
	
	
	@Autowired
	private MemberService service;
	// bean을 의존성 주입받음
	// Service 클래스에서 @Service 어노테이션을 작성해서 bean으로 만들었음!
	
//	@RequestMapping(value="/", method = RequestMethod.GET ) 
//	public String MemberList() {
//		return "admin/member-list"; 
//	}
//	
	
	// 메인화면
	@GetMapping("/")
	public String main() {
		return "/admin/main";
	}
	
	
	/*    
	 * @ModelAttribute 어노테이션 사용
	 * 
	 * [작성법]
	 * @ModeAttribute VO타입 매개변수명
	 * -> 파라미터의 name 속성 값이
	 * 	  지정된 VO의 필드명과 같으면
	 *    해당 VO 객체의 필드에 파라미터를 세팅
	 *    
	 * [조건]
	 * 1. name 속성 값과 필드 명이 같아야 함.
	 * 2. VO에 반드시 기본 생성자가 존재해야 함.
	 * 3. VO에 반드시 setter가 존재해야 함.
	 * 
	 **/
	
	// 로그인
	@PostMapping("/login")
	public String login(/*@ModelAttributes*/ Member inputMember // Member 객체를 얻어옴
					  , Model model // Model : 데이터를 Map 형태로 저장, 전달하는 객체로 request scope를 기본값으로 가짐
					//, RedirectAttributes ra : redirect 시 값을 전달할 때 사용하는 객체로 request scope에 위치하나, redirect 시에만 session scope로 이동함
						) {
		Member loginMember = service.login(inputMember); // ModelAttribute를 사용하고 있어서, 별도의 세팅 작업이 필요하지 않음
		
		return null;
	}
}
