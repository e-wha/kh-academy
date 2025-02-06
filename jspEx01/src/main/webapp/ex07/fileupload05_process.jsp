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
	<%
		MultipartRequest multi = new MultipartRequest(request, "C://git//java//jspEx01//src//main//webapp//upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
	
		String name = (String)files.nextElement();
		String fileName = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("저장 파일 이름 : " + fileName + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("파일 콘텐츠 유형 : " + type + "<br>");
		out.println("파일 콘텐츠 경로 : " + file + "<br>");
		if(file != null) {
			out.println("파일 크기 : " + file.length() + "<br>");
		}
	%>
</body>
</html>