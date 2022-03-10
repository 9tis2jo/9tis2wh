package com.springbook.view.user;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;
import com.springbook.view.controller.Controller;

public class UpdateInfoController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("글 수정 처리");
		
		String mID = request.getParameter("mID");
		String mNAME = request.getParameter("mNAME");
		Date mBIR = request.getParameter("mBIR");
		String mPHONE = request.getParameter("mPHONE");
		String mEMAIL = request.getParameter("mEMAIL");
		String mPOST = request.getParameter("mPOST");
		String mADDR = request.getParameter("mADDR");
		
		UserVO vo = new UserVO();
		vo.setMID(mID);
		vo.setMNAME(mNAME);
		vo.setMBIR(mBIR);
		vo.setMPHONE(mPHONE);
		vo.setMEMAIL(mEMAIL);
		vo.setMPOST(mPOST);
		vo.setMADDR(mADDR);
		
		UserDAO userDAO = new UserDAO();
		userDAO.updateInfo(vo);
		
		return "myinfo.do";
	}

}
