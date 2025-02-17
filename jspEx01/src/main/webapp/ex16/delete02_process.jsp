<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String dept = request.getParameter("dept");
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		String sql = "select * from student where depart = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dept);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			sql = "delete from student where depart = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dept);
			pstmt.executeUpdate();
			out.println("member 테이블의 " + dept + "를 삭제했습니다.");
		}
		else {
			out.println("일치하는 학과명이 없습니다.");
		}
	} catch (SQLException ex) {
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