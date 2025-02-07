<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
	    var pw_passed = true;
	    function checkPasswd() {
			var id = document.getElementById("id").value;
			var passwd = document.getElementById("passwd").value;
			var passwdCheck = document.getElementById("passwd_checked").value;
			pw_passed = true;
			
			var pattern1 = /[0-9]/;
			var pattern2 = /[a-zA-Z]/;
			var pattern3 = /[~!@\#$%<>^&*]/;
			var pw_msg = "";
			
			if (id.length == 0) {
				alert("아이디를 입력해주세요.");
				return false;
			}
			if (passwd.length == 0) {
				alert("비밀번호를 입력해주세요.");
				return false;
			}else {
				if(passwd != passwdCheck){
					alert("비밀번호가 일치하지 않습니다.");
					return false;
				}
			}
			
			if(!pattern1.test(passwd)||!pattern2.test(passwd)||!pattern3.test(passwd)||passwd.length < 8 || passwd.length > 50){
				alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
				return false;
			}
			
			document.LoginForm.submit();
	    }
	  </script>
</head>
<body>
	<form action="validation06_process.jsp" method="post" name="LoginForm">
		<p> 아이디 : <input type="text" name="id" id="id">
		<p> 비밀번호 : <input type="password" name="passwd" id="passwd">
		<p> 비밀번호 확인 : <input type="password" name="passwd_checked" id="passwd_checked">
		<p> <input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>