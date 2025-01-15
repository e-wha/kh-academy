<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서테이블 보기</title>
</head>
<body>
	<table border="1">
		<tr>
			<td colspan="3">부서테이블</td>
		</tr>
		<c:forEach var="dept" items="${select}" step="1">
			<tr>
				<td>${dept.deptno}</td>
				<td>${dept.dname}</td>
				<td>${dept.loc}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>