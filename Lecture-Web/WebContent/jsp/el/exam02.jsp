<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
	http://localhost:8000/Lecture-Web/jsp/el/exam02.jsp
	?id=ciel&name=kse&hobby=baseball&hobby=reading
	으로 호출했을 때 aaa를 출력하는 방법

 --%>
 <% 
 	String id = request.getParameter("id");
 	String [] hobbies = request.getParameterValues("hobby");
 	if(hobbies == null){
 		hobbies = new String[]{"내용 없음"};
 	}
 	/*
 	자바문법시간
 	int[]ar = new int [] {1,2,3,4,5};
 	int[]ar = {1,2,3,4,5};
 	두 방법이 같다. 
 	ar = new int [] {10,20}; 선언할 때는 위의 방법으로만 가능하다. 
 	*/
 %>

	 id: <%= id %><br>
	 id: <%= request.getParameter("id") %><br>
	 id: ${param.id}<br><br>
	 
	 name: <%= request.getParameter("name") %><br>
	 name: ${param.name }<br>
	 
	 hobbies[0] : <%= hobbies[0] %><br>
	 
	 
	 hobbies[0] : ${paramValues.hobby[0] }<br>
	 hobbies[1] : ${paramValues.hobby[1] }<br>
	 
</body>
</html>