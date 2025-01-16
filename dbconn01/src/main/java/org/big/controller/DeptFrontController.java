package org.big.controller;

import java.io.IOException;

import org.big.service.DeptInsertServiceImpl;
import org.big.service.DeptSelectServiceImpl;
import org.big.service.DeptService;
import org.big.service.DeptUpdateServiceImpl;
import org.big.service.EmpInsertServiceImpl;

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
		
		if (serv.equals("/deptSelect.do")) {
			service = new DeptSelectServiceImpl();
			service.execute(req, resp);
			nextPage = "select.jsp";
		}
		
		if (serv.equals("/insertData.do")) {
				nextPage = "insert.jsp";
		}
		
		if (serv.equals("/insert.do")) {
	         service = new DeptInsertServiceImpl();
	         service.execute(req, resp);
	         nextPage = "/deptSelect.do";
	      }
		
		if (serv.equals("/empInsertData.do")) {
			nextPage = "empInsert.jsp";
		}
		
		if (serv.equals("/empInsert.do")) {
	         service = new EmpInsertServiceImpl();
	         service.execute(req, resp);
	         nextPage = "deptSelect.do";
	    }
		
		if (serv.equals("/updateData.do")) {
	         nextPage = "update.jsp";
	    }
		
		if (serv.equals("/update.do")) {
	         service = new DeptUpdateServiceImpl();
	         service.execute(req, resp);
	         nextPage = "deptSelect.do";
	    }

		
		RequestDispatcher dis = req.getRequestDispatcher(nextPage);
		dis.forward(req, resp);
		
	}
}
