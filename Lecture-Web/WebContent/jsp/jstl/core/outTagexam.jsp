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
	<c:set var="msg" value="하하하 하이!" /><br>
	value속성만 지정: <c:out value = "jstl"/><br>
	msg변수 설정: <c:out value="${msg}" default="오잉 어디갔지?" /><br>
	설정 없는 경우: <c:out value="${hi}" default="오잉 어디갔지?"/><br>
	<% 
		if(pageContext.getAttribute("msg") != null){
			
	%>
		msg: ${ msg }
	<%
		} else {
	
	%>
		오잉 어디갔지?<br>
	<%
		}
	%>
	
	value속성에 태그가 들어있는 경우 : 태그로 나오지 않고 요 그대로 나온다. 짱임! <br>
	<c:out value="<hr/>" escapeXml = "true"/> escapeXml은 default값이 true라서 안 써줘도 된다. <br>
	value속성에 태그가 들어있는 경우 : 태그로 나왔으면 하는 경우 <br>
	<c:out value="<hr/>" escapeXml="false" /> =>요 경우는 태그로 인식한다. 이봐 줄 생겼지?  <br>
	
	
	
	
</body>
</html>