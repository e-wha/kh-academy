package org.big.controller;

import java.io.IOException;

import org.big.service.DeptInsertServiceImpl;
import org.big.service.DeptService;
import org.big.service.EmpInsertServiceImpl;
import org.big.service.EmpSelectServiceImpl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class EmpFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String reqURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String serv = reqURI.substring(contextPath.length());
		System.out.println("contextPath = " + serv);
		
		DeptService service = null;
		String nextPage = null;
		
		if (serv.equals("/empSelect.do")) {
			service = new EmpSelectServiceImpl();
			service.execute(req, resp);
			nextPage = "select.jsp";
		}
		
		if (serv.equals("/empInsertData.do")) {
			nextPage = "empInsert.jsp";
		}
		
		if (serv.equals("/empInsert.do")) {
	         service = new EmpInsertServiceImpl();
	         service.execute(req, resp);
	         nextPage = "empSelect.do";
	      }
		
		RequestDispatcher dis = req.getRequestDispatcher(nextPage);
		dis.forward(req, resp);
	}
}
