<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src = /Lecture-Web/jquery/js/jquery-3.2.1.min.js></script>
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
				//var xmlDoc=$.parseXML(httpRequest.reponseText);
				var xmlDoc=httpRequest.responseXML;
				//$(xmlDoc).find('member');
				var memberList = $(xmlDoc).find('member');

				msg += '회원수 : ' + memberList.length + '명\n';
				memberList.each(function(index) {
					var id = $(this).find('id').text();
					var name = $(this).find('name').text();
					
					msg += id + ":" + name +"\n";
				});
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