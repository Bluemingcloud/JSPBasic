<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>부서 조회 결과</h3>
	부서번호: ${dto.departmentId }<br>
	부서명: ${dto.departmentName }<br>
	관리자명: ${dto.managerName }<br>
	부서위치: ${dto.streetAddress }<br>

</body>
</html>