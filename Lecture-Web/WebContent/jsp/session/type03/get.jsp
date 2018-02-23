<%@page import="kr.co.bit.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%


	MemberVO member = (MemberVO)session.getAttribute("member");
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 	<c:choose>
 	<c:when test="${member ne null}"> <!-- ${not empty member} -->
	설정된 세션 id : ${ sessionScope.member.id }
	설정된 세션 패스워드: ${sessionScope.member.password}
 	</c:when>
 	<c:otherwise>
 	설정된 값이 없어용
 	</c:otherwise> 	
 	</c:choose>
 	
 
 	
	<hr>
	<%
		if(member != null){
	%>
	설정된 세션 id :<%= member.getId() %><br>
	설정된 세션 패스워드: <%= member.getPassword() %><Br>
	<%
		} else{
	%>
	 설정된 정보가 없습니다.<br>
	 <%
		}
	 %>
	 
	 
	<hr>
	${ sessionScope.member  }
	<hr>
	<a href="remove.jsp">세션삭제</a>
</body>
</html>