<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		String before = request.getParameter("dept");
		String after = request.getParameter("dept2");
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "select * from student where depart = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, before);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String depart = rs.getString("depart");
				
				if(before.equals(depart)) {
					sql = "update student set depart = ? where depart = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, after);
					pstmt.setString(2, before);
					pstmt.executeUpdate();
					out.println("student 테이블을 수정했습니다.");
				} else {
					out.println("일치하는 depart가 없습니다.");
				}
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
</body>
</html>