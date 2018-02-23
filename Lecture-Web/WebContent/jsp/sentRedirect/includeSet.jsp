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

	<h2> 과연 이게 나올까!!!!!!!!!!!!!!!!!!!!!!</h2>
	<c:set var="id" value="${param.id }" scope="request"/>
	<%
	
		request.setAttribute("id", request.getParameter("id"));
	// 	<c:set var="id" value="${param.id }"/> 두 방식이 같아
	%>
	
	<c:if test="${param.id == 'admin'}">
		<jsp:include page="admin.jsp">
			<jsp:param name="id" value="${param.id }"/>
		</jsp:include>
	
	</c:if>
	
	<c:if test="${param.id != 'admin'}">
		<jsp:include page="user.jsp">
			<jsp:param name="id" value="${param.id }"/>
		</jsp:include>
		
	
	</c:if>
</body>
</html>