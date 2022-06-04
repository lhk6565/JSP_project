<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 관리자 로그인 </title>
</head>
<body>
	<%
		String u_id = request.getParameter("userID");
		String u_pw = request.getParameter("userPW");
		String u_name = request.getParameter("username");
		String stu_id = request.getParameter("student_ID");
		String u_major = request.getParameter("major");
		String u_gr = request.getParameter("grade");
		String u_phone = request.getParameter("phone");
		String u_mail = request.getParameter("userMAIL");
		
		String sql = "INSERT INTO user(user_id, user_pw, name, stu_id, major, grade, phone, email) VALUES";
		sql += "('" + u_id + "','" + u_pw + "','" + u_name + "','" + stu_id + "','" + u_major + "','" + 
				u_gr + "','" + u_phone + "','" + u_mail + "')";
		
		String driverName="com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/odbo2";
		String username = "root";
		String password = "123456";
		Connection conn = null;
		
		Class.forName(driverName);
		conn = DriverManager.getConnection(url, username, password);
		Statement sm = conn.createStatement();
		
		int count = sm.executeUpdate(sql);
		if(count==1){
			out.println("회원 가입 성공!");
		}else{
			out.println("회원 가입 실패!");
		}
		sm.close();
		conn.close();
	%>
	<table>
		<tr>
			<td>
				<form action="main.jsp" method="post">
					<input type="submit" value=" 메인 페이지로 이동 ">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>