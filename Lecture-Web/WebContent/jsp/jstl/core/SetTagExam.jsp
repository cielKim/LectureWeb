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
	1값을 가지는 변수 cnt를 공유영역에 설정(page)<br>
	<c:set var="cnt" value="1" />
	<!--위의 prefix="core"면 <core:set >으로 맞춰서 사용-->
	
	공유영역에 설정된 변수 cnt값을 출력(page)<br>
	${ cnt }<br>
	
	변수 cnt값을 1증가시키고 싶음<br>
	<c:set var="cnt" value="${ cnt + 1 }" scope="request"/><br>
	
	${ cnt }<br>
	${ requestScope.cnt }<br>
	
	request영역에 있는 cnt변수 삭제<br>
	<c:remove var="cnt" scope="request" />
	
	cnt 삭제 후 
	page: ${ cnt }<br>
	request: ${ requestScope.cnt } <Br>
	
	scope 미설정 삭제<br>
	<c:remove var="cnt" />
	page: ${ cnt }<br>
	
	
	
	
	<%--
	
		jsp 공유영역
		pageContext request session application
		
		EL 공유영역
		pageScope requestScope sessionScope applicationScope
		
		jstl 공유영역
		page request session application
		
		
	 --%>
	
</body>
</html>