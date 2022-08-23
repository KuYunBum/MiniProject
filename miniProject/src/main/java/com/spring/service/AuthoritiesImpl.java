package com.spring.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.AuthoritiesDao;
import com.spring.dto.AuthoritiesDto;

@Service
public class AuthoritiesImpl implements AuthoritiesService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(AuthoritiesDto dto) throws Exception {
		AuthoritiesDao dao = sqlSession.getMapper(AuthoritiesDao.class);
		dao.insert(dto);
	}

	@Override
	public void update(AuthoritiesDto dto) throws Exception {
		AuthoritiesDao dao = sqlSession.getMapper(AuthoritiesDao.class);
		dao.update(dto);
	}

	@Override
	public void delete(String userID) throws Exception {
		AuthoritiesDao dao = sqlSession.getMapper(AuthoritiesDao.class);
		dao.delete(userID);
	}

	@Override
	public ArrayList<AuthoritiesDto> selectAll() throws Exception {
		AuthoritiesDao dao = sqlSession.getMapper(AuthoritiesDao.class);
		return dao.selectAll();
	}

	@Override
	public AuthoritiesDto selectName(String userID) throws Exception {
		AuthoritiesDao dao = sqlSession.getMapper(AuthoritiesDao.class);
		return dao.selectName(userID);
	}

}
