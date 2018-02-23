<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
 	request.setCharacterEncoding("utf-8");
 	String cName = request.getParameter("cName");
 	String cValue = request.getParameter("cValue");
 	
 	//encoding 하기 
 	
 	cName = URLEncoder.encode(cName, "utf-8");
 	cValue = URLEncoder.encode(cValue, "utf-8");
 	
 	//쿠키를 설정
 	
 	Cookie cookie = new Cookie(cName , cValue);
 	
 	//쿠키 전송
 	
 	response.addCookie(cookie);
 	
 	
--%>

<%
	Cookie c = new Cookie("type01" , URLEncoder.encode("/ 루트설정" , "utf-8"));
	c.setPath("/");
	
	Cookie c2 = new Cookie("type02", URLEncoder.encode("/Lecture-Web/jsp/cookie 루트설정", "utf-8"));
	c2.setPath("/Lecture-Web/jsp/cookie");
	
	Cookie c3 = new Cookie("type03" , URLEncoder.encode("/ type03 루트설정" , "utf-8"));
	c3.setPath("/Lecture-Web/jsp/cookie/type03");
	
	Cookie c4 = new Cookie("type04", URLEncoder.encode("/Lecture-Web/jsp/cookie/type04 루트설정", "utf-8"));
	c4.setPath("/Lecture-Web/jsp/cookie/type04");
	
	
	response.addCookie(c);
	response.addCookie(c2);
	response.addCookie(c3);
	response.addCookie(c4);
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