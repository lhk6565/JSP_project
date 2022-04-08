<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 6장 연습문제 4-1 </title>
</head>
<body>
	Home > 로그인 폼 화면
	<hr>
	<form name="loginform" action="test06_04_02.jsp" method="post">
	아이디 : <br>
	<input type="text" name="id"><br><br>
	비밀번호 : <br>
	<input type="password" name="pw"><br><br>
	<input type="submit" value="Login"> &nbsp;
	<input type="reset" value="Cancel">
	</form>
</body>
</html>