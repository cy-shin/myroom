package kh.semi.project.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.semi.project.member.model.vo.Member;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public List<Member> printMemberList() {
		return sqlSession.selectList("memberMapper.memberList");
	}

}
