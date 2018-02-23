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
		sendRequest("POST", "sample.xml", null, callback);
			
	}
	
	function debugTrace(msg){
		var debug = document.getElementById("debug");
		debug.value += msg;
		
	}
	
	function callback(){
		var msg = "";
		//httpRequest를 선언하지 않았지만 사용할 수 있는 이유: httpRequest에서 선언해서 쓸 수 있어
		if(httpRequest.readyState == 4){
			if(httpRequest.status == 200){
				var xmlDoc = httpRequest.responseXML;
				var memberList = xmlDoc.getElementsByTagName("member");
				
				msg += '회원수: ' + memberList.length + '명\n';
				for(var i=0 ; i<memberList.length ; i++){
					var mem = memberList[i];
					var id = mem.getElementsByTagName("id")[0].firstChild.nodeValue;
					var name = mem.getElementsByTagName("name")[0].firstChild.nodeValue;
					
					msg += id + " : " + name + "\n";
				}
			}
		}
		debugTrace(msg);
	}
	
	
</script>
</head>
<body>
	<h2>XML 데이터 예제</h2>
	
	<form name="lform">
	<textarea rows="8" cols="80" id="debug" name="debug"></textarea><br/>
	<input type="button" value="서버에 자료 요청" onclick="sendOnClick()"/>
	</form>
	
	
	
</body>
</html>