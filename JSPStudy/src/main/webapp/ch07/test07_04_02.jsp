<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 7장 연습문제 4-2 </title>
</head>
<body>
	Home > 쿠키 생성 및 로그인 성공
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String u_id = request.getParameter("id");
		String u_pw = request.getParameter("pw");
		
		if(u_id.equals("cosmos") && u_pw.equals("888888")){
			Cookie cooks_id = new Cookie("userID", "u_id");
			Cookie cooks_pw = new Cookie("userPW", "u_pw");
			response.addCookie(cooks_id);
			response.addCookie(cooks_pw);
			out.println("쿠키를 생성하였습니다. <br>");
			out.println("[ " + u_id + " ]님이 입장하였습니다. <p>");
		}
	%>
	<form action="test07_05_01.jsp" method="post">
	<input type="submit" value=" <<로그아웃<< ">
	</form>
</body>
</html>