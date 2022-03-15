package com.springbook.biz.user.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.user.UserVO;

@Repository
public class UserDAOMybatis{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
//	@Autowired
//	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
//		super.setSqlSessionFactory(sqlSessionFactory);
//	}
	
	public void insertUser(UserVO vo) {
		System.out.println("====> Mybatis로 insertUser 실행");
//		getSqlSession().insert("BoardDAO.insertBoard", vo);
		mybatis.insert("UserDAO.insertBoard", vo);
	}
	
	public List<UserVO> getUserList(UserVO vo){
		System.out.println("====> Mybatis로 getUserList 실행");
//		return getSqlSession().selectList("BoardDAO.getBoardList", vo);
		return mybatis.selectList("UserDAO.getUserList", vo);
	}
	
	public UserVO getUser(UserVO vo) {
		System.out.println("====> Mybatis로 getBoard 실행");
//		return getSqlSession().selectOne("BoardDAO.getBoard", vo);
		return (UserVO) mybatis.selectOne("UserDAO.getUser", vo);
	}
	
	public void updateUserInfo(UserVO vo) {
		System.out.println("===> Mybatis로 updateUserInfo() 기능 처리");
//		getSqlSession().update("BoardDAO.updateBoard",vo);
		mybatis.update("UserDAO.updateUserInfo",vo);
		
	}
	
	public void updateUserPW(UserVO vo) {
		System.out.println("===> Mybatis로 updateUserPW() 기능 처리");
//		getSqlSession().update("BoardDAO.updateBoard",vo);
		mybatis.update("UserDAO.updateUserPW",vo);
		
	}
	
	public void deleteUser(UserVO vo) {
		System.out.println("===> Mybatis로 deleteUser() 기능 처리");
//		getSqlSession().delete("BoardDAO.deleteBoard",vo);
		mybatis.delete("UserDAO.deleteUser",vo);
		
	}
}
