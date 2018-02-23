<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String[] names = {"김성은", "조여진", "문주리"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("length", names.length);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	1 - 10사이의 정수 출력<br/>
	<c:forEach var="i" begin="1" end="10">
	 ${ i } &nbsp;&nbsp; 
	</c:forEach>
	<br><br>
	년도 선택:
	<select>
		<option>2000</option>
		<option>2001</option>
		<option>2002</option>
		<option>2003</option>
	</select>
	<br>
	
	이거를 쉽게 만들어보자. <Br>
	<select>
	<c:forEach var="year" begin="2000" end="2020" step="2"> <!-- 2씩 늘려서 만들어라 -->
		<option>${year}</option>
	</c:forEach>
	</select>
	<br><br><br>
	
	
	<hr>
	<c:forEach items="${names}" var="element">
		${element}
	</c:forEach>
	
	<br><br>
	
	<hr>
	<c:forEach var="i" begin="0" end="${length -1}">
		<c:if test ="${i != 0}">
		,
		</c:if>
		${ names[i]}
	</c:forEach>
	
	<br><br>
	
	
	<hr>
	<c:set var="cnt" value="0"/>
	<c:forEach var="element" items="${ names }">
		<c:if test="${cnt != 0}">
			,
		</c:if>
		${element }
		<c:set var="cnt" value="${cnt+1 }"/>
	</c:forEach> 
	<c:remove var="cnt" scope="page"/>
	
	
	
	<br><br>
	
	
	<hr>
	index : count : first : last <Br>
	<c:forEach var="element" items="${names }" varStatus="loop">
		${ loop.index }:${ loop.count }:${ loop.first }:${ loop.last } <br>
		
	</c:forEach>
	
	<br><bR>
	
	<hr>
	<c:forEach var="element" items="${names }" varStatus="loop">
		<c:if test="${ loop.index != 0 }">
		,
		</c:if>
		
		${element}
		
	</c:forEach>
	
	
	<br><bR>
	
	<hr>
	<c:forEach var="element" items="${names }" varStatus="loop">
		<c:if test="${ loop.count != 1 }">
		,
		</c:if>
		
		${element}
		
	</c:forEach>
	
	
	
	<br><bR>
	
	<hr>
	<c:forEach var="element" items="${names }" varStatus="loop">
		<c:if test="${ not loop.first }">
		,
		</c:if>
		
		${element}
		
	</c:forEach>
	
	<br><bR>
	
	<hr>
	<c:forEach var="element" items="${names }" varStatus="loop">
		
		${element}
		
		<c:if test="${ not loop.last }">
		,
		</c:if>
	</c:forEach>
	
	<br><br><bR>
	<hr>
	length : ${fn:length(names) }<br/>
	<c:forEach var="i" begin="0" end="${fn:length(names)-1 }">
		<c:if test="${ not loop.last }">
		,
		</c:if>
		${ names[i] }
	</c:forEach>
	
	
</body>
</html>