package kr.or.ddit.dao;

import java.util.List;

import kr.or.ddit.vo.BoardInfoVo;

public interface BoardInfoDaoI {
	List<BoardInfoVo> selectinfo();
	
	int insertinfo(BoardInfoVo vo);
	
	int updateinfo(BoardInfoVo vo);
}
