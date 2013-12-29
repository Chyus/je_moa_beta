package com.je.me5.daoImpl;

import java.util.List;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.je.me5.dao.BoardDao;
import com.je.me5.dto.BoardDto;

public class BoarddaoImpl implements BoardDao{

	private SqlMapClientTemplate mysqlmap;
	
	public void setSqlmap(SqlMapClientTemplate mysqlmap) {	this.mysqlmap = mysqlmap;	}

	@Override
	public List getList() { 
		  return mysqlmap.queryForList("myquery.inquire");
	}
	
	
	@Override
	public List getdetailList(BoardDto boarddto) { 
		  return mysqlmap.queryForList("myquery.detail",boarddto);
	}
	
	@Override
	public void writeList(BoardDto boarddto){
		  mysqlmap.insert("myquery.insert", boarddto);
	}
	
	@Override
	public void deleteList(BoardDto boarddto){
		  mysqlmap.insert("myquery.delete", boarddto);
	}
	
	@Override
	public void updateList(BoardDto boarddto){
		  mysqlmap.update("myquery.update", boarddto);
	}


}
