<%@page import="java.util.Enumeration"%>
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
		
		Enumeration paramNames = request.getParameterNames();
		StringBuffer buffer = new StringBuffer();
		while (paramNames.hasMoreElements()) {
			String name = (String) paramNames.nextElement();
			String paramValue = request.getParameter(name);
			buffer.append("<p>" + name + " : " + paramValue);
		}
		out.println(buffer.toString());
	%>
</body>
</html>