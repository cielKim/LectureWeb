<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		객체등록: 공유영역명.setAttribute("이름", "값");
		공유영역: pageContext, request, session, application
		
		
	
	*/
	pageContext.setAttribute("msg", "pageContext영역에 객체등록");
	String message = (String)pageContext.getAttribute("msg");
	//request영역에 id라는 영역으로 hong 등록
	
	request.setAttribute("id","hong");
	String ID = (String)request.getAttribute("id");
	
	request.setAttribute("msg", "request영역에 객체등록");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	msg : ${pageScope.msg}<br>
	msg : ${msg}<br>
	msg : <%= pageContext.getAttribute("msg") %><br>
	message : <%= message %><br>
	
	id: ${id }<br>
	id: ${requestScope.id }<br>
	id: <%= request.getAttribute("id") %><br>
	id: <%= ID %><Br>
	
	request의 msg: ${requestScope.msg}<br>
	
	
	
</body>
</html>