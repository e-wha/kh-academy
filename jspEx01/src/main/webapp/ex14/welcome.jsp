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
		Cookie[] cookies = request.getCookies();
		if(request.getCookies() == null) {
			response.sendRedirect("cookie_out.jsp");
		}
		
		for(int i = 0; i < cookies.length; i++) {
			if (cookies[i].getValue() != null) {
	%>
	<h3><%=cookies[i].getValue() %> 반갑습니다.</h3>
	<%
			}
		}
	%>
	<a href="cookie_out.jsp">로그아웃</a>
</body>
</html>