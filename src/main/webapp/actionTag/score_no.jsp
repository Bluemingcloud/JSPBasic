<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	//double avg = (double)request.getAttribute("avg");
	double avgArr = (double)request.getAttribute("avgArr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과 확인</h3>
	
	<%-- <%=name %>님 평균은 <%=avg %>점 불합격입니다 --%>
	<%=name %>님 평균은 <%=avgArr %>점 불합격입니다
	
</body>
</html>