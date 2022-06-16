<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 유저 메인 </title>
<script>
	function logout(){
		alert("로그아웃 되었습니다.")
	}
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String u_id = (String) session.getAttribute("memberID");
		
		Statement sm = conn.createStatement();
		
		String sql = "SELECT name, stu_id, major, grade FROM user WHERE user_id = '" + u_id + "'";
		
		ResultSet rs = sm.executeQuery(sql);
		rs.next();
	%>
	<form name="userForm" action="logout_process.jsp" method="post" style="width:100%">
		<fieldset>
			<div align="center">
				<table>
					<tr>
						<td>
							이름 : <%=rs.getString("name") %>&nbsp;
						</td>
						<td>
							학번 : <%=rs.getString("stu_id") %>
						</td>
					</tr>
					<tr>
						<td>
							학과 : <%=rs.getString("major") %>&nbsp;
						</td>
						<td>
							학년 : <%=rs.getString("grade") %>
						</td>
					</tr>
				</table>
			</div>
			<div align="center">
				<input type="submit" value="로그아웃" onclick="logout()">
			</div>
		</fieldset>	
	</form>
</body>
</html>