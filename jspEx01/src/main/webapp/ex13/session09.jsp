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
		HttpSession ssion = request.getSession();
		HttpSession ssion1 = request.getSession(false);
		
		if(ssion == ssion1) {
			out.println("같은 세션");
		}else {
			out.println("다른 세션");
		}
		session.invalidate();
	%>
	
	<%
		HttpSession ssion3 = request.getSession(false);
		if(ssion3 != null) {
			out.println("세션 확인");
		} else {
			out.println("세션 없음");
		}
	%>
</body>
</html>