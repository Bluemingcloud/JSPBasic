package com.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import org.json.JSONObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.ajax") // .ajax로 끝나는 요청
public class AjaxController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		
		System.out.println(command);
		
		if(command.equals("/ajax/hello.ajax")) {
			
			// get방식은 request.getParameter() 로 받으면 된다.
			String name = request.getParameter("name");
			String age = request.getParameter("age");
			
			System.out.println("name: " + name + ",age: " + age);
			
			// 데이터를 보낼때
			response.setContentType("application/json"); // 제이슨 타입으로 응답
			PrintWriter out = response.getWriter();
			// out.println("{\"key\":\"이순신\"}"); // 이 데이터에 대한 타입
			
			// JSONObject 또는 GSON 외부라이브러리
			JSONObject obj = new JSONObject();
			obj.put("key", "김길동");
			out.println(obj);
			
		} else if(command.equals("/ajax/bye.ajax")) {
			
			// Form 태그 형식으로 받기
//			String name = request.getParameter("name");
//			String age = request.getParameter("age");
//			System.out.println("name: " + name + ",age: " + age);
			
			// JSON 데이터 받기
			BufferedReader br = request.getReader();
			StringBuilder sb = new StringBuilder();
			
			String str = "";
			while((str = br.readLine()) != null) {
				sb.append(str);
			}
			br.close();
//			System.out.println(sb.toString());
			JSONObject obj = new JSONObject(sb.toString());
			obj.put("name", "김길동");
			
			response.setContentType("application/json");
			PrintWriter out = response.getWriter();
			out.println(obj);
		}
		
	}
	
}
