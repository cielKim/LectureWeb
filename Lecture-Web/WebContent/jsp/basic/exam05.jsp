<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Random"%>
<%@ page import = "java.util.Scanner" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1-10사이의 임의의 정수 추출</h2>
	
	<%
	//java.util.Random r= new java.util.Random();

		Random r = new Random();
		int random = r.nextInt(10)+1;
	
	%>
	추출된 정수 <%= random %><br>
	
	<h2>숫자 입력받기</h2>


</body>
</html>