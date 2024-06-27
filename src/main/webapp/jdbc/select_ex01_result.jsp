<%@page import="java.util.*"%>
<%@page import="com.model.DepartmentDAO"%>
<%@page import="com.model.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	// 받을 값은 x
 	
 	// DAO 객체 생성
 	DepartmentDAO dao = DepartmentDAO.getInstance(); // 싱글톤 객체생성

	List<DepartmentDTO> list = dao.getList(); // 부서 조회 메서드 호출
	
	// 리스트를 다음 페이지로 전달
	request.setAttribute("list", list); // request에 저장
	
	// forward 로 결과화면 이동
	//request.getRequestDispatcher("select_ex01_list.jsp").forward(request, response);
	request.getRequestDispatcher("select_ex01_list02.jsp").forward(request, response);

%>    
