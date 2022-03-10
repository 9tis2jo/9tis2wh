package com.springbook.biz.user;

import java.util.Scanner;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		UserService userService = (UserService)container.getBean("userService");
		
		String id = "";
		String password = "";
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("아이디 입력 : ");
		id = sc.nextLine();
		System.out.println("패스워드 입력 : ");
		sc.hasNextLine();
		password = sc.nextLine();
		
		UserVO vo = new UserVO();
		vo.setMID(id);
		vo.setMPW(password);
		
		UserVO user = userService.getUser(vo);
		
		if(user != null) {
			System.out.println(user.getMNAME() + "님 환영합니다.");
		}else {
			System.out.println("로그인 실패");
		}
		
		container.close();
	}

}
