package kr.or.ddit.dao;

import java.util.List;

import kr.or.ddit.vo.BoardPageVo;
import kr.or.ddit.vo.BoardPostVo;

public interface BoardPostDaoI {
	List<BoardPostVo> selectpost();
	
	int selectAllpostCnt(BoardPageVo vo);
	
	List<BoardPostVo> selectPagingpost(BoardPageVo vo);
	
	int boardpostinsert(BoardPostVo vo);
	
	BoardPostVo selectpostno(BoardPostVo vo);
	
	int updatepost(BoardPostVo vo);
	
	int deletepost(BoardPostVo vo);
}
