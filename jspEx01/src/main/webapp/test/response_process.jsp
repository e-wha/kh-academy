<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	if (id.equals("admin") && passwd.equals("1234")) {
		response.sendRedirect("response_success.jsp");
	} else {
		response.sendRedirect("response_failed.jsp");
	}
%>