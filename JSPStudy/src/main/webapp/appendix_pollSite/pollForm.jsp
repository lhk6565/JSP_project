<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	int q_num = Integer.parseInt(request.getParameter("q_id"));

	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/poll";
	String username = "root";
	String password = "123456";
	Connection conn = null;
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);
	
	Statement sm = conn.createStatement();
	String sql;
	sql = "SELECT qid, question,";
	sql += " answer1, answer2, answer3, answer4, answer5 ";
	sql += "FROM options WHERE qid=" + q_num;
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
		document.location.href="viewPollList.jsp";
	}
</script>
</head>
<body>
	설문조사
	<hr>
	<form action="pollProcessResult.jsp" method="post">
		<fieldset style="width:300px">
			<legend>설문</legend>
			<%=rs.getString("question")%><hr>
			<input type="radio" name="fruit" value="answercnt1"><%=rs.getString("answer1") %><br>
			<input type="radio" name="fruit" value="answercnt2"><%=rs.getString("answer2") %><br>
			<input type="radio" name="fruit" value="answercnt3"><%=rs.getString("answer3") %><br>
			<input type="radio" name="fruit" value="answercnt4"><%=rs.getString("answer4") %><br>
			<input type="radio" name="fruit" value="answercnt5"><%=rs.getString("answer5") %><br>
			<input type="hidden" name="q_id" value=<%=q_num%>>
			<hr>
			<div align="center">
				<input type="submit" value=" 설문 완료 ">&nbsp;
				<input type="reset" value=" 다시 작성 ">&nbsp;
				<input type="button" value=" 리스트 보기 " onclick="viewPollList()">
			</div>
		</fieldset>
	</form>
</body>
</html>

<%
	sm.close();
	conn.close();
%>