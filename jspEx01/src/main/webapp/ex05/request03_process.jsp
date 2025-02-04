<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		request.setCharacterEncoding("utf-8");
		String value = request.getQueryString();
		out.println("전송된 파라미터 : " + URLDecoder.decode(value));
	%>
	
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	%>
	<p>전송된 파라미터 : 
	<%
		out.println(id + " " + passwd);
	%>
</body>
</html>