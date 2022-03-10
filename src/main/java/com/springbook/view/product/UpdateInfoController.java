package com.springbook.view.product;



import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;

//@Controller
public class UpdateInfoController {
	@RequestMapping("/updateInfo.jsp")
	public String updateBoard(UserVO vo, UserDAO userDAO) {
//		userDAO.updateInfo(vo);
//		return "myinfo.do";
//	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("글 수정 처리");
		
		String mID = request.getParameter("mID");
		String mPW= request.getParameter("mPW");
		String mNAME = request.getParameter("mNAME");
		Date mBIR = request.getParameter(Date.parse(s)("mBIR"));
		String mPHONE = request.getParameter("mPHONE");
		String mEMAIL = request.getParameter("mEMAIL");
		String mPOST = request.getParameter("mPOST");
		String mADDR = request.getParameter("mADDR");
		
		UserVO vo = new UserVO();
		vo.setMID(mID);
		vo.setMPW(mPW);
		vo.setMNAME(mNAME);
		vo.setMBIR(mBIR);
		vo.setMPHONE(mPHONE);
		vo.setMEMAIL(mEMAIL);
		vo.setMPOST(mPOST);
		vo.setMADDR(mADDR);
		
		UserDAO userDAO = new UserDAO();
		userDAO.updateInfo(vo);
		
		//return "getBoardList.do";
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:myinfo.jsp");
		return mav;
	}

}
