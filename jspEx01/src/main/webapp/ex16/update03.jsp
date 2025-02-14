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
	<form action="update03_process.jsp" method="post">
		<p> 변경전 학과명 : <input type="text" name="dept">
		<p> 변경후 학과명 : <input type="text" name="dept2">
		<p> <input type="submit" value="전송">
	</form>
</body>
</html>