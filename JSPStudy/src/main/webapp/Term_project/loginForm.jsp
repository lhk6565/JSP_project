
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> login Form </title>
<script type="text/javascript">
	function checkFn(){
		var f = document.loginForm;
		if(!f.user_id.value){
			alert("아이디를 입력하세요.");
			f.user_id.focus();
			return false;
		}
		if(!f.user_pw.value){
			alert("비밀번호를 입력하세요.");
			f.user_pw.focus();
			return false;
		}
	}
	function usersignup(){
		document.location.href="usersignup.jsp";
	}
</script>
</head>
<body>
	<form name="loginForm" action="login_process.jsp" method="post" style="width:100%" onsubmit="return checkFn()">
		<fieldset>
			<div align="center">
				<div>
					<input type="text" name="user_id" placeholder="아이디" style="width:100%;height:15px"><br>
				</div>
				<div>
					<input type="password" name="user_pw" placeholder="비밀번호" style="width:100%;height:15px">
				</div><br>
			</div>
			<div align="center">
				<input type="submit" value="로그인"> &nbsp;
				<input type="button" value="회원가입" onclick="usersignup()">
			</div>
		</fieldset>	
	</form>
</body>
</html>