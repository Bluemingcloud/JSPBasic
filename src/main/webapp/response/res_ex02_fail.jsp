<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
	
	<p>로그인에 실패하였습니다!</p>
	
	입력한 아이디: <%=id %><br>
	입력한 비밀번호: <%=pw %><br>

</body>
</html>