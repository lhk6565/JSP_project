<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Login Process </title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String u_id = request.getParameter("user_id");
		String u_pw = request.getParameter("user_pw");
		
		Statement sm = conn.createStatement();
		
		String sql = "SELECT user_id, user_pw FROM user WHERE user_id = '" + u_id + "'";
		
		ResultSet rs = sm.executeQuery(sql);
		if(rs.next()){
			if(u_id.equals(rs.getString("user_id")) && u_pw.equals(rs.getString("user_pw"))){
				session.setAttribute("memberID", u_id);
				session.setAttribute("memberPW", u_pw);
				out.println("로그인 성공!");
			}			
		}
		else{
			response.sendRedirect("loginError.jsp");
		}
	%>
	<table>
		<tr>
			<td>
				<form action="main2.jsp" method="get">
					<input type="submit" value=" 메인 페이지로 이동 ">
					<input type="hidden" name="user_id" value=<%=u_id%>>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>