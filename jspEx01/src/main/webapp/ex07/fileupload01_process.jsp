<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.io.*, com.oreilly.servlet.*, com.oreilly.servlet.multipart.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>fileupload01_process.jsp</h3>
	<%
		MultipartRequest multi = new MultipartRequest(request, "C:\\git\\java\\jspEx01\\src\\main\\webapp\\upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
		
		Enumeration files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			String name = (String)files.nextElement();
			String filename = multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			File file = multi.getFile(name);
			
			out.println(name + "<br>");
			out.println(filename + "<br>");
			out.println(original + "<br>");
			out.println(type + "<br>");
			out.println(file + "<br>");
			
			if(file != null) {
				out.println("파일 크기 : " + file.length() + "<br>");
			}
		}
		
	%>
</body>
</html>