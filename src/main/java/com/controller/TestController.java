package com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 서블릿
// 1. 확장자 패턴 *.do
@WebServlet("*.test")
public class TestController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public TestController() {
	}
	
	// 2. get 요청, post 요청을 하나로 모음
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 3. 요청을 분기
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();	// ip, port 번호 제외된 주소
		// /JSPBasic/controller/signup.test
		
		String path = request.getContextPath();	// 프로젝트 식별 이름
		// /JSPBasic
		
		String command = uri.substring( path.length() );
		// /controller/signup.test
		
//		System.out.println(command);
		
		if(command.equals("/controller/signup.test")) {
			// 회원가입 요청처리...
			
		} else if(command.equals("/controller/login.test")) {
			// 로그인 요청처리...
			
		}
		
	}
}
