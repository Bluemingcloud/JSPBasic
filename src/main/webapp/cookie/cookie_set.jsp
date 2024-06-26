<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 생성 문법
	// 1. 쿠키 객체 생성
	Cookie cookie = new Cookie("user_id", "aaa123");	// 이름, 값
	Cookie cookie2 = new Cookie("user_name", "홍길자");

	// 2. 쿠키의 지속시간 설정
	cookie.setMaxAge(3600);	// 3600초 = 1시간
	cookie2.setMaxAge(20);	// 20초
	
	// 3. 쿠키를 response에 담아서 보낸다.
	response.addCookie(cookie);
	response.addCookie(cookie2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>쿠키</h3>
	<div>
		<h4>쿠키란?</h4>
		<ul>
			<li>서버와 클라이언트의 정보 유지수단으로 서버에서 만들어서 클라이언트에 저장합니다.</li>
		</ul>
	</div>
	
	<a href="cookie_get.jsp">쿠키 사용하기</a>
	
</body>
</html>