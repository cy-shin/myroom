package kh.semi.project.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.semi.project.admin.model.dao.AdminDAO;
import kh.semi.project.member.model.vo.Member;

@Service
public class AdminService {
	
	@Autowired
	private AdminDAO dao;

	
	public List<Member> printMemberList() {
		List<Member> memberList = dao.printMemberList();
		
		return memberList;
	}
	
	
}
