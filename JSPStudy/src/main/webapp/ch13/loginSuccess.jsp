<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 관리자 로그인 </title>
</head>
<body>
	HOME > 관리자 로그인
	<hr>
	<%
		String u_id = request.getParameter("uID");
		String u_pw = request.getParameter("uPW");
		
		if(u_id.equals("space") && u_pw.equals("123456")){
			session.setAttribute("memberID", u_id);
			session.setAttribute("memberPW", u_pw);
			
			out.println("새로운 세션 생성 성공 !<br>");
			out.println("[" + u_id + "]님이 입장하였습니다.");
		}
		else{
			response.sendRedirect("loginErr.jsp");
		}
	%>
	<table border="0">
		<tr>
			<td>
				<form action="memberList.jsp" method="post">
					<input type="submit" value=" ◀ 등록 회원 관리하기 ">
				</form>
			</td>
			<td>
				<form action="logout.jsp" method="post">
					<input type="submit" value=" 로그 아웃 ▶">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>