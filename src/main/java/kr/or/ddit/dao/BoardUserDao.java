package kr.or.ddit.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.vo.BoardPageVo;
import kr.or.ddit.vo.BoardUserVo;

@Repository("boarduserDao")
public class BoardUserDao implements BoardUserDaoI{

	
	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate template;
	
	
	@Override
	public List<BoardUserVo> selectAllUser() {
		
		return template.selectList("users.selectAllUser");
	}

	@Override
	public BoardUserVo selectUser(String userid) {
		
		return template.selectOne("users.selectUser",userid);
	}

	@Override
	public List<BoardUserVo> selectPagingUser(BoardPageVo vo) {
		
		return template.selectList("users.selectPagingUser", vo);
	}

	@Override
	public int selectAlluserCnt() {
		
		return template.selectOne("users.selectAlluserCnt");
	}



	@Override
	public int selectUser() {
		
		return template.selectOne("users.selectUser");
	}
	
}
