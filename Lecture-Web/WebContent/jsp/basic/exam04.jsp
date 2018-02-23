<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! private int num = 0; %>
	num : <%= num %><br>
	
	<%!
		public int add(int val1, int val2){
		int sum = 0;
		for(int i=val1 ; i<=val2; i++){
			sum+=i;
		}
		return sum;
	}
	%>
	
	1-10 사이의 총합 : <%=add(1,10) %><br><%--함수를 정의해서 그 함수를 적어준 것. add함수 --%>
	
</body>
</html>