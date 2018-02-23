package kr.co.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/servlet/table")
public class table extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strRow = request.getParameter("row");
		String strCol = request.getParameter("col");
		
		int row = 5;
		if(strRow != null) {
			row = Integer.parseInt(strRow);
		}
		
		int col = strCol == null ? 5 : Integer.parseInt(strCol);
		//위의 말과 같아
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML>");
		out.println("	<HEAD>");
		out.println("		<TITLE> 테이블 생성 </TITLE>");
		out.println("	</HEAD>");
		out.println("	<BODY>");
		out.println("	<TABLE border='1'>");
		for(int i=0 ; i < row ; i++) {
			out.println("<TR>");
				for(int j=0 ; j<col ; j++) {
					out.println("<TD>");
					out.println("</TD>");
				}
			out.println("</TR>");
		}
		out.println("	</TABLE>");
		out.println("	</BODY>");
		out.println("</HTML>");
		
		out.close();
		
	}
	
	

}
