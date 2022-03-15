package com.springbook.biz.notice.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.notice.NoticeVO;

@Repository
public class NoticeDAOMybatis{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
//	@Autowired
//	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
//		super.setSqlSessionFactory(sqlSessionFactory);
//	}
	
	public void insertNotice(NoticeVO vo) {
		System.out.println("====> Mybatis로 insertNotice 실행");
//		getSqlSession().insert("BoardDAO.insertBoard", vo);
		mybatis.insert("NoticeDAO.insertNotice", vo);
	}
	
	public List<NoticeVO> getNoticeList(NoticeVO vo){
		System.out.println("====> Mybatis로 getNoticeList 실행");
//		return getSqlSession().selectList("BoardDAO.getBoardList", vo);
		return mybatis.selectList("NoticeDAO.getNoticeList", vo);
	}
	
	public NoticeVO getNotice(NoticeVO vo) {
		System.out.println("====> Mybatis로 getNotice 실행");
//		return getSqlSession().selectOne("BoardDAO.getBoard", vo);
		return (NoticeVO) mybatis.selectOne("NoticeDAO.getNotice", vo);
	}
	
	public void updateNotice(NoticeVO vo) {
		System.out.println("===> Mybatis로 updateNotice() 기능 처리");
//		getSqlSession().update("BoardDAO.updateBoard",vo);
		mybatis.update("NoticeDAO.updateNotice",vo);
		
	}
	
	public void deleteNotice(NoticeVO vo) {
		System.out.println("===> Mybatis로 deleteNotice() 기능 처리");
//		getSqlSession().delete("BoardDAO.deleteBoard",vo);
		mybatis.delete("NoticeDAO.deleteNotice",vo);
		
	}
}
