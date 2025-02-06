<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		function checkLogin() {
			var form = document.LoginForm;
			if(form.id.value == ""){
				alert("아이디를 입력하세요");
				form.id.focus();
				return false;
			} else if (form.passwd.value == ""){
				alert("패스워드를 입력하세요.");
				form.passwd.focus();
				return false;
			}
		}
	</script>
</head>
<body>

	<form action="validation01_process.jsp" method="post" name="LoginForm">
		<p> 아 이 디 : <input type="text" name="id"> </p>
		<p> 비밀번호 : <input type="password" name="passwd"></p>
		<p> <input type="button" value="전송" onclick="checkLogin()"></p>
	</form>
</body>
</html>