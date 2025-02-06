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
			if (!isNaN(form.id.value.substr(0, 1))){
				alert("아이디는 숫자로 시작할 수 없습니다.");
				form.id.select();
				return false;
			} else if (!isNaN(form.passwd.value.substr(0, 1))){
				alert("패스워드는 숫자로 시작할 수 없습니다.");
				form.passwd.select();
				return false;
			}
			form.submit();
		}
	</script>
</head>
<body>
	<form action="validation03_process.jsp" method="post" name="LoginForm">
		<p> 아 이 디 : <input type="text" name="id"> </p>
		<p> 비밀번호 : <input type="password" name="passwd"></p>
		<p> <input type="button" value="전송" onclick="checkLogin()"></p>
	</form>
</body>
</html>