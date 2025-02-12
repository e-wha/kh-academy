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
			Cookie cookie_passwd = new Cookie("passwd", passwd);
			response.addCookie(cookie_id);
			response.addCookie(cookie_passwd);
			out.println("쿠키 설정이 성공했습니다.<br>");
			out.println(id + "님 환영합니다.");
		}else {
			out.println("쿠키 설정이 실패했습니다.");
		}
	%>
</body>
</html>