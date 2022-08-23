package com.spring.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.BoardDao;
import com.spring.dto.BoardDto;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardDto> list() throws Exception {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		List<BoardDto> dtos = dao.list();
		return dtos;
	}

	@Override
	public void insert(BoardDto dto) throws Exception {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.insert(dto);
	}

	@Override
	public BoardDto detail(int bno) throws Exception {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		return dao.detail(bno);
	}

	@Override
	public void update(BoardDto dto) throws Exception {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.update(dto);
	}

	@Override
	public void delete(int bno) throws Exception {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.delete(bno);
	}

	@Override
	public void viewCnt(int bno) throws Exception {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.viewCnt(bno);
	}

}
