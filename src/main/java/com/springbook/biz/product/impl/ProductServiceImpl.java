package com.springbook.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.product.ProductService;
import com.springbook.biz.product.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {


		@Autowired
		private ProductDAO productDAO;
//		private BoardDAO boardDAO;
//		private LogAdvice log;
//		private Log4jAdvice log; 

//		public BoardServiceImpl() {
//			log = new LogAdvice();
//			log = new Log4jAdvice();
//		}

//		@Transactional
		@Override
		public void insertProduct(ProductVO vo) {
//			log.printLog();
//			log.printLogging();
//			if(vo.getSeq()==0) {
//				throw new IllegalArgumentException("0번 글은 등록할 수 없습니다.");
//			}
			productDAO.insertProduct(vo);
		}

		@Override
		public void updateProduct(ProductVO vo) {
//			log.printLog();
//			log.printLogging();
			productDAO.updateProduct(vo);
		}

		@Override
		public void deleteProduct(ProductVO vo) {
//			log.printLog();
//			log.printLogging();
			productDAO.deleteProduct(vo);
		}

		@Override
		public ProductVO getProduct(ProductVO vo) {
//			log.printLog();
//			log.printLogging();
			return productDAO.getProduct(vo);
		}

		@Override
		public List<ProductVO> getProductList(ProductVO vo) {
//			log.printLog();
//			log.printLogging();
			return productDAO.getProductList(vo);
		}

	

}
