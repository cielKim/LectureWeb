<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//object형이기 때문에 string으로 형변환을 해야한다. 
	String id = (String)session.getAttribute("id");
	String password = (String)session.getAttribute("password");
	
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	설정된 세션 아이디: <%= id %>
	설정된 세션 패스워드: <%= password %> 
	<hr>
	설정된 세션 id : ${ sessionScope.id }
	설정된 세션 패스워드: ${sessionScope.password}
	<hr>
	<a href="remove.jsp">세션삭제</a>
</body>
</html>