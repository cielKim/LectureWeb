<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	var httpRequest = null; //xmlhttp객체를 기억하기 위한 변수
	
	
	function getXMLHttpRequest() {
	      if(window.XMLHttpRequest) {
	         httpRequest = new XMLHttpRequest();
	      }else if(window.ActiveXObject){
	         httpRequest = new ActiveXObjext("Microsoft.XMLHTTP");
	      }else
	         httpRequest = null;
	      
	      return httpRequest;
	   }
	   
	
	function sendRequest(method, url, params, callback){
		
		httpRequest.onreadystatechange = callback;
		httpRequest.open(method, url, true);
		httpRequest.send(params);
		
		
	}
	
	
	function requestMsg(){
		httpRequest = getXMLHttpRequest();
	//	sendRequest(메소드, url, 파라미터, 콜백함수);
		sendRequest("GET", "hello.jsp", null, responseMsg);
		
		//2. 콜백함수 설정
		httpRequest.onreadystatechange = responseMsg; //서버상태를 계속 관리
		
		//3. 서버에 비동기 요청-open, send 함수를 알아야해!
		httpRequest.open("GET", "hello.jsp", true);
		httpRequest.send(null);
	}
	
	function responseMsg(){
		//4. 서버의 응답완료
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				//5. 서버에서의 응답결과 화면 출력
				var msgView = document.getElementById("msgView");
				msgView.innerHTML = httpRequest.responseText;
				
			}
		}
		
	}

</script>
<style type="text/css">
	#msgView{
		border: 1px solid red;
		height: 200px;
		width: 500px;
	}


</style>
</head>
<body>
	<h2>서버에서 받은 메세지</h2>
	<div id="msgView"></div>
	<input type="button" value="서버 자료 요청" onclick="requestMsg()"/>
</body>
</html>