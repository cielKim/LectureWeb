<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--http://localhost:8000/Lecture-Web/jsp/basic/exam/exam01.jsp 
	2-9단 사이의 구구단 출력
	--%>
	
	<h2> 구구단 </h2>
	
	<%
	for(int i=2 ; i<=9 ; i++){ 
		out.write("<"+ i +"단>" + "<br>");
		for(int j=1 ; j<=9 ; j++){
		
		out.write(i+ " * "+ j + "= " + i*j + "<br>");
		
		}
	}
	%>
	
	
	
	
	
</body>
</html>