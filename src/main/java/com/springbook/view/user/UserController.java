package com.springbook.view.user;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;

@Controller
@SessionAttributes("user")
public class UserController {
	
	@Autowired
	private UserService userService;	//DAO객체를 직접 사용하지 않고 인터페이스를 거쳐 사용하기 위해사용
	
	
	@RequestMapping("/insertUser.do")
	public String insertUser(UserVO vo) throws IllegalStateException, IOException {

//		MultipartFile uploadFile = vo.getUploadFile();
//		if(!uploadFile.isEmpty()) {
//			String fileName = uploadFile.getOriginalFilename();
//			uploadFile.transferTo(new File("C://springworkspace//upload//" + fileName));
//		}
//		boardDAO.insertBoard(vo);
		userService.insertUser(vo);
		/* ★☆★☆★☆★☆★☆ 수정 부탁드립니다 ★☆★☆★☆★☆★☆ */
		return "redirect:getProductList.do";
	}
	
	@RequestMapping("/updateUserInfo.do")
	public String updateUserInfo(@ModelAttribute("user") UserVO vo) {
		System.out.println("아이디: " + vo.getMID());
		System.out.println("이름: " + vo.getMNAME());
		System.out.println("생년월일: " + vo.getMBIR());
		System.out.println("전화번호: " + vo.getMPHONE());
		System.out.println("이메일: " + vo.getMEMAIL());
		System.out.println("우편번호: " + vo.getMPOST());
		System.out.println("상세주소: " + vo.getMADDR());
//		userDAO.updateInfo(vo);
		userService.updateUserInfo(vo);

		return "redirect:myInfo.do";
	}
	
	@RequestMapping("/updateUserPW.do")
	public String updateUserPW(@ModelAttribute("user") UserVO vo) {
		System.out.println("비밀번호: " + vo.getMPW());
//		userDAO.updateInfo(vo);
		userService.updateUserPW(vo);

		return "redirect:myInfo.do";
	}

	@RequestMapping("/deleteUser.do")
	public String deleteUser(UserVO vo/* ,BoardDAO boardDAO */) {
		System.out.println("글 삭제 처리");
//		userService.deleteUser(vo);
	
		return "redirect:myInfo.do";
	}
	
//	@RequestMapping("/getProduct.do")
//	public String getProduct(ProductVO vo) {
//		System.out.println("글 목록 검색 처리");
////		productService.getProduct(vo);
//		
//		return "getProduct.jsp";
//	}
	
//	@RequestMapping("/getProductList.do" )
//	public ModelAndView getProductList(ProductVO vo,ModelAndView mav) {
//		mav.addObject("productList",productService.getProductList(vo));
//		mav.setViewName("product_management.jsp");
//
//		return mav;
//	}
	
	




}
