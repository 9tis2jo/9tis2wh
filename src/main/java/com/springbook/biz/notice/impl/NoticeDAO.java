package com.springbook.biz.notice.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;


import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.notice.NoticeVO;

@Repository
public class NoticeDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private final String NOTICE_INSERT = "insert into board(bNUM, bTITLE, bCON, bID)"
			+ "values((select nvl(max(bNUM),0)+1 from board),?,?,?)";
	private String NOTICE_LIST = "select * from board order by bNUM desc";
	private final String NOTICE_UPDATE = "update board set bTITLE = ?, bCON = ? where bNUM = ?";
	private final String NOTICE_DELETE = "delete from board where bNUM = ?";
	private final String NOTICE_GET = "select * from board where bNUM = ?";
	private final String NOTICE_CNT = "update board set bCNT = bCNT +1 where bNUM = ?";
	
	//글등록
		public void insertNotice(NoticeVO vo) {
			System.out.println("===> JDBC로 insertBoard() 기능 처리");
			
			try {
				conn = JDBCUtil.getConnection();
				pstmt = conn.prepareStatement(NOTICE_INSERT);
				pstmt.setString(1,vo.getNTITLE());
				pstmt.setString(2,vo.getNCON());
				pstmt.setString(3,vo.getNID());
				pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				JDBCUtil.close(pstmt,conn);
			}
		}
	
	public List<NoticeVO> getNoticeList(NoticeVO vo){
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		List<NoticeVO> noticeList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(NOTICE_LIST);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				NoticeVO notice = new NoticeVO();
				notice.setNNUM(rs.getInt("nNUM"));
				notice.setNTITLE(rs.getString("nTITLE"));
				notice.setNCON(rs.getString("nCON"));
				notice.setNID(rs.getString("nID"));
				notice.setNPW(rs.getInt("nPW"));
				notice.setNCT(rs.getString("nCT"));
				notice.setNCNT(rs.getInt("nCNT"));
				notice.setNDATE(rs.getDate("nDATE"));
				noticeList.add(notice);

			}
			
			}catch(Exception e) {
				
			}finally {
				JDBCUtil.close(rs, pstmt, conn);
			}
		
		return noticeList;
	}
	
	public void updateNotice(NoticeVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(NOTICE_UPDATE);
			pstmt.setString(1, vo.getNTITLE());
			pstmt.setString(2, vo.getNCON());
			pstmt.setInt(3, vo.getNNUM());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt,conn);
		}
	}
	
	public void deleteNotice(NoticeVO vo) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(NOTICE_DELETE);
			pstmt.setInt(1, vo.getNNUM());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt,conn);
		}
	}
	
	public NoticeVO getBoard(NoticeVO vo) {
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		NoticeVO notice = null;
		try {
			conn = JDBCUtil.getConnection();
			
			pstmt = conn.prepareStatement(NOTICE_CNT);
			pstmt.setInt(1, vo.getNNUM());
			pstmt.executeUpdate();
			
			pstmt = conn.prepareStatement(NOTICE_GET);
			pstmt.setInt(1, vo.getNNUM());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				notice = new NoticeVO();
				notice.setNNUM(rs.getInt("nNUM"));
				notice.setNTITLE(rs.getString("nTITLE"));
				notice.setNCON(rs.getString("nCON"));
				notice.setNID(rs.getString("nID"));
				notice.setNPW(rs.getInt("nPW"));
				notice.setNCT(rs.getString("nCT"));
				notice.setNCNT(rs.getInt("nCNT"));
				notice.setNDATE(rs.getDate("nDATE"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt,conn);
		}
		return notice;
	}
	
}
