package kr.or.ddit.service;

import java.util.List;

import kr.or.ddit.vo.BoardInfoVo;
import kr.or.ddit.vo.BoardPostVo;

public interface BoardInfoServiceI {
	List<BoardInfoVo> selectinfo();
	
	int insertinfo(BoardInfoVo vo);
	
	int updateinfo(BoardInfoVo vo);
	
	
}
