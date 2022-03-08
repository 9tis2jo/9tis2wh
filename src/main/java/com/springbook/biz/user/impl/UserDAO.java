package com.springbook.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.user.UserVO;

@Repository
public class UserDAO {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String USER_GET = "select * from users where id=? and password=?";
	
	public UserVO getUser(UserVO vo) {
		
		System.out.println("===> JDBC로 getUser() 기능 처리");
		UserVO user = null;
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_GET);
			
			stmt.setString(1,vo.getMID());
			stmt.setString(2, vo.getMPW());	
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				user = new UserVO();
				user.setMID(rs.getString("mID"));
				user.setMPW(rs.getString("mPW"));
				user.setMNAME(rs.getString("mNAME"));
				user.setMBIR(rs.getDate("mBIR"));
				user.setMPHONE(rs.getString("mPHONE"));
				user.setMEMAIL(rs.getString("mEMAIL"));
				user.setMPOST(rs.getString("mPOST"));
				user.setMADDR(rs.getString("mADDR"));
				user.setMDROP(rs.getInt("mDROP"));
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(stmt,conn);
		}
		
		return user;
	}
}

