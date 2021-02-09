package kr.or.ddit.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.dao.BoardPostDao;
import kr.or.ddit.dao.BoardPostDaoI;
import kr.or.ddit.vo.BoardPageVo;
import kr.or.ddit.vo.BoardPostVo;

@Service("boardpostService")
public class BoardPostService implements BoardPostServiceI{
	
	@Resource(name="boardpostDao")
	private BoardPostDao postDao;
	
	@Override
	public List<BoardPostVo> selectpost() {
		
		return postDao.selectpost();
	}
	
	

	@Override
	public Map<String, Object> selectPagingpost(BoardPageVo vo) {
		Map<String, Object> map = new HashMap<String,Object>();
		
		List<BoardPostVo> list = postDao.selectPagingpost(vo);
		int BoardCnt = postDao.selectAllpostCnt(vo);
		
		map.put("BoardList", list);
		map.put("BoardCnt", BoardCnt);
		
		return map;
	}

	@Override
	public int boardpostinsert(BoardPostVo vo) {
		
		return postDao.boardpostinsert(vo);
	}



	@Override
	public BoardPostVo selectpostno(BoardPostVo vo) {
		
		return postDao.selectpostno(vo);
	}



	@Override
	public int updatepost(BoardPostVo vo) {
		return postDao.updatepost(vo);
	}



	@Override
	public int deletepost(BoardPostVo vo) {
		
		return postDao.deletepost(vo);
	}

	

}
