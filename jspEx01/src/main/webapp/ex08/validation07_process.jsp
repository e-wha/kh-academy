<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>validation07_process.jsp</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String passwd_checked = request.getParameter("passwd_checked");
		
		out.println("아이디 : " + id);
		out.println("비밀번호 : " + passwd);
		out.println("비밀번호 확인 : " + passwd_checked);
	%>
</body>
</html>