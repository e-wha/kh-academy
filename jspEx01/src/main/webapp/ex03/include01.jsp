<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="include01_header.jsp" %>
	<c:out value="JSTL core 태그 라이브러리"></c:out>
	<c:forEach var = "k" begin = "1" end = "10" step = "1">
		<c:out value="${k}"></c:out><br>
	</c:forEach>
	<% 
		for(int i = 1; i < 11; i++){
			out.print(i);
		}
	%>
	
</body>
</html>