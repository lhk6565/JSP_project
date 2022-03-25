<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Free Board </title>
</head>
<body>
	Home > Free Board
	<hr>
	<form action = "#" method = "get">
		<fieldset style = "width:200px">
			<legend> 자유게시판 </legend><p>
				<textarea class="message_area" cols="30" rows="3" placeholder="input text"></textarea>
				<div align="center">
					<input type = "submit" value= " 전송 "> &nbsp;
					<input type = "reset" value= " 취소 ">
				</div>
		</fieldset>
	</form>
</body>
</html>