package com.springbook.biz.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.board.BoardVO;

@Repository
public class BoardDAOMybatis /* extends SqlSessionDaoSupport */{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
//	@Autowired
//	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
//		super.setSqlSessionFactory(sqlSessionFactory);
//	}
	
	public void insertBoard(BoardVO vo) {
		System.out.println("====> Mybatis로 insertBoard 실행");
//		getSqlSession().insert("BoardDAO.insertBoard", vo);
		mybatis.insert("BoardDAO.insertBoard", vo);
	}
	
	public List<BoardVO> getBoardList(BoardVO vo){
		System.out.println("====> Mybatis로 getBoardList 실행");
//		return getSqlSession().selectList("BoardDAO.getBoardList", vo);
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}
	
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("====> Mybatis로 getBoard 실행");
//		return getSqlSession().selectOne("BoardDAO.getBoard", vo);
		return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}
	
	public void updateBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 updateBoard() 기능 처리");
//		getSqlSession().update("BoardDAO.updateBoard",vo);
		mybatis.update("BoardDAO.updateBoard",vo);
		
	}
	
	public void deleteBoard(BoardVO vo) {
		System.out.println("===> Mybatis로 deleteBoard() 기능 처리");
//		getSqlSession().delete("BoardDAO.deleteBoard",vo);
		mybatis.delete("BoardDAO.deleteBoard",vo);
		
	}
}
