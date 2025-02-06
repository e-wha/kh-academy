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
			if (form.id.value.length < 4 || form.id.value.length > 12){
				alert("아이디를 4~12자 이내로 입력해주세요.");
				form.id.select();
				return false;
			} else if (form.passwd.value.length < 4){
				aalert("패스워드를 4자 이상으로 입력해주세요.");
				form.passwd.select();
				return false;
			}
			form.submit();
		}
	</script>
</head>
<body>

	<form action="validation02_process.jsp" method="post" name="LoginForm">
		<p> 아 이 디 : <input type="text" name="id"> </p>
		<p> 비밀번호 : <input type="password" name="passwd"></p>
		<p> <input type="button" value="전송" onclick="checkLogin()"></p>
	</form>
</body>
</html>