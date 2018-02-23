<%@page import="kr.co.bit.board.BoardVO"%>
<%@page import="kr.co.bit.board.boardList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//1. 자바빈즈 클래스 + 배열
	BoardVO board = new BoardVO();
	board.setTitle("성공");
	
	BoardVO[] boardList = {board};
	
	
	
	//2. 자바빈즈클래스 + 콜렉션
	/*BoardVO board = new BoardVO();
	board.setTitle("성공");
	
	List<BoardVO> boardList = new ArrayList<>();
	boardList.add(board);*/
	
	//3. 맵객체 + 배열
	/*Map<String, String> board = new HashMap<>();
	board.put("title", "성공");
	
	Map [] boardList = {board};*/
	
	//4. 맵객체 + 콜렉션
	List<Map<String, String>> boardLists = new ArrayList<>();
	//boardLists.add(board);
	
	pageContext.setAttribute("boardList", boardList);
	
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	성공/실패? ${boardList[0].title }<Br> <!-- 성공출력 -->
	성공/실패? ${boardList[1].title }<Br> <!-- 실패출력 -->

	

	
	

</body>
</html>