package org.big.filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class AuthenFilter implements Filter{
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter01 초기화...");
	}
	

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter01.jsp 수행...");
		String name = req.getParameter("");
		
		if (name == null || name.equals("name")) {
			resp.setCharacterEncoding("utf-8");
			resp.setContentType("text/html; charser=UTF-8");
			PrintWriter writer = resp.getWriter();
			String message = "입력된 name 값은 null입니다.";
			writer.println(message);
			return;
		}
		filterChain.doFilter(req, resp);
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("Filter01 해제...");
	}
	
}
