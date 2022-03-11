package com.springbook.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;
import com.springbook.view.controller.Controller;

public class UpdatePwController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("비밀번호 수정 처리");

		String mPW = request.getParameter("mPW");
		

		UserVO vo = new UserVO();
		vo.setMPW(mPW);

		UserDAO userDAO = new UserDAO();
		userDAO.updatePW(vo);

		return "MyInfo";
	}

}
