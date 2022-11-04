package kh.semi.project.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.semi.project.member.model.vo.Group;
import kh.semi.project.member.model.vo.Member;
import kh.semi.project.member.model.vo.Post;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSession sqlSession;
	
	/** 회원 리스트
	 * @return
	 */
	public List<Member> printMemberList() {
		return sqlSession.selectList("memberMapper.memberList");
	}

	
	/** 게시글 리스트
	 * @return
	 */
	public List<Post> printPostList() {
		return sqlSession.selectList("postMapper.postList");
	}


	/** 모임 리스트
	 * @return
	 */
	public List<Group> printGroupList() {
		return sqlSession.selectList("groupMapper.groupList");
	}

}
