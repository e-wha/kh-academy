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
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
		
		if (id.equals("admin") && passwd.equals("1234")) {
			Cookie cookie_id = new Cookie("id", id);
			cookie_id.setMaxAge(60 * 60);
			response.addCookie(cookie_id);
			response.sendRedirect("welcome.jsp");
		}else {
			
		}
	%>
</body>
</html>