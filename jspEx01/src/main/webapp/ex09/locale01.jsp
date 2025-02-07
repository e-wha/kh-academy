<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Locale locale = request.getLocale();
		NumberFormat curency = NumberFormat.getCurrencyInstance(locale);
		NumberFormat percentage = NumberFormat.getPercentInstance(locale);
		String fcurency = curency.format(1234567);
		String fpercentage = percentage.format(0.25);
	%>
	<%=locale %><br>
	<%=curency %><br>
	<%=percentage %><br>
	<%=fcurency %><br>
	<%=fpercentage %><br>
</body>
</html>