<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	
	// 쿠키를 꺼냄
	Cookie[] cookies = request.getCookies();
	
	String str = "";
	
	if(cookies != null) {
		// user_id쿠키가 있는지 확인
		for(Cookie c : cookies) {
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

	user_id 쿠키값: <%=str %>

</body>
</html>