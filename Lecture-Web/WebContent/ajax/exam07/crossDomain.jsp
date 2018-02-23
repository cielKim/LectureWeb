<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	#searchResult{
		border: 1px solid red;
		width: 700px;
		height: 800px;
		
	}

</style>

<script src = "/Lecture-Web/jquery/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(' :button').click(function(){
			$.ajax({
				url : "https://apis.daum.net/search/blog",
				type : "get",
				data : {
					apikey : "9854529be7883dd186634663aad0a74c",
					q : $('#searchWord').val(),
					result : 5,
					output : "json"
					
				},
				dataType : "jsonp",
				success : callback,
				error : function(){
					alert('실패');
				}
			});
		
		});
	});
	
	
	function callback(jsonData){
		
		var itemList = jsonData.channel.item;
			$('#searchResult').empty();
		
		for(var i=0 ; i<itemList.length ; i++){
			var item = itemList[i];
			var title = item.title;
			var link = item.link;
			var desc = item.description;
			
			$('#searchResult').append("<hr/>");
			$('#searchResult').append("<a href='" + link + "'>" + title + "</a>");
			$('#searchResult').append("<br/>");
			$('#searchResult').append(desc + "<br/>");
			
			
		}
	}
</script>
</head>
<body>
	<h2>블로그 검색하기</h2>
	검색어 입력: <input type="text" name="searchWord" size="20" id="searchWord"/>
	<input type="button" value="검색"/>
	<br>
	
	<h4>검색결과</h4>
	<div id="searchResult"></div>
</body>
</html>