<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	request.setCharacterEncoding("utf-8");
 	String cName = request.getParameter("cName");
 	String cValue = request.getParameter("cValue");
 	
 	//쿠키를 설정
 	
 	Cookie cookie = new Cookie(cName , cValue);
 	
 	//쿠키 전송
 	
 	response.addCookie(cookie);
 	
 	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키설정 완료! 얌얌 바삭바삭 </h2>
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>