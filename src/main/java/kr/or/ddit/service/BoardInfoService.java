package kr.or.ddit.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.dao.BoardInfoDao;
import kr.or.ddit.dao.BoardInfoDaoI;
import kr.or.ddit.vo.BoardInfoVo;
import kr.or.ddit.vo.BoardPostVo;

@Service("boardinfoService")
public class BoardInfoService implements BoardInfoServiceI{

	@Resource(name="boardinfoDao")
	private BoardInfoDao infoDao;
	
	@Override
	public List<BoardInfoVo> selectinfo() {
		return infoDao.selectinfo();
	}

	@Override
	public int insertinfo(BoardInfoVo vo) {
		return infoDao.insertinfo(vo);
	}

	@Override
	public int updateinfo(BoardInfoVo vo) {
		
		return infoDao.updateinfo(vo);
	}

	
	

}
