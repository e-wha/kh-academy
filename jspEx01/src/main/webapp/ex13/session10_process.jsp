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
		String passwd = request.getParameter("passwd");
		
		if (id.equals("admin") && passwd.equals("1234")) {
			session.setAttribute("userID", id);
			response.sendRedirect("welcome.jsp");
		} else {
			out.println("아이디와 비밀번호를 확인하세요.");
		}
	
	%>
</body>
</html>