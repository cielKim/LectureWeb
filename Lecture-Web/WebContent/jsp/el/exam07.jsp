<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	List<String> names = new ArrayList<>();
	names.add("김성은");
	names.add("조여진");
	names.add("문주리");
	
	pageContext.setAttribute("names", names);
	

 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	첫번째이름 : <%= names.get(0) %> <Br> 
	두번째이름 : <%= names.get(1) %><Br> 
	세번째이름 : <%= names.get(2) %><Br> 
	
	el 첫번째 이름: ${ names[0] }<Br>
	el 두번째 이름: ${ names[1] }<Br>
	el 세번째 이름: ${ names[2] }<Br>
</body>
</html>