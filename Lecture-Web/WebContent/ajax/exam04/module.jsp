<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src = "httpRequest.js"></script>
<script type="text/javascript">
	function sendOnClick(){
		//길게 뭐 안 쓰고 함수만 호출해서 ajax호출을 하게 하고싶은 것
		//개발자가 매번 코드를 작성하지 않고 알아서 하도록 함수를 만들고 싶은거야
		//name=swan&age=29&addr=byeolnae 자바스크립트로 넘어감 이걸 제이슨 형태로 넘기고 싶은 것
		var name = document.lform.name;
		var age = document.lform.age;
		var addr = document.lform.addr;
		var params = {name:name.value, age:age.value, addr:addr.value}; //jason형태로 만들었어! 근데 제이슨형태가 뭐지
		sendRequest("GET", "sample.jsp", params, callback);
		
			document.lform.name.value="";
			document.lform.age.value="";
			document.lform.addr.value="";
			//입력 후 칸 비워주기 
			

		
	}
	
	function callback(){
		//콜백함수는 개발자마다 만드는 방향이 다르므로 일일이 만들어줘야 함. 
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				var clear = document.getElementByName("lform");
				docu
				var debug = document.getElementById("debug");
				debug.value += httpRequest.responseText;
			}
		}
	}
</script>
</head>
<body>
	<h2>XMLHttpRequest 모듈을 이용한 예제</h2>
	
	<form name="lform">
	<textarea rows="8" cols="80" id="debug" name="debug"></textarea><br/>
	이름: <input type="text" name="name" size="20"/><bR>
	나이: <input type="text" name="age" size="20"/><br>
	주소: <input type="text" name="addr" size="20"/><br/>
	<input type="button" value="서버에 자료 전송" onclick="sendOnClick()"/>
	</form>
	
	
	
</body>
</html>