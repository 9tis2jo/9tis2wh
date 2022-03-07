package com.springbook.biz.product;

import java.util.List;

public interface ProductService {

		//글 등록 기능
		void insertProduct(ProductVO vo);
		
		//글 수정
		void updateProduct(ProductVO vo);
		
		//글 삭제
		void deleteProduct(ProductVO vo);
		
		//글 상세 조회
		ProductVO getProduct(ProductVO vo);
		
		//글 목록 조회
		List<ProductVO> getProductList(ProductVO vo);
	

}
