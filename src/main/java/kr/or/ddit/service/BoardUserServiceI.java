package kr.or.ddit.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.BoardPageVo;
import kr.or.ddit.vo.BoardUserVo;

public interface BoardUserServiceI {
	
	//전체 사용자 정보 조회
		List<BoardUserVo> selectAllUser();
		
		//userid에 해당하는 사용자 한명의 정보 조회
		BoardUserVo selectUser(String userid);
		
		// 사용자 페이징 조회
		Map<String, Object> selectPagingUser(BoardPageVo vo);
		
		
		
}
