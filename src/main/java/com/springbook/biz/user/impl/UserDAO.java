package com.springbook.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.user.UserVO;

@Repository
public class UserDAO {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String USER_GET = "select * from Member where mID=? and mPW=?";
	private final String USER_UPDATE = "update user set mID = ?, mNAME = ? , mBIR = ? , "
			+ "mPHONE = ? , mEMAIL = ? , mPOST = ? , mADDR = ?";
	private final String USER_PW_UPDATE = "update user set mID = ?, mPW = ?";
	private final String USER_LIST = "select * from Member order by = mID";
	
	
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
				user.setMBIR(rs.getString("mBIR"));
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

	public void updateUserInfo(UserVO vo) {
		System.out.println("====> JDBC로 updatePRODUCT() 기능 처리");
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_UPDATE);
			
			stmt.setString(1, vo.getMID());
			stmt.setString(2, vo.getMPW());
			stmt.setString(3, vo.getMNAME());
			stmt.setString(4, vo.getMBIR());
			stmt.setString(5, vo.getMPHONE());
			stmt.setString(6, vo.getMEMAIL());
			stmt.setString(7, vo.getMPOST());
			stmt.setString(8, vo.getMADDR());
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(stmt, conn);
		}
	}

	public void updateUserPW(UserVO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_PW_UPDATE);
			
			stmt.setString(1, vo.getMPW());
			stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(stmt, conn);
		}
	}

	public void deleteUser(UserVO vo) {
		
	}
	
	public void insertUser(UserVO vo) {
		
	}
	
	
	
	
	public List<UserVO> getUserList(UserVO vo) {
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		List<UserVO> userList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_LIST);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				UserVO user = new UserVO();
				user.setMID(rs.getString("mID"));
				user.setMPW(rs.getString("mPW"));
				user.setMNAME(rs.getString("mNAME"));
				user.setMBIR(rs.getString("mBIR"));
				user.setMPHONE(rs.getString("mPHONE"));
				user.setMEMAIL(rs.getString("mEMAIL"));
				user.setMPOST(rs.getString("mPOST"));
				user.setMADDR(rs.getString("mADDR"));
				user.setMDROP(rs.getInt("mDROP"));
				userList.add(user);

			}
			
			}catch(Exception e) {
				
			}finally {
				JDBCUtil.close(rs, stmt, conn);
			}
		
		return null /* UserList */; /*★☆★☆★☆ 이름 뭐로 할까요?? ★☆★☆★☆*/
	}



}

