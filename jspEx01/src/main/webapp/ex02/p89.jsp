<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@	page import="java.util.Date" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ContentType 디렉티브 태그</h2>
	today is <%=new Date() %>
	info <%=getServletInfo() %>
	<%
		String str = "jsp테스트";
		out.println(str.toString());
		
		request.setAttribute("RequestAttribute", "request 내장객체");
	%>
</body>
</html>