package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/pinfoResult")
public class PInfoServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String sex = request.getParameter("sex");
		String notice = request.getParameter("notice");
		String add = request.getParameter("add");
		String delivery = request.getParameter("delivery");
		
		String job = request.getParameter("job");
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title> 개인정보화면 </title>");
		out.println("<body>");
		out.println("<h1>개인정보출력</h1>");
		out.println("이름: " + name + "<br>");
		out.println("아이디: " + id + "<br>");
		out.println("암호: " + pass + "<br>");
		out.println("성별: " + sex + "<br>");
		out.println("공지메일: ");
		if(notice == null)	out.println("받지 않음" + "<br>");
		else out.println(notice+"<br>");
		
		out.println("광고메일: ");
		if(add == null)	out.println("받지 않음" + "<br>");
		else out.println(add+"<br>");
		
		out.println("배송확인메일: ");
		if(delivery == null)	out.println("받지 않음" + "<br>");
		else out.println(delivery+"<br>");
		out.println("직업: " + job + "<br>");
		out.println("</body>");
		out.println("</head>");
		out.println("</html>");
		
		out.flush();
		out.close();
		
	}

}
