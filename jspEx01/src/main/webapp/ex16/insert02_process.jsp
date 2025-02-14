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
	<%@ include file = "dbconn.jsp" %>
	<%	
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String dept = request.getParameter("dept");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "insert into student(num, depart, name, address, phone) values(?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, dept);
			pstmt.setString(3, name);
			pstmt.setString(4, address);
			pstmt.setString(5, phone);
			pstmt.executeUpdate();
			out.println("student 테이블에 삽입이 성공했습니다.");
		} catch (SQLException ex) {
			out.println("student 테이블 삽입이 실패했습니다. <br>");
			out.println("SQLexception : " + ex.getMessage());
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null) 
				pstmt.close();
			if (conn != null) 
				conn.close();
		}
	%>
</body>	
</html>