<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 6장 연습문제 4-2 </title>
</head>
<body>
	Home > 로그인 접속 완료
	<hr>
	<%
		String u_id = request.getParameter("id");
		String u_pw = request.getParameter("pw");
		session.setAttribute("memberID",u_id);
		session.setAttribute("memberPW",u_pw);
		out.println("[" + u_id + "]님 환영합니다.<hr>");
	%>
	<form action="test06_05.jsp" method="post" target="_blank">
	<input type="submit" value="Logout">
	</form>
</body>
</html>