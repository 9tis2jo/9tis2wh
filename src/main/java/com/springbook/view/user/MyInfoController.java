package com.springbook.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;
import com.springbook.view.controller.Controller;

public class MyInfoController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("글 상세 조회 처리");
		
		String mID = request.getParameter("mID");
		
		UserVO vo = new UserVO();
		vo.setMID(mID);
		
		UserDAO userDAO = new UserDAO();
		UserVO user = userDAO.getUser(vo);
		
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		
		return "MyInfo.do";
	}
}
