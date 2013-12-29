package com.je.me5.dao;

import java.util.List;

import com.je.me5.dto.BoardDto;

public interface BoardDao {

	public List getList();
	
	public List getdetailList(BoardDto boardDto);
	
	public void writeList( BoardDto boardDto);
	
	public void deleteList( BoardDto boardDto);
	
	public void updateList(BoardDto boardDto);
	
}
