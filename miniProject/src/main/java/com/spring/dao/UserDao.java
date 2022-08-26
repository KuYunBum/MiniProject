package com.spring.dao;

import java.util.ArrayList;
import com.spring.dto.UserDto;

public interface UserDao {
	
	public void insert(UserDto dto) throws Exception;
	public void update(UserDto dto) throws Exception;
	public void pwUpdate(UserDto dto) throws Exception;
	public void delete(String userID) throws Exception;
	public ArrayList<UserDto> selectAll() throws Exception;
	public UserDto selectName(String userID) throws Exception;
	public int checkId(String userID) throws Exception;
	public UserDto findUser(UserDto dto) throws Exception;
}
