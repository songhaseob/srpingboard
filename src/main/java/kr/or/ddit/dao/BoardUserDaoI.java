package kr.or.ddit.dao;

import java.util.List;

import kr.or.ddit.vo.BoardPageVo;
import kr.or.ddit.vo.BoardUserVo;

public interface BoardUserDaoI {
	
	//전체 사용자 정보 조회
	List<BoardUserVo> selectAllUser();
	
	//userid에 해당하는 사용자 한명의 정보 조회
	BoardUserVo selectUser(String userid);
	
	// 사용자 페이징 조회
	List<BoardUserVo> selectPagingUser(BoardPageVo vo);
	
	// 사용자 전체 수 조회
	int selectAlluserCnt();
	// 사용자
	int selectUser();
	
	
}
