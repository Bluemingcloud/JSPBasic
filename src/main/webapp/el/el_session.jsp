<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션에 값을 저장
	session.setAttribute("user_id", "aaa123");
	session.setAttribute("user_name", "홍길동");
	
	// app 객체에 값을 저장
	application.setAttribute("menu", new String[] {"아아", "카페라떼"});

%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>세션 EL 태그 사용</h3>
	${sessionScope.user_id }<br>
	${sessionScope.user_name }<br>
	
	<!--
		sessionScope, applicationScope도 생략이 가능한데,
		쓰는편이 좋습니다.
		생략하게 되면 request -> session -> application 순서로 이름값을 찾음. 
	 -->	
	${user_id }<br>
	${user_name }<br>
	
	<h3>어플리케이션 EL 태그 사용</h3>
	${applicationScope.menu[0] }<br>	
	${applicationScope.menu[1] }<br>	
	
</body>
</html>