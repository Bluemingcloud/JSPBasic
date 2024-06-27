<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	평균이 60점 이상이면 score_ok으로 이동해서
		~~님 평균은 xx점 합격입니다 를 출력
	평균이 60점 이하라면 score_no으로 이동해서
		~~님 평균은 xx점 불합격입니다 를 출력
		
	조건: 세션을 사용하지 않습니다.		
	*/
	
	/*
	// form 값 받아올 변수 생성
	int korean = Integer.parseInt(request.getParameter("korean"));
	int english = Integer.parseInt(request.getParameter("english"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	// 평균 계산
	double avg = ((double)korean + english + math) / 3;
	*/
	// form 값이 많을 경우 값을 각각 따로 처리할 필요 없으면 배열 생성
	// 파라미터의 개수를 확인할 방법이 있는가? -> list 로?
	// 과목 명을 알고 있으면 과목명의 배열 생성
	String[] subjects = {"korean", "english", "math"};
	int[] scores = new int[subjects.length];
	
	for(int i = 0; i < scores.length; i++) {
		// 파라미터로 받은 값은 String 타입
		String score = request.getParameter(subjects[i]);
		// Integer 로 캐스팅 후 배열에 저장
		scores[i] = Integer.parseInt(score);
	}
	
	// 평균 값
	double avgArr = Arrays.stream(scores).average().getAsDouble();
	
	// 새로 생성된 avg 속성을 request 객체에 넣는다.
	//request.setAttribute("avg", avg);
	request.setAttribute("avgArr", avgArr);
	
	// forward 할 url 설정
	//String url = avg >= 60 ? "score_ok.jsp" : "score_no.jsp";
	String url = avgArr >= 60 ? "score_ok.jsp" : "score_no.jsp";
	
	// forward
	request.getRequestDispatcher(url).forward(request, response);
	
%>

<%-- <jsp:forward page="<%=url %>"/> --%>
