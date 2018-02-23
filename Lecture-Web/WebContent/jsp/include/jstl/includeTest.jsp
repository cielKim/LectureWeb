<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="name" value="swan" scope="request"/>
	<c:set var="age" value="29" scope="request"/>
	<h2>인클루드 전 </h2>
	<c:import url="one.jsp"/><br>
	파라미터 미설정: <br>
	<c:import url="one.jsp"/><br>
	
	파라미터 설정 호출<br>
	<c:import url="one.jsp">
		<c:param name="name" value="jeong swan"/>
		<c:param name="age" value="29"/>
		<c:param name="jjak" value="ciel"/>
	</c:import>
	

	
	<h2>다음 사이트 인클루드 하기</h2>
	
	<c:import url="https://www.daum.net"/>
		
	<hr/>
	
	<h2>인클루드 후 </h2>
	
	
	
</body>
</html>