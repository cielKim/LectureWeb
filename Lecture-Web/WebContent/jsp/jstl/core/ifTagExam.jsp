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
<%--
	url뒤에 ifTagExm.jsp?type=xxx 형식
	
--%>
	<c:if test="${ empty param.type }">
		<h2>type파라미터가 전송되지 않았습니다. </h2>
	</c:if> 
	
	<c:if test="${ param.type == 'S'}">
	 <h2> 관리자입니다! 잇힝!</h2>
	 </c:if>
	 
	<c:if test="${ param.type =='U' }">
		<h2> 일반 사용자님 환영해용</h2>
	</c:if>
	
	<!-- else가 없어서 if문장으로 일일이 다 만들어줘야 한다.  -->
 

</body>
</html>