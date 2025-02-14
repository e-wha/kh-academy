<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
		
		if (id.equals("admin") && passwd.equals("admin1234")) {
			session.setAttribute("userID", id);
			response.sendRedirect("welcome.jsp");
		}else {
			out.println("아이디와 비밀번호를 확인해주세요.");
		}
%>
<p> <a href="session.jsp"> 돌아가기 </a>