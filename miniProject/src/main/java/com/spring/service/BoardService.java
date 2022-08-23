package com.spring.service;

import java.util.List;

import com.spring.dto.BoardDto;

public interface BoardService {
	
	public List<BoardDto> list() throws Exception;
	public void insert(BoardDto dto) throws Exception;
	public BoardDto detail(int bno) throws Exception;
	public void update(BoardDto dto) throws Exception;
	public void delete(int bno) throws Exception;
	public void viewCnt(int bno) throws Exception;

}
