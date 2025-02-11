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
	<h4>------세션을 삭제하기 전------</h4>
	<%
		String id = (String)session.getAttribute("id");
		String passwd = (String)session.getAttribute("passwd");
		
		out.println("설정된 세션의 속성 값 [1] : " + id + "<br>");
		out.println("설정된 세션의 속성 값 [2] : " + passwd + "<br>");
		
		session.removeAttribute("id");
	%>
	<h4>------세션을 삭제하기 후------</h4>
	<%
		id = (String)session.getAttribute("id");
		passwd = (String)session.getAttribute("passwd");
		
		out.println("설정된 세션의 속성 값 [1] : " + id + "<br>");
		out.println("설정된 세션의 속성 값 [2] : " + passwd + "<br>");
		
	%>
</body>
</html>