<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	Cookie[] cookies = request.getCookies();
	
	String remember_id = "";
	if(cookies != null) {
		for(Cookie c : cookies) {
			if(c.getName().equals("remember_id")) {
				remember_id = c.getValue();
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

	<h3>쿠키 활용해보기</h3>
	
	<form action="cookie_ex01_result.jsp" method="post">
		아이디: <input type="text" name="id" 
					  placeholder="아이디를 입력하세요" 
					  value=<%=remember_id %>><br>
		비밀번호: <input type="password" name="pw"><br>
		
		<input type="submit" value="확인">
		<input type="checkbox" name="check" value="y">아이디기억하기
		<br>
	</form>
	
</body>
</html>