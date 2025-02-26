<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, org.big.dao.BookRepository" %>
<%@ page import="org.big.dto.Book" %>       

<%
	String id = request.getParameter("id");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("/bookmarket/books.do");
		return;
	}
	
	BookRepository dao = BookRepository.getInstance();
			
	Book book = dao.getBookById(id);
	if(book == null){
		response.sendRedirect("/bookmarket/exceptionNoBookId.do");
	}
	
	ArrayList<Book>cartList = (ArrayList<Book>)session.getAttribute("cartlist");
	Book goodsQnt = new Book();
	
	for(int i = 0; i< cartList.size(); i++) {
		goodsQnt = cartList.get(i);
		if(goodsQnt.getBookId().equals(id)){
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("/bookmarket/cart.do");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>