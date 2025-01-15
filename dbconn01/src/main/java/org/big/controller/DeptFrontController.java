package org.big.controller;

import java.io.IOException;

import org.big.service.DeptSelectServiceImpl;
import org.big.service.DeptService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class DeptFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String reqURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String serv = reqURI.substring(contextPath.length());
		System.out.println("contextPath = " + serv);
		
		DeptService service = null;
		String nextPage = null;
		
		if (serv.equals("/dept/select.do")) {
			service = new DeptSelectServiceImpl();
			service.execute(req, resp);
			nextPage = "select.jsp";
		}
		RequestDispatcher dis = req.getRequestDispatcher(nextPage);
		dis.forward(req, resp);
		
	}
}
