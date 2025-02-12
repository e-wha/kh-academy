<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
		String name = request.getParameter("name");
		
		Statement stmt = null;
		
		try {
			String sql = "insert into member(id, passwd, name) values('" + id + "', '" + passwd + "', '" + name + "')";
			
					
		}
	%>
</body>
</html>