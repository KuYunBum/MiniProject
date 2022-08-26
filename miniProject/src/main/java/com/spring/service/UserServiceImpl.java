package com.spring.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.UserDao;
import com.spring.dto.UserDto;
//실제 구현부
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insert(UserDto dto) throws Exception {
		UserDao dao=sqlSession.getMapper(UserDao.class);
		dao.insert(dto);
	}

	@Override
	public void update(UserDto dto) throws Exception {
		UserDao dao=sqlSession.getMapper(UserDao.class);
		dao.update(dto);
	}
	
	@Override
	public void pwUpdate(UserDto dto) throws Exception {
		UserDao dao=sqlSession.getMapper(UserDao.class);
		dao.pwUpdate(dto);
	}

	@Override
	public void delete(String userID) throws Exception {
		UserDao dao=sqlSession.getMapper(UserDao.class);
		dao.delete(userID);
	}

	@Override
	public ArrayList<UserDto> selectAll() throws Exception {
		UserDao dao=sqlSession.getMapper(UserDao.class);
		return dao.selectAll();
	}

	@Override
	public UserDto selectName(String userID) throws Exception {
		UserDao dao=sqlSession.getMapper(UserDao.class);
		return dao.selectName(userID);
	}

	@Override
	public int checkId(String userID) throws Exception {
		UserDao dao=sqlSession.getMapper(UserDao.class);
		return dao.checkId(userID);
	}

	@Override
	public UserDto findUser(UserDto dto) throws Exception {
		UserDao dao=sqlSession.getMapper(UserDao.class);
		return dao.findUser(dto);
	}
	



}
