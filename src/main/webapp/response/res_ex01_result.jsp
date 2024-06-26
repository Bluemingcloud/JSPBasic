<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 늘 하는것 처럼 2번째 페이지에서는 데이터를 받음
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age >= 20) {
		// response
		response.sendRedirect("res_ex01_ok.jsp");
	} else {
		response.sendRedirect("res_ex01_no.jsp");
	}
	// 필요한 부분은 자바코드 블록 뿐 -> servlet 으로 자바문만 작성
	// 자바 servlet 으로 변경할 예정
	
%>
<!-- 아래 내용은 삭제해도 무방하다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>