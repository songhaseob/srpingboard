package kr.or.ddit.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.BoardPageVo;
import kr.or.ddit.vo.BoardPostVo;

public interface BoardPostServiceI {
	List<BoardPostVo> selectpost();
	
	Map<String, Object> selectPagingpost(BoardPageVo vo);
	
	int boardpostinsert(BoardPostVo vo);
	
	BoardPostVo selectpostno(BoardPostVo vo);
	
	int updatepost(BoardPostVo vo);
	
	int deletepost(BoardPostVo vo);
}
