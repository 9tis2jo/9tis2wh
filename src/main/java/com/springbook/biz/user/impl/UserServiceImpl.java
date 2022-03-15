package com.springbook.biz.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {


		@Autowired
		private UserDAOMybatis userDAO; 
//		private UserDAO userDAO;

//		@Transactional
		@Override
		public void insertUser(UserVO vo) {
//			log.printLog();
//			log.printLogging();
//			if(vo.getSeq()==0) {
//				throw new IllegalArgumentException("0번 글은 등록할 수 없습니다.");
//			}
			userDAO.insertUser(vo);
		}

		@Override
		public void updateUserInfo(UserVO vo) {
//			log.printLog();
//			log.printLogging();
			userDAO.updateUserInfo(vo);
		}
		
		@Override
		public void updateUserPW(UserVO vo) {
//			log.printLog();
//			log.printLogging();
			userDAO.updateUserPW(vo);
		}

		@Override
		public void deleteUser(UserVO vo) {
//			log.printLog();
//			log.printLogging();
			userDAO.deleteUser(vo);
		}

		@Override
		public UserVO getUser(UserVO vo) {
//			log.printLog();
//			log.printLogging();
			return userDAO.getUser(vo);
		}

		@Override
		public List<UserVO> getUserList(UserVO vo) {
//			log.printLog();
//			log.printLogging();
			return userDAO.getUserList(vo);
		}

	

}
