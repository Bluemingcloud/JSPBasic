<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>경로 공부하기</h3>
	
	<!-- a태그로 jspTag 폴더에 include페이지로 상대경로, 절대경로 이동 -->
	
	<a href="../../jspTag/include.jsp">include 페이지 상대경로</a><br>
	<a href="/JSPBasic/jspTag/include.jsp">include 페이지 절대경로</a><br>
	
	<!-- MyServlet 맵핑경로는 /JSPBasic/apple 입니다. 상대경로로 이동 -->
	
	<a href="../../apple">apple Servlet 상대경로</a><br>
	
	<!-- html 안에 있는 이미지파일을 img 태그 상대경로, 절대경로 참조 -->
	
	<div>
		<img alt="img1" src="../../html/img/img1.jpg" width="300" height="500">
		<p>상대경로</p>
		<img alt="img2" src="/JSPBasic/html/img/img2.jpg" width="300" height="360">
		<p>절대경로</p>
	</div>
	

</body>
</html>