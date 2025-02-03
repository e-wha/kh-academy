<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	현재날짜 : <%=new Date() %><br>
	5의 제곱 " <%=Math.pow(5, 2) %>"<br>
	<%
		out.println("5의 제곱 : " + (5*5));
	%>
</body>
</html>