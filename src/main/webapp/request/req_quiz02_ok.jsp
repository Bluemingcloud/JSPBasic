<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	
	String user_name = request.getParameter("user_name");
	double height = Double.parseDouble(request.getParameter("height"));
	double weight = Double.parseDouble(request.getParameter("weight"));
	double bmi = weight /((height/100) * (height/100));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>BMI 계산</h3>
	이름: <%=user_name %><br>
	키: <%=height %>cm<br>
	몸무게: <%=weight %>kg<br>
	BMI: <%=bmi %><br>
	<% if(bmi >= 25) {%>
		과체중
	<%} else if(bmi <= 18) {%>
		저체중
	<%} else {%>
		정상
	<%} %>
	 <br>
	 
</body>
</html>