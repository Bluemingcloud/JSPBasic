
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Queue"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- list, queue, map, set -->
<% 
	//이 페이지에서 전체적으로 사용할 변수는 이렇게 선언함.
	// Collection
	// List
	List<String> list = new ArrayList<>();
	list.add("홍길동");
	list.add("이순신");
	
	// Queue
	Queue<Integer> queue = new LinkedList<>();
	queue.offer(1);
	queue.offer(2);
	queue.offer(3);
	int q = queue.poll();
	
	// Map
	Map<Integer, String> map = new HashMap<>();
	map.put(1, "홍길동");
	map.put(2, "이순신");
	String value1 = map.get(1);
	
	// Set
	Set<Integer> set = new HashSet<>();
	set.add(1);
	set.add(2);	// 중복 x, 순서 x

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	리스트: <%=list.toString() %><br>
	큐: <%=queue.toString() %><br>
	맵: <%=map.toString() %><br>
	셋크기: <%=set.size() %><br>
	
</body>
</html>