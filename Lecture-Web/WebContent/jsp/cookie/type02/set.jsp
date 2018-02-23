<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	request.setCharacterEncoding("utf-8");
 	String cName = request.getParameter("cName");
 	String cValue = request.getParameter("cValue");
 	String cAge = request.getParameter("cAge");
 	//encoding 하기 
 	
 	cName = URLEncoder.encode(cName, "utf-8");
 	cValue = URLEncoder.encode(cValue, "utf-8");
 	
 	//쿠키를 설정
 	
 	Cookie cookie = new Cookie(cName , cValue);
 	
 	//유효시간 설정
 	if(cAge != null && cAge.trim().length() > 0) {
 		//trim: 양쪽 공백이 있으면 그걸 없애주는 메소드, 공백이 있거나 공백을 없앤 뒤 실제 존재하는 애들만 세려고..ㅋㅋ;
 		cookie.setMaxAge(60*Integer.parseInt(cAge));//초단위로 입력하기 때문에 분단위로 만들기 위해 60곱해줘
 	}
 	
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