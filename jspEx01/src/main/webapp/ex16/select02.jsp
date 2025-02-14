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
	<table width="500" border = "1">
		<tr>
			<th>이름</th>
			<th>학과</th>
			<th>이름</th>
			<th>주소</th>
			<th>연락처</th>
		</tr>
		<tr>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from student";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					String num = rs.getString("num");
					String dept = rs.getString("depart");
					String name = rs.getString("name");
					String address = rs.getString("address");
					String phone = rs.getString("phone");
			%>
			<td><%=num %></td>
			<td><%=dept %></td>
			<td><%=name %></td>
			<td><%=address %></td>
			<td><%=phone %></td>
			</tr>
			<%
				}
			%>
			<%
				if (rs != null)
					rs.close();
				if (pstmt != null) 
					pstmt.close();
				if (conn != null) 
					conn.close();
			%>
	</table>
</body>
</html>