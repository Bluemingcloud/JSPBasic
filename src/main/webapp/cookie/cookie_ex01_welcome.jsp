<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	// 쿠키 활용
	Cookie[] cookies = request.getCookies();
	
	String str = "";
	
	if(cookies != null) {
		for(Cookie c : cookies) {
			// user_id 쿠키를 찾음
			if(c.getName().equals("user_id")) {
				str = c.getValue();
			}
		}
	}
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3><%=str %>님 환영합니다!</h3>
	
</body>
</html>