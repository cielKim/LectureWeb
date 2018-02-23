<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Cookie[] cookies = request.getCookies();//복수형인게 중요해!!! 배열형태로 날아옴
	StringBuilder sb = new StringBuilder();
	if(cookies != null){
		for(Cookie cookie : cookies){
			String name = cookie.getName();
			String value = cookie.getValue();
			
			//decoding
			name = URLDecoder.decode(name, "utf-8");
			value = URLDecoder.decode(value, "utf-8");
			
			sb.append("쿠키이름: " + name + ", ");
			sb.append("쿠키값: " + value + "<br>");
			
		} 
	}		
		else {
			sb.append("설정된 쿠키 정보가 없습니다.");
			
		
		
	}
	//pageContext.setAttribute("cookeInfo",sb.toString()); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>설정된 쿠키 정보</h2>
	<%= sb.toString() %><br>
	<hr>
	<%--${ cookieInfo }<br>--%>
	
	<a href = "makeForm.jsp">쿠키설정</a>
</body>
</html>