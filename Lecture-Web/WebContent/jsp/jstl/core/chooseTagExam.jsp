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
	<c:choose>
		<c:when test="${param.type == 'S'}">
			<h2> 관리자입니다.</h2>
		</c:when>
		<c:when test="${param.type == 'U' }">
			<h2> 일반사용자입니다. </h2>
		</c:when>
		<c:otherwise>
			type이 전송되지 않았거나 type인자가 잘못 전송되었습니다. 
		</c:otherwise>
	</c:choose>
	
	
</body>
</html>