<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	var httpRequest = null;
	
	function clearOnClick(){
		var debug = document.getElementById("debug");
		debug.value = "";

	}
	
	
	function getXMLHttpRequest() {
	      if(window.XMLHttpRequest) {
	         httpRequest = new XMLHttpRequest();
	      }else if(window.ActiveXObject){
	         httpRequest = new ActiveXObjext("Microsoft.XMLHTTP");
	      }else
	         httpRequest = null;
	      
	      return httpRequest;
	   }
	   
	
	
	function sendProcess(){
		httpRequest = getXMLHttpRequest();
		
		httpRequest.onreadystatechange = callbackFunction; //open, send 전 에 설정해줘야해. 그래야 실행했을 때 나오지.
		
		httpRequest.open("GET", "/Lecture-Web/ajax/exam01/hello.jsp", true);
		httpRequest.send(null);
		
	}
	
	function callbackFunction(){
		/*
		
		readyState
		0: open() 호출 전
		1: open() 호출, send() 호출 전
		2: send() 호출, 서버응답 전
		3: 서버응답, 클라이언트에게 requestHeader전송, body미전송
		4: 클라이언트에게 응답완료(전송완료)
		
		status ->readyState가 4일 때 의미가 생김
		200: OK
		403: 액세스 거부
		404: file not found
		500: 내부 서버 오류
		
		*/
		
		var debug = document.getElementById("debug");
		switch(httpRequest.readyState){
		case 1: 
			debug.value += "Loading...\n";
			break;
		case 2:
			debug.value += "Loaded..\n";
			break;
		case 3:
			debug.value += "Interactive...\n";
			break;
		case 4:
			debug.value += "Complete..\n";
			if(httpRequest.status == 200) {
				debug.value += "웹서버에서 정상적으로 수행..\n";
			} else {
				debug.value += "웹서버에서 오류발생 \n";
				debug.value += '오류코드: ' + httpRequest.status + '\n';
				debug.value += '오류내용: ' + httpRequest.statusText + '\n';
			}
			break;
		}
		
		
		
		
	}
</script>
</head>
<body>
	<textarea rows="10" cols="80" id="debug"></textarea><br>
	<input type="button" value="서버호출" onclick="sendProcess()"/>
	<input type="button" value="초기화" onclick="clearOnClick()"/>
</body>
</html>