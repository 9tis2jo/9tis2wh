package com.springbook.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import com.springbook.view.controller.Controller;

public class UpdateBoardController implements Controller {
	
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("글 수정 처리");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String num = request.getParameter("bNUM");
		
		BoardVO vo = new BoardVO();
		vo.setBTITLE(title);
		vo.setBCON(content);
		vo.setBNUM(Integer.parseInt(num));
		
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.updateBoard(vo);
		
		return "getBoardList.do";
	}

}
