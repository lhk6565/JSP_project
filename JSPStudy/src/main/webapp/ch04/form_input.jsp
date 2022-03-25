<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 개인 정보 입력 </title>
</head>
<body>
	Home > Personal Information
	<hr>
	<form action = "#" method = "get">
		이름 : <br>
			<input type = "text" name = "p_name" size = "10"> <br><br>
		사원코드 : <br>
			<input type = "text" name = "E_name" size = "10"> <br><br>
		성별 : <br>
			<input type = "radio" name = "gender">남 
			<input type = "radio" name = "gender">여 <br><br>
		취미 : <br>
			<input type = "checkbox" name = "hobby1">운동
			<input type = "checkbox" name = "hobby2">독서
			<input type = "checkbox" name = "hobby3">음악감상 <br>
		<hr> &nbsp;
		
		<input type = "submit" value = "가입하기"> &nbsp;
		&nbsp; <input type = "reset" value = "다시작성">
	</form>
</body>
</html>