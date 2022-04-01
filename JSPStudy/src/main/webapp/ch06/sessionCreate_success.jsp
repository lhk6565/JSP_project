<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 세션 생성 </title>
</head>
<body>
	Home > 세션 생성하기
	<hr>
	<%
		String u_id = request.getParameter("id");
		String u_pw = request.getParameter("passwd");
		
		if(u_id.equals("space") && u_pw.equals("123456")){
			session.setAttribute("memberID", u_id);
			session.setAttribute("memberPW", u_pw);
			
			out.println("새로운 세션 생성 성공 !<br>");
			out.println("[" + u_id + "]님이 입장하였습니다.");
		}
		else{
			out.println("세션 생성 실패 !<br>");
			out.println("다시 시도해 보세요.");
		}
	%>
</body>
</html>