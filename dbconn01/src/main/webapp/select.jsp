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
	<h1>부서 및 직원 테이블 보기</h1>
	<table border="1">
		<tr>
			<td colspan="3">부서테이블</td>
		</tr>
		<tr>
			<td>deptno</td>
			<td>dname</td>
			<td>loc</td>
		</tr>
		<c:forEach var="dept" items="${deptSelect}" step="1">
			<tr>
				<td>${dept.deptno}</td>
				<td>${dept.dname}</td>
				<td>${dept.loc}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<table border="1">
		<tr>
			<td colspan="3">직원테이블</td>
		</tr>
		<tr>
			<td>empno</td>
			<td>ename</td>
			<td>job</td>
			<td>mgr</td>
			<td>hiredate</td>
			<td>sal</td>
			<td>comm</td>
			<td>deptno</td>
		</tr>
		<c:forEach var="emp" items="${empSelect}" step="1">
			<tr>
				<td>${emp.empno}</td>
				<td>${emp.ename}</td>
				<td>${emp.job}</td>
				<td>${emp.mgr}</td>
				<td>${emp.hiredate}</td>
				<td>${emp.sal}</td>
				<td>${emp.comm}</td>
				<td>${emp.deptno}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>