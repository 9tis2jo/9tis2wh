package com.springbook.view.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.springbook.biz.product.ProductVO;
import com.springbook.biz.product.impl.ProductDAO;
import com.springbook.view.controller.Controller;

public class GetProductListController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("글 목록 검색 처리");
		
		ProductVO vo = new ProductVO();
		ProductDAO productDAO = new ProductDAO();
		List<ProductVO> productList = productDAO.getProductList(vo);
		
		HttpSession session = request.getSession();
		session.setAttribute("productList", productList);
		
		return "product_management";
	}
	
}
