<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4장 연습문제 5번</title>
</head>
<body>
	자기 소개서 폼 작성
	<hr>
	<form action="#" method="get">
		<fieldset style="width:300px">
			<legend>개인 정보</legend>
			닉네임 :
			<input type="text" name="p_name">&nbsp;<input type="button" value="중복검사"><p>
			성별 :
			<input type="radio" name="gender">남
			<input type="radio" name="gender">여<p>
			게임장르 :
			<input type="checkbox" name="chk1">액션
			<input type="checkbox" name="chk2">퍼즐
			<input type="checkbox" name="chk3">전략
			<input type="checkbox" name="chk4">리듬<p><p>
			<hr>
			혈액형 :
			<select>
			<option value="choice">=== 선택 ===</option>
			<option value="A">A형</option>
			<option value="B">B형</option>
			<option value="O">O형</option>
			<option value="AB">AB형</option>
			<option value="none">모름</option>
			</select><p>
			자기소개 : <br>
			<textarea name="introduction" cols="50" rows="5"></textarea><p>
		<div align="center">
		<input type="submit" value="제출하기"> &nbsp;
		<input type="reset" value="다시작성">
		</div>
		</fieldset>
	</form>
</body>
</html>