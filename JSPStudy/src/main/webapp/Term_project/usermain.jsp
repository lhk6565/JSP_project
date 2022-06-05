<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 유저 메인 </title>
</head>
<body>
	<form name="userForm" action="logout_process.jsp" method="post" style="width:100%">
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
				<input type="submit" value="로그아웃">
			</div>
		</fieldset>	
	</form>
</body>
</html>