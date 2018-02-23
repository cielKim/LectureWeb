<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#msgView{
		border: 1px solid red;
		height: 200px;
		width: 500px;
	}
</style>
<script src = "/Lecture-Web/jquery/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
/* 
  url: 요청주소(문자열)
  type: 메소드(문자열)
  data: 파라미터(문자열, 제이슨객체)
  success: 수신성공(함수)
  error: 수신실패(함수)
  async: 동기/비동기 설정  
 
 */

	$(document).ready(function(){
		$(' :button').click(function(){
			$.ajax({
				url : "hello.jsp",
				//type은 default 값이 GET
				success: function(data){ //data->파라미터. 다른 함수 필요없이 그냥 파라미터로 보내주면 돼
//					$('#msgView').html(data);
					$('#msgView').append(data);
				
				}
				
			
				//jason으로 정보를 넣어줘
			});//ajax 통신을 하겠다는 얘기
		});
	});
</script>
</head>
<body>
		<h2>서버에서 받은 메세지 출력!</h2>
		<div id="msgView"></div>
		<input type="button" value="서버에 자료 요청"/>
</body>
</html>