package kr.or.ddit.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.vo.BoardInfoVo;

@Repository("boardinfoDao")
public class BoardInfoDao implements BoardInfoDaoI{
	
	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate template;
	
	@Override
	public List<BoardInfoVo> selectinfo() {
		
		return template.selectList("info.selectinfo");
	}

	
	@Override
	public int insertinfo(BoardInfoVo vo) {
		
		return template.insert("info.insertinfo",vo);
		
	}


	@Override
	public int updateinfo(BoardInfoVo vo) {
		
		return template.update("info.updateinfo",vo);
	}
	
}
