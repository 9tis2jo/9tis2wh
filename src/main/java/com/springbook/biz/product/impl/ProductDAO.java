package com.springbook.biz.product.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.product.ProductVO;

@Repository
public class ProductDAO {
	
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String PRODUCT_INSERT = "insert into product(pID,mID,pName,pPrice,pCT,pRDATE,pINFO,pCNT,pIMG,pSTATE,pTRANS,pTAG)"
			+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
	private final String PRODUCT_LIST = "select * from product";
	private final String PRODUCT_UPDATE = "update product set pName = ?, pPrice = ?,"
			+ "pTDATE = ? , pINFO = ? , pIMG = ? , pTAG = ? where pID = ?";
	private final String PRODUCT_DELETE = "delete from PRODUCT where pID = ?";
	private final String PRODUCT_GET = "select * from PRODUCT where pID = ?";
	
	//CRUD
	
	//글 등록
	public void insertProduct(ProductVO vo) {
		System.out.println("====> JDBC로 insertPRODUCT() 기능 처리");
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(PRODUCT_INSERT);
			
			stmt.setInt(1, vo.getPID());
			stmt.setString(2, vo.getMID());
			stmt.setString(3, vo.getPName());
			stmt.setInt(4, vo.getPPrice());
			stmt.setString(5, vo.getPCT());
			stmt.setDate(6, (Date) vo.getPRDATE());
			stmt.setString(7, vo.getPINFO());
			stmt.setInt(8, vo.getPCNT());
			stmt.setString(9, vo.getPIMG());
			stmt.setInt(10, vo.getPSTATE());
			stmt.setInt(11, vo.getPTRANS());
			stmt.setString(12, vo.getPTAG());
			
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	public List<ProductVO> getProductList(ProductVO vo){
		System.out.println("====> JDBC에서 getPRODUCTList() 기능처리");
		List<ProductVO> productList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(PRODUCT_LIST);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				ProductVO product = new ProductVO();
				
				product.setPID(rs.getInt("pID"));
				product.setPName(rs.getString("pName"));
				product.setPPrice(rs.getInt("pPrice"));
				product.setPCT(rs.getString("pCT"));
				product.setPRDATE(rs.getDate("pRDATE"));
				product.setPCNT(rs.getInt("pCNT"));
				product.setPIMG(rs.getString("pIMG"));
				product.setPSTATE(rs.getInt("pSTATE"));
				product.setPTRANS(rs.getInt("pTRANS"));
				product.setPTAG(rs.getString("pTAG"));
				productList.add(product);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(stmt, conn);
		}
		return productList;
	}
	
	public void updateProduct(ProductVO vo) {
		System.out.println("====> JDBC로 updatePRODUCT() 기능 처리");
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(PRODUCT_UPDATE);
			
			stmt.setString(1, vo.getPName());
			stmt.setInt(2, vo.getPPrice());
			stmt.setDate(3, (Date) vo.getPTDATE());
			stmt.setString(4, vo.getPINFO());
			stmt.setString(5, vo.getPIMG());
			stmt.setString(6, vo.getPTAG());
			stmt.setInt(7, vo.getPID());
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	public void deleteProduct(ProductVO vo) {
		System.out.println("====> JDBC로 deletePRODUCT() 기능 처리");
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(PRODUCT_DELETE);
			
			stmt.setInt(1, vo.getPID());
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	public ProductVO getProduct(ProductVO vo) {
		System.out.println("====> JDBC로 getPRODUCT() 기능 처리");
		ProductVO PRODUCT = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(PRODUCT_GET);
			stmt.setInt(1, vo.getPID());
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				PRODUCT = new ProductVO();
				PRODUCT.setPID(rs.getInt("pID"));
				PRODUCT.setPName(rs.getString("PName"));
				PRODUCT.setPPrice(rs.getInt("PPrice"));
				PRODUCT.setPCT(rs.getString("pCT"));
				PRODUCT.setPRDATE(rs.getDate("pRDATE"));
				PRODUCT.setPCNT(rs.getInt("PCNT"));
				PRODUCT.setPIMG(rs.getString("pIMG"));
				PRODUCT.setPSTATE(rs.getInt("PSTATE"));
				PRODUCT.setPTRANS(rs.getInt("PTRANS"));
				PRODUCT.setPTAG(rs.getString("PTAG"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(stmt, conn);
		}
		
		return PRODUCT;
	}
}
