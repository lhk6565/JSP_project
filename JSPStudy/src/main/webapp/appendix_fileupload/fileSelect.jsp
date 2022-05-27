<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> File Upload </title>
</head>
<body>
	Home > Upload
	<hr>
	<form method="post" enctype="multipart/form-data" action="viewPage.jsp">
		<fieldset style="width:300px">
			<legend>파일선택</legend><P>
				사용자 이름 : 
				<input type="text" name="user"><br><br>
				<div align="center">
					파일 업로드
				</div>
				<hr>
				<input type="file" name="uploadFile"><br>
				<hr>
			<div align="center">
				<input type="submit" value="Upload">&nbsp;
				<input type="reset" value="Cancel">
			</div>
		</fieldset>
	</form>
</body>
</html>