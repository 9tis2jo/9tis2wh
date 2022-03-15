package com.springbook.biz.user;

import java.util.List;

public interface UserService {

		//회원 등록
		void insertUser(UserVO vo);
		
		//회원정보 수정
		void updateUserInfo(UserVO vo);
		
		//회원 비밀번호 수정
		void updateUserPW(UserVO vo);
		
		//회원 삭제
		void deleteUser(UserVO vo);
		
		//글 상세 조회
		UserVO getUser(UserVO vo);
		
		//글 목록 조회
		List<UserVO> getUserList(UserVO vo);

	

}
