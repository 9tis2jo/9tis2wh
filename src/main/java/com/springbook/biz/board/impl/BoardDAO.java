package com.springbook.biz.board.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.common.JDBCUtil;

@Repository
public class BoardDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private final String BOARD_INSERT = "insert into board(bNUM, bTITLE, bCON, bID)"
			+ "values((select nvl(max(bNUM),0)+1 from board),?,?,?)";
	private String BOARD_LIST = "select * from board order by bNUM desc";
	private final String BOARD_UPDATE = "update board set bTITLE = ?, bCON = ? where bNUM = ?";
	private final String BOARD_DELETE = "delete from board where bNUM = ?";
	private final String BOARD_GET = "select * from board where bNUM = ?";
	private final String BOARD_CNT = "update board set bCNT = bCNT +1 where bNUM = ?";
	
	//글등록
		public void insertBoard(BoardVO vo) {
			System.out.println("===> JDBC로 insertBoard() 기능 처리");
			
			try {
				conn = JDBCUtil.getConnection();
				pstmt = conn.prepareStatement(BOARD_INSERT);
				pstmt.setString(1,vo.getBTITLE());
				pstmt.setString(2,vo.getBCON());
				pstmt.setString(3,vo.getBID());
				pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				JDBCUtil.close(pstmt,conn);
			}
		}
	
	public List<BoardVO> getBoardList(BoardVO vo){
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		List<BoardVO> boardList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(BOARD_LIST);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setBNUM(rs.getInt("bNUM"));
				board.setBTITLE(rs.getString("bTITLE"));
				board.setBCON(rs.getString("bCON"));
				board.setBID(rs.getString("bID"));
				board.setBPW(rs.getInt("bPW"));
				board.setBCT(rs.getString("bCT"));
				board.setBCNT(rs.getInt("bCNT"));
				board.setBDATE(rs.getDate("bDATE"));
				boardList.add(board);

			}
			
			}catch(Exception e) {
				
			}finally {
				JDBCUtil.close(rs, pstmt, conn);
			}
		
		return boardList;
	}
	
	public void updateBoard(BoardVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(BOARD_UPDATE);
			pstmt.setString(1, vo.getBTITLE());
			pstmt.setString(2, vo.getBCON());
			pstmt.setInt(3, vo.getBNUM());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt,conn);
		}
	}
	
	public void deleteBoard(BoardVO vo) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(BOARD_DELETE);
			pstmt.setInt(1, vo.getBNUM());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt,conn);
		}
	}
	
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		BoardVO board = null;
		try {
			conn = JDBCUtil.getConnection();
			
			pstmt = conn.prepareStatement(BOARD_CNT);
			pstmt.setInt(1, vo.getBNUM());
			pstmt.executeUpdate();
			
			pstmt = conn.prepareStatement(BOARD_GET);
			pstmt.setInt(1, vo.getBNUM());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board = new BoardVO();
				board.setBNUM(rs.getInt("bNUM"));
				board.setBTITLE(rs.getString("bTITLE"));
				board.setBCON(rs.getString("bCON"));
				board.setBID(rs.getString("bID"));
				board.setBPW(rs.getInt("bPW"));
				board.setBCT(rs.getString("bCT"));
				board.setBCNT(rs.getInt("bCNT"));
				board.setBDATE(rs.getDate("bDATE"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt,conn);
		}
		return board;
	}
	
}
