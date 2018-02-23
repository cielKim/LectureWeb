<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equals("POST")){
		request.setCharacterEncoding("utf-8");
		
	}
%>

	안녕하세요? ${param.name}회원님
	회원님이 입력하신 이름은 ${param.name} 
	나이는 ${param.age} 
	주소는 ${param.addr} 입니다. 
	