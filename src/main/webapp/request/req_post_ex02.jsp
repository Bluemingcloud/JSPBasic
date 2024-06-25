<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// post 방식 한글처리
	// request 를 사용하기 전에 인코딩 형식을 지정해야 함.
	request.setCharacterEncoding("utf-8");  

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인 확인</h3>
	아이디:<%=id %><br>
	비밀번호:<%=pw %><br>
</body>
</html>