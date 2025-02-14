<%@page import="org.apache.catalina.startup.ClassLoaderFactory.Repository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, org.big.dto.*, org.big.dao.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 목록</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container py-4">
		<%@ include file="menu.jsp" %>
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">도서목록</h1>
				<p class="col-md-8 fs-4">BookList</p>
			</div>
		</div>
		<%@ include file = "dbconn.jsp" %>
		
      <%-- <%
      	BookRepository dao = BookRepository.getInstance();
      	ArrayList<Book> listofBooks = dao.getAllBooks(); 
      %> --%>
      <%-- <%=listofBooks %> --%>
      <div class="row align-items-md-stretch text-center">
         <%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from book";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
		%>
         <%-- <%
            for (int i = 0; i < listofBooks.size(); i++) {
               Book book = listofBooks.get(i);
               String description = book.getDescription();
               if (description != null && description.length() > 60) {
            	   description = description.substring(0, 60);
               }
         %> --%>
         <div class="col-md-4">
            <div class="h-100 p-2">
               <img alt="image.jpg" src="./resources/images/<%=rs.getString("b_filename") %>" style="width:250; height: 350">
               <h5><b><%=rs.getString("b_name") %></b></h5>
               <p><%=rs.getString("b_author") %>
               <br><%=rs.getString("b_publisher") %> | <%=rs.getString("b_unitPrice") %>
               <p><%=rs.getString("b_description").substring(0, 60) %>...
               <p><%=rs.getString("b_unitPrice") %>원
               <p> <a href="./book.jsp?id=<%=rs.getString("b_id")%>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
            </div>
         </div>
         <%
			}
			if (rs != null)
				rs.close();
			if (pstmt != null) 
				pstmt.close();
			if (conn != null) 
				conn.close();
         %>
      </div>
      <%@ include file="footer.jsp" %>
   </div>
</body>
</html>