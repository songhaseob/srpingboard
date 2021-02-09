package kr.or.ddit.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.vo.BoardPageVo;
import kr.or.ddit.vo.BoardPostVo;

@Repository("boardpostDao")
public class BoardPostDao implements BoardPostDaoI{
	
	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate template;

	@Override
	public List<BoardPostVo> selectpost() {
		
		return template.selectList("post.selectpost");
	}

	@Override
	public int selectAllpostCnt(BoardPageVo vo) {
		
		return template.selectOne("post.selectAllpostCnt",vo);
	}

	@Override
	public List<BoardPostVo> selectPagingpost(BoardPageVo vo) {
		
		return template.selectList("post.selectPagingpost", vo);
	}

	@Override
	public int boardpostinsert(BoardPostVo vo) {
		
		return template.insert("post.boardpostinsert",vo);
	}

	@Override
	public BoardPostVo selectpostno(BoardPostVo vo) {
		
		return template.selectOne("post.selectpostno",vo);
	}

	@Override
	public int updatepost(BoardPostVo vo) {
		
		return template.update("post.updatepost",vo);
	}

	@Override
	public int deletepost(BoardPostVo vo) {
		
		return template.delete("post.deletepost",vo);
	}
	
	
	
}

