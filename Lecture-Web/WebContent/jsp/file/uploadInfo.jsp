<%@page import="java.io.InputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>전송된 정보 출력</h3>
<%
	InputStream is = request.getInputStream();
	InputStreamReader isr = new InputStreamReader(is, "utf-8");//정보가 날아오는게 어디에서 날아오는지 보기 위해 사용하는 메소드, 단위는 byte 한글도 입력하고 싶기 때문에 char단위로 받아야한다. 
	BufferedReader br = new BufferedReader(isr);
	
	while(true){
		String data = br.readLine();
		if(data == null)
			break;
		out.println(data + "<br/>");
	}

%>	
	
	
</body>
</html>