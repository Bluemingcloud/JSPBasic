<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String point = request.getParameter("point");
	String name = request.getParameter("name");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	포워드로 넘어온 데이터: <%=point %><br>
	중간에 추가한 데이터: <%=name %><br>
</body>
</html>