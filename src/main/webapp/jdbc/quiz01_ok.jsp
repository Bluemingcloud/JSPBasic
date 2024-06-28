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
	<c:choose>
		<c:when test="${dto == null }">
			<p>조회한 부서는 없는 번호입니다.</p>
		</c:when>
		<c:otherwise>
			<p>부서번호: ${dto.departmentId }</p>
			<p>부서명: ${dto.departmentName }</p>
			<p>관리자명: ${dto.managerName }</p>
			<p>부서위치: ${dto.streetAddress }</p>
		</c:otherwise>
	</c:choose>
	<a href="quiz01.jsp">다시 조회하기</a>

</body>
</html>