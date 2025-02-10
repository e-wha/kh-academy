<%@page import="java.rmi.server.ServerCloneException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "exception-1_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		if(id == null || "".equals(id) || password == null || "".equals(password)){
			throw new ServletException("요청 파라미터 값이 없습니다.");
		}
	%>
</body>
</html>