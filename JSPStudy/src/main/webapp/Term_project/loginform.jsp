<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> login Form </title>
</head>
<body>
	<form action="login_process.jsp" method="post">
		<div>
			<div>
				<input type="text" name="id" placeholder="아이디"><br>
			</div>
			<div>
				<input type="password" name="password" placeholder="비밀번호">
			</div>
		</div>
		<div>
			<input type="button" value="로그인">
		</div>
	</form>
</body>
</html>