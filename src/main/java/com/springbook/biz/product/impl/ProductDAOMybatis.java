package com.springbook.biz.product.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.product.ProductVO;

@Repository
public class ProductDAOMybatis{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	

	public void insertProduct(ProductVO vo) {
		System.out.println("====> Mybatis로 insertProduct 실행");
		mybatis.insert("ProductDAO.insertProduct", vo);
	}
	
	public List<ProductVO> getProductList(ProductVO vo){
		System.out.println("====> Mybatis로 getProductList 실행");
		return mybatis.selectList("ProductDAO.getProductList", vo);
	}
	
	public ProductVO getProduct(ProductVO vo) {
		System.out.println("====> Mybatis로 getProduct 실행");
		return (ProductVO) mybatis.selectOne("ProductDAO.getProduct", vo);
	}
	
	public void updateProduct(ProductVO vo) {
		System.out.println("===> Mybatis로 updateProduct() 기능 처리");
		mybatis.update("ProductDAO.updateProduct",vo);
		
	}
	
	public void deleteProduct(ProductVO vo) {
		System.out.println("===> Mybatis로 deleteProduct() 기능 처리");
		mybatis.delete("ProductDAO.deleteProduct",vo);
		
	}
}
