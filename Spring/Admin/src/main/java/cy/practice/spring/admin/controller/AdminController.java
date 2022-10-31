package cy.practice.spring.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cy.practice.spring.admin.model.service.AdminService;
import cy.practice.spring.admin.model.vo.Member;


@Controller
public class AdminController {
	
	
	// memberList으로 이동
	@GetMapping("/admin/memberList")
	public String memberList() {
		return "admin/memberList";
	}
	
	
	// 검색
	@PostMapping("/admin/memberList")
	public String memberSearch() {
		
	}
}
