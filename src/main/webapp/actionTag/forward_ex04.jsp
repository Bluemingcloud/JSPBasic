<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 파라미터 값(input 으로 받은 값 -> form 값) 은 getParameter()
	String id = (String)request.getParameter("id");

	// setAttribute() 로 받은 값은 getAttribute()
	String name = (String)request.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>포워드04 페이지</h3>
	
	아이디: <%=id %><br>
	이름: <%=name %><br>
	<form action="logout" method="post">
		<input type="submit" value="로그아웃">
	</form>
	
	<!-- 
	포워드로 보내면 이전 주소로 설정되어 있음
	이전 주소값이 servlet인 JSPBasic/forward 로 되어있으므로
	다음에 보낼 servlet 주소의 root 경로는 JSPBasic 이다.
	-->
	<a href="logout">로그아웃</a>
	
</body>
</html>