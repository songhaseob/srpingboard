package kr.or.ddit.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.dao.BoardUserDao;
import kr.or.ddit.dao.BoardUserDaoI;
import kr.or.ddit.vo.BoardPageVo;
import kr.or.ddit.vo.BoardUserVo;

@Service("boarduserService")
public class BoardUserService implements BoardUserServiceI{
	
	@Resource(name="boarduserDao")
	private BoardUserDao userDao;
	
	@Override
	public List<BoardUserVo> selectAllUser() {
		return userDao.selectAllUser();
	}

	@Override
	public BoardUserVo selectUser(String userid) {
		return userDao.selectUser(userid);
	}

	@Override
	public Map<String, Object> selectPagingUser(BoardPageVo vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<BoardUserVo> userList = userDao.selectPagingUser(vo);
		int userCnt = userDao.selectAlluserCnt();
		
		map.put("userList", userList);
		map.put("userCnt", userCnt);
		
		return map;
	}

	

	
	
}