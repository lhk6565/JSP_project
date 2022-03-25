<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3장 연습문제 8번</title>
</head>
<body>
	<h3> 테이블 셀 합치기 </h3>
	<hr>
	<table border = '3' width = '80%'>
		<tr	bgcolor = 'CCFFAA'>
			<th width = '30%'> 수강 신청 과목 </th> <th> 신청 학과 </th> <th> 신청 인원 </th>
		</tr>
		<tr>
			<td rowspan = '2'> 데이터베이스 </td> <td> 소프트웨어학과 </td> <td align = 'center'> 123 </td>
		</tr>
		<tr>
			<td> 기상정보예측학과 </td> <td align = 'center'> 38 </td>
		</tr>
	</table>
</body>
</html>