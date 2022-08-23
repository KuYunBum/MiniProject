package com.spring.dao;

import java.util.ArrayList;
import com.spring.dto.AuthoritiesDto;

public interface AuthoritiesDao {

	public void insert(AuthoritiesDto dto) throws Exception;
	public void update(AuthoritiesDto dto) throws Exception;
	public void delete(String userID) throws Exception;
	public ArrayList<AuthoritiesDto> selectAll() throws Exception;
	public AuthoritiesDto selectName(String userID) throws Exception;
}
