<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 현재 위치 : param_process.jsp </title>
</head>
<body>
	Home > param.jsp로 부터 정보를 전달받음
	<hr>
	현재 날짜와 시각 : 
	<%= request.getParameter("date") %>
</body>
</html>