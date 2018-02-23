package kr.co.bit.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet; //톰캣이 있으면 된다나 뭐라나... 흑흑...뭔말인지...
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
//	public void init(ServletConfig config) throws ServletException{
//		System.out.println("init: 한 번만 실행되는 메소드입니다.");
//	}
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		System.out.println("service: 실제 작업이 수행되는 메소드입니다.");
		System.out.println("service: 사용자가 요청할 때마다 호출되는 메소드입니다.");
	}
	@Override
	public void destroy() {
		
	}

}
