package com.springbook.view.product;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.springbook.biz.product.ProductService;
import com.springbook.biz.product.ProductVO;

@Controller
@SessionAttributes("product")
public class ProductController {
	
	@Autowired
	private ProductService productService;	//DAO객체를 직접 사용하지 않고 인터페이스를 거쳐 사용하기 위해사용
	
	//검색 조건 목록 항목 설정
	@ModelAttribute("conditionMap")
	public Map<String,String> searchConditionMap(){
		Map<String,String> conditionMap = new HashMap<String,String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		
		return conditionMap;
	}
	
	@RequestMapping(value="/dataTransform.do")
	@ResponseBody
	public List<ProductVO> dataTransform(ProductVO vo){
		vo.setSearchCondition("TITLE");
		vo.setSearchKeyword("");
		List<ProductVO> boardList = productService.getProductList(vo);
		return boardList;
	}
	
	@RequestMapping(value="/insertBoard.do")
	public String insertProduct(ProductVO vo/* ,BoardDAO boardDAO *//* HttpServletRequest request */) throws IllegalStateException, IOException {
		System.out.println("글 등록 처리");
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File("C://springworkspace//upload//" + fileName));
		}
//		boardDAO.insertBoard(vo);
		productService.insertProduct(vo);
		
		return "redirect:getProductList.do";
	}
	
	@RequestMapping("/updateProduct.do")
	public String updateBoard(@ModelAttribute("product") ProductVO vo/* ,BoardDAO boardDAO */) {
		System.out.println("번호: " + vo.getSeq());
		System.out.println("제목: " + vo.getTitle());
		System.out.println("작성자: " + vo.getWriter());
		System.out.println("내용: " + vo.getContent());
		System.out.println("등록일: " + vo.getRegDate());
		System.out.println("조회수: " + vo.getCnt());
//		boardDAO.updateBoard(vo);
		productService.updateProduct(vo);

		return "redirect:getProductList.do";
	}
	
	@RequestMapping("/deleteProduct.do")
	public String deleteProduct(ProductVO vo/* ,BoardDAO boardDAO */) {
		System.out.println("글 삭제 처리");
//		boardDAO.deleteBoard(vo);
		productService.deleteProduct(vo);
	
		return "redirect:getProductList.do";
	}
	
	@RequestMapping("/getProduct.do")
	public String getProduct(ProductVO vo/* , BoardDAO boardDAO */, Model model /* ,ModelAndView mav */) {
		System.out.println("글 목록 검색 처리");

//		mav.addObject("board",boardDAO.getBoard(vo));
//		mav.setViewName("getBoard.jsp");
		//ModelAndView대신 Model 객체로 바꿔서 해도 작동이 된다 대신 ModelAndVIew 객체는 view와데이터를 같이 담아서 넘겨줘야 하지만 Model은 데이터만 담아줘도 된다
//		model.addAttribute("board",boardDAO.getBoard(vo));
		model.addAttribute("product",productService.getProduct(vo));
		
		return "getProduct.jsp";
	}
	
	@RequestMapping("/getProductList.do")
	public String getProductList(ProductVO vo/* , BoardDAO boardDAO */, Model model/* ,ModelAndView mav */) {
		System.out.println("글 목록 검색 처리");

//		mav.addObject("boardList",boardDAO.getBoardList(vo));
//		mav.setViewName("getBoardList.jsp");
//		model.addAttribute("boardList",boardDAO.getBoardList(vo));
		if(vo.getSearchCondition() == null) vo.setSearchCondition("TITLE");
		if(vo.getSearchKeyword() == null) vo.setSearchKeyword("");
		model.addAttribute("productList",productService.getProductList(vo));
		
		return "getProductList.jsp";
	}
	
//	@RequestMapping("/getBoardList.do")
//	public ModelAndView getBoardList(
//			@RequestParam(value="searchCondition", defaultValue="TITLE", required=false) String condition,
//			@RequestParam(value="searchKeyword", defaultValue="", required=false) String keyword,
//			BoardVO vo, BoardDAO boardDAO,ModelAndView mav) {
//		System.out.println("검색 조건" + condition);
//		System.out.println("검색 단어" + keyword);
//		
//		mav.addObject("boardList",boardDAO.getBoardList(vo));
//		mav.setViewName("getBoardList.jsp");
//		
//		return mav;
//	}
}
