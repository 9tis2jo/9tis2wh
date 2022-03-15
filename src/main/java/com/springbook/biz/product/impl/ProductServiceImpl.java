package com.springbook.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.product.ProductService;
import com.springbook.biz.product.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {


		@Autowired
		private ProductDAOMybatis productDAO;

//		@Transactional
		@Override
		public void insertProduct(ProductVO vo) {
			productDAO.insertProduct(vo);
		}

		@Override
		public void updateProduct(ProductVO vo) {
			productDAO.updateProduct(vo);
		}

		@Override
		public void deleteProduct(ProductVO vo) {
			productDAO.deleteProduct(vo);
		}

		@Override
		public ProductVO getProduct(ProductVO vo) {
			return productDAO.getProduct(vo);
		}

		@Override
		public List<ProductVO> getProductList(ProductVO vo) {
			return productDAO.getProductList(vo);
		}

	

}
