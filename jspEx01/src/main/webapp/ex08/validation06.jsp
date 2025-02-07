<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		var pw_passed = true;
		function checkLogin() {
			
			var id = document.getElementById("id").value;
	        var passwd = document.getElementById("passwd").value;
	        var passwdCheck = document.getElementById("passwd_checked").value;
	        pw_passed = true;
			
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
	        
			var sameChar = 0;
	        var sequenceCnt1 = 0;
	        var sequenceCnt2 = 0;
	        
	        for (var i = 0; i < passwd.length; i++) {
	           var ch0;
	           var ch1;
	           var ch2;
	           
	           if(i >= 2){
	              ch0 = passwd.charCodeAt(i -2);
	              ch1 = passwd.charCodeAt(i -1);
	              ch2 = passwd.charCodeAt(i);
	              
	              if((ch0 == ch1) && (ch1 == ch2)){
	                 sameChar++;
	              }else {
	                 sameChar = 0;
	              }
	              
	              if(ch0 -ch1 == 1 && ch1 - ch2 == 1){
	                 sequenceCnt1++;
	              }else {
	                 sequenceCnt1 = 0;
	              }
	              
	              if(ch0 -ch1 == -1 && ch1 - ch2 == -1){
	                 sequenceCnt2++;
	              }else {
	                 sequenceCnt2 = 0;
	              }
	           }
	           
	           if(sameChar > 0){
	              alert("동일 문자를 3자 이상 연속 입력할 수 없습니다.");
	              pw_passed = false;
	           }
	           
	           if(sequenceCnt1 > 0 || sequenceCnt2 > 0){
	              alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
	              pw_passed = false;
	           }
	           
	           if(!pw_passed){
	              return false;
	              break;
	           }
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