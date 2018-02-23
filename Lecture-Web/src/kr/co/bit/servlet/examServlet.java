package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSeparatorUI;

//@WebServlet("/examMethod")
public class examServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		//String hobby = request.getParameter("hobby"); //제일 처음에 나온 hobby의 value값만 나옴. 그럼 어케해?
		//checkbox는 다중선택인데, 여러개의 값을 어떻게 나오게 할 것인가? => 이럴 땐 getParameterValues를 사용
		String [] hobbies = request.getParameterValues("hobby");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		StringBuilder sb = new StringBuilder();
		sb.append("<HTML>");
		sb.append("	<HEAD>");
		sb.append("		<TITLE>출력결과</TITLE>");
		sb.append("	</HEAD>");
		sb.append("	<BODY>");
		sb.append("		이름: " + name + "<br>");
		sb.append("		취미: ");
		//for(String hobby : hobbies) {
//			sb.append(hobby + ",");
//		}
		
		for(int i=0; i<hobbies.length; i++) {
			if(i!=0)
				sb.append(", &nbsp;");
			sb.append(hobbies[i]);
		}
		
		
		sb.append("	</BODY>");
		sb.append("</HTML>");
		
		
		out.println(sb.toString());
		out.close();
		
		
		
		
	}

	

}
