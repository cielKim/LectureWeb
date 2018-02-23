package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet{
	
//	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("get방식 호출 중");
		//http://localhost:8000/Lecture-Web/method?id=sungeun
		String id = request.getParameter("id"); //return타입은 모두 string이다. 날라온 값을 뽑아 낼 때는 getParameter 함수를 사용한다. 
		String method = request.getMethod();
		StringBuffer url = request.getRequestURL();
		String uri = request.getRequestURI();		
		
		response.setContentType("text/html; charset=utf-8");
		//내가 지금 응답하려는 타입이 html문서이고 그 타입을 utf-8로 표현하라. 
		
		PrintWriter out = response.getWriter();
		
		
		out.println("<html>");
		
		out.println("<head>");
		
		out.println("<title>메소드 호출방식</title>");		
		out.println("<body>");
		out.println("--------------------------------------------------------<br>");
		out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;출력결과 <br>");
		out.println("--------------------------------------------------------<br>");
		out.println("파라미터(id) : " + id + "<br>");
		out.println("요청방식 : " + method + "<br>");
		out.println("URL : " + url.toString() + "<br>");
		out.println("URI : " + uri + "<br>");
		out.println("--------------------------------------------------------<br>");
		
		out.println("</body>");
		
		out.println("</head>");
	
		out.println("</html>");
		
		
		out.flush();
		out.close();
		
		System.out.println("id: " + id);
		System.out.println("mothod: " + method);
		System.out.println("url: " + url.toString());
		System.out.println("uri: " + uri);
	}
	//request : 요청을 처리하는 변수 response: 응답을 처리하는 변수
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id"); //return타입은 모두 string이다. 날라온 값을 뽑아 낼 때는 getParameter 함수를 사용한다. 
		String method = request.getMethod();
		StringBuffer url = request.getRequestURL();
		String uri = request.getRequestURI();	
		
		response.setContentType("text/html; charset=utf-8");
		//내가 지금 응답하려는 타입이 html문서이고 그 타입을 utf-8로 표현하라. 
		
		PrintWriter out = response.getWriter();
		
		
		out.println("<html>");
		
		out.println("<head>");
		
		out.println("<title>메소드 호출방식</title>");		
		out.println("<body>");
		out.println("--------------------------------------------------------<br>");
		out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;출력결과 <br>");
		out.println("--------------------------------------------------------<br>");
		out.println("파라미터(id) : " + id + "<br>");
		out.println("요청방식 : " + method + "<br>");
		out.println("URL : " + url.toString() + "<br>");
		out.println("URI : " + uri + "<br>");
		out.println("--------------------------------------------------------<br>");
		
		out.println("</body>");
		
		out.println("</head>");
	
		out.println("</html>");
		
		
		out.flush();
		out.close();
		
		System.out.println("id: " + id);
		System.out.println("mothod: " + method);
		System.out.println("url: " + url.toString());
		System.out.println("uri: " + uri);
	}
	
	
	
}
