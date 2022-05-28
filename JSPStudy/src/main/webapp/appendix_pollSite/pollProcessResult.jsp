<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	int q_id = Integer.parseInt(request.getParameter("q_id"));

	String answer = request.getParameter("fruit");

	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/poll";
	String username = "root";
	String password = "123456";
	Connection conn = null;
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);
	
	Statement sm = conn.createStatement();
	String sql;
	
	if(answer != null){
		sql = "SELECT " + answer + " FROM options WHERE qid=" + q_id;
		ResultSet rs_ori = sm.executeQuery(sql);
		rs_ori.next();
		int ans_cnt = rs_ori.getInt(answer)+1;
		sql = "UPDATE options SET " + answer + "=" + ans_cnt + " WHERE qid=" + q_id;
		int count = sm.executeUpdate(sql);
	}
	
	sql = "SELECT qid, question, answer1, answer2, answer3, answer4, answer5, ";
	sql += "answercnt1, answercnt2, answercnt3, answercnt4, answercnt5 ";
	sql += "FROM options WHERE qid=" + q_id;
	ResultSet rs = sm.executeQuery(sql);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 설문 조사 사이트 </title>
	<script type="text/javascript">
		function viewPollList(){
			document.location.href = "viewPollList.jsp";
		}
	</script>
</head>
<body>
	설문조사
	<hr>
	<form action="pollProcess.jsp" method="post">
		<fieldset style="width:300px">
			<legend> 설문 결과 </legend><p>
			<%=rs.getString("question")%><hr>
			
			<table style="width:150px">
				<tr>
					<td><%=rs.getString("answer1")%></td>
					<td>:&nbsp;&nbsp;<%=rs.getInt("answercnt1") %></td>
				</tr>
				<tr>
					<td><%=rs.getString("answer2")%></td>
					<td>:&nbsp;&nbsp;<%=rs.getInt("answercnt2") %></td>
				</tr>
				<tr>
					<td><%=rs.getString("answer3")%></td>
					<td>:&nbsp;&nbsp;<%=rs.getInt("answercnt3") %></td>
				</tr>
				<tr>
					<td><%=rs.getString("answer4")%></td>
					<td>:&nbsp;&nbsp;<%=rs.getInt("answercnt4") %></td>
				</tr>
				<tr>
					<td><%=rs.getString("answer5")%></td>
					<td>:&nbsp;&nbsp;<%=rs.getInt("answercnt5") %></td>
				</tr>
			</table>
			<hr>
			<input type="button" value=" 리스트 보기 " onclick="viewPollList()">
		</fieldset>
	
	</form>
</body>
</html>

<%
	sm.close();
	conn.close();
%>