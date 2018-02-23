<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String id = session.getId();
	int interval = session.getMaxInactiveInterval();// 유효시간
	
	//유효시간 변경
	session.setMaxInactiveInterval(2);
	int interval2 = session.getMaxInactiveInterval();
	
	//마지막 접근시간
	Long lastTime = session.getLastAccessedTime();
	//simple date format
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
	Date d = new Date(lastTime);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>sessionID(JSESSION) : <%= id %></h2>
	<h2>유효시간: <%= interval/60 %>분</h2>
	<h2>변경 유효시간: <%= interval2 %>초</h2>
	<h2>마지막 접근 시간: <%= sdf.format(d) %></h2>
</body>
</html>