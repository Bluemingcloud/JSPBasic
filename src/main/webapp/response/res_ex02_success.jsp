<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>로그인 확인</h3>
	
	<p>로그인에 성공하였습니다!</p>
	
	아이디: <%=id %><br>
	
</body>
</html>