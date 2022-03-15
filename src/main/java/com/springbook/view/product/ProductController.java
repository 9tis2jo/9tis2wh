package com.springbook.view.product;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.product.ProductService;
import com.springbook.biz.product.ProductVO;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;	//DAO객체를 직접 사용하지 않고 인터페이스를 거쳐 사용하기 위해사용
	
	
	@RequestMapping("/insertProduct.do")
	public String insertProduct(ProductVO vo) throws IllegalStateException, IOException {

//		MultipartFile uploadFile = vo.getUploadFile();
//		if(!uploadFile.isEmpty()) {
//			String fileName = uploadFile.getOriginalFilename();
//			uploadFile.transferTo(new File("C://springworkspace//upload//" + fileName));
//		}
//		boardDAO.insertBoard(vo);
		productService.insertProduct(vo);
		
		return "redirect:getProductList.do";
	}
	
//	@RequestMapping("/updateProduct.do")
//	public String updateBoard(@ModelAttribute("product") ProductVO vo/* ,BoardDAO boardDAO */) {
//		System.out.println("번호: " + vo.getSeq());
//		System.out.println("제목: " + vo.getTitle());
//		System.out.println("작성자: " + vo.getWriter());
//		System.out.println("내용: " + vo.getContent());
//		System.out.println("등록일: " + vo.getRegDate());
//		System.out.println("조회수: " + vo.getCnt());
////		boardDAO.updateBoard(vo);
//		productService.updateProduct(vo);
//
//		return "redirect:getProductList.do";
//	}
	
	@RequestMapping("/deleteProduct.do")
	public String deleteProduct(ProductVO vo/* ,BoardDAO boardDAO */) {
		System.out.println("글 삭제 처리");
		productService.deleteProduct(vo);
	
		return "redirect:getProductList.do";
	}
	
	@RequestMapping("/getProduct.do")
	public String getProduct(ProductVO vo) {
		System.out.println("글 목록 검색 처리");
		productService.getProduct(vo);
		
		return "productDetail.jsp";
	}
	
	@RequestMapping("/getProductList.do" )
	public ModelAndView getProductList(ProductVO vo,ModelAndView mav) {
		mav.addObject("productList",productService.getProductList(vo));
		mav.setViewName("product_management.jsp");

		return mav;
	}
}
