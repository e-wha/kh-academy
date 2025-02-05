<%@page import="org.apache.catalina.startup.ClassLoaderFactory.Repository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, org.big.dto.*, org.big.dao.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
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
      <%
      	BookRepository dao = BookRepository.getInstance();
      	ArrayList<Book> listofBooks = dao.getAllBooks(); 
      %>
      <%-- <%=listofBooks %> --%>
      <div class="row align-items-md-stretch text-center">
         <%
            for (int i = 0; i < listofBooks.size(); i++) {
               Book book = listofBooks.get(i);
               String description = book.getDescription();
               if (description != null && description.length() > 60) {
            	   description = description.substring(0, 60);
               }
         %>
         <div class="col-md-4">
            <div class="h-100 p-2">
               <h5><b><%=book.getName() %></b></h5>
               <p><%=book.getAuthor() %>
               <br><%=book.getPublisher() %> | <%=book.getReleaseDate() %>
               <p><%=description %>...
               <p><%=book.getUnitPrice() %>원
               <p> <a href="./book.jsp?id=<%=book.getBookId()%>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
            </div>
         </div>
         <%
            }
         %>
      </div>
      <%@ include file="footer.jsp" %>
   </div>
</body>
</html>