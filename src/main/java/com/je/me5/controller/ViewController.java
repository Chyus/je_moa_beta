package com.je.me5.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.je.me5.dao.BoardDao;
import com.je.me5.dto.BoardDto;


@Controller

//@RequestMapping("/board")

public class ViewController {

	@Autowired
	private BoardDao boardDao;

	
	
	
	@RequestMapping("/v.do")
	public ModelAndView viewList(){
		
    List<BoardDto> articleList = boardDao.getList();

	ModelAndView mav = new ModelAndView();
	mav.addObject("articleList", articleList);
	mav.setViewName("/WEB-INF/views/boardView.jsp");
	
	return mav;
	
	}
	
 	
	 
	@RequestMapping("/write.do")
	public ModelAndView writeList(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/views/boardWrite.jsp"); 
		
		return mav;
	}
	 
	
	@RequestMapping("/insert.do")
	public ModelAndView insertList(HttpServletRequest request, HttpServletResponse response, HttpSession session )
	       throws Exception{
		
		
		BoardDto boardDto = new BoardDto();
		
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String regdate = request.getParameter("regdate");
		String regip = request.getRemoteAddr(); 
		
		
		boardDto.setTitle(title);
		boardDto.setWriter(writer);
		boardDto.setContent(content);
		boardDto.setRegdate(regdate);
		boardDto.setRegip(regip); 
		
		boardDao.writeList(boardDto);
		
		ModelAndView view = viewList(); 
		
		return view;
	}


	@RequestMapping("/delete.do")
	
	public ModelAndView deletedList(HttpServletRequest request, HttpServletResponse response, HttpSession session )
		       throws Exception{ 
		
		
		String idx = request.getParameter("idx"); 
		
		BoardDto boardDto = new BoardDto();
		
		boardDto.setIdx(Integer.valueOf(idx));  
		
		boardDao.deleteList(boardDto);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/WEB-INF/views/boardRedirect.jsp");
		
		return mav;
	}
	
	
	@RequestMapping("/redirect.do")
	public ModelAndView redirectList(){
		
    //List<MyitemDto> myitemlist = myitemDao.getList();

		
		ModelAndView mav = new ModelAndView();
		//mav.addObject("myitemlist", myitemlist);
		//mav.setViewName("/board/list");
		mav.setViewName("/WEB-INF/views/boardRedirect.jsp");
		
		return mav;
	}
	
	

	
	
	@RequestMapping("/detail.do")
	public ModelAndView detailList(HttpServletRequest request, HttpServletResponse response, HttpSession session )
		       throws Exception{ 
		
        String idx = request.getParameter("idx");  
        String regip_save = request.getParameter("regip");
        String regip_now  = request.getRemoteAddr();
        
        System.out.println( "save = " + regip_save);
        System.out.println("now = " + regip_now);
         
         
		BoardDto boardDto = new BoardDto();
		
		boardDto.setIdx(Integer.valueOf(idx));  
		
		if( !regip_save.equals(regip_now) )
	      {
			System.out.println("update!!");
	        boardDao.updateList(boardDto);
	      }
		
		List<BoardDto> detailList = boardDao.getdetailList(boardDto);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("detailList", detailList);
		
		mav.setViewName("/WEB-INF/views/boardDetail.jsp");
		
		return mav;
	}
	
	
	  
}
