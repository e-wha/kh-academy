<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="form09_process.jsp" method="post">
		오렌지 <input type="checkbox" name="fruits" value="Orange" checked="checked">
		사과 <input type="checkbox" name="fruits" value="Apple">
		바나나 <input type="checkbox" name="fruits" value="Banana">
		<input type="submit" value="전송">
	</form>
</body>
</html>