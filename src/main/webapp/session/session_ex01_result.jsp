<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	1. 아이디, 비밀번호, 닉네임 파라미터를 받습니다.
	2. 아이디와 비밀번호가 같으면 로그인 성공입니다.
		닉네임, id 를 저장하는 세션을 생성하고, session_welcome 페이지로 리다이렉트 시킵니다.
	3. session_welcome 에서는 세션을 이용해서 "id(nickname) 님 환영합니다" 를 출력합니다.
	4. session_welcome 에서는 a 태그를 이용해서 로그아웃 기능도 만들어주세요.
	*/
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw)) {
		session.setAttribute("id", id);
		session.setAttribute("nick", nick);
		
		response.sendRedirect("session_ex01_welcome.jsp");
	} else {
		response.sendRedirect("session_ex01.jsp");
	}
	

%>
