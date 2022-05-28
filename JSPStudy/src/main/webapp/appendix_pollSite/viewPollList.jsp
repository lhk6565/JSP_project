<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/poll";
	String username = "root";
	String password = "123456";
	Connection conn = null;
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);
	
	Statement sm = conn.createStatement();
	ResultSet rs = sm.executeQuery("SELECT qid, question FROM options");
	
	String str = "<table>";
	int count = 1;
	
	while(rs.next()){
		str += "<tr><td>&nbsp;" + count + "." + rs.getString("question");
		str += "&nbsp;</td><td>&nbsp;";
		str += "<input type=\"button\"value=\" 설문 하기 \" onclick=\"goVote("+ rs.getInt("qid") + ")\">";
		str += "&nbsp;</td><td>&nbsp;";
		str += "<input type=\"button\"value=\" 결과 보기 \" onclick=\"viewResult("+ rs.getInt("qid") + ")\">";
		str += "</td></tr>";
		count++;
	}
	out.print(" 설문 리스트 ");
	out.print("<input type=\"button\"value=\" 설문 추가 \" onclick=\"addPoll()\">");
	out.print("<hr>");
	out.print(str);
	
	rs.close();
	sm.close();
	conn.close();
%>
<!DOCTYPE html>
<html>	
<head>
	<meta charset="UTF-8">
	<title>설문 조사 사이트</title>
	<script type="text/javascript">
		function addPoll(){
			document.location.href="addPoll.jsp";
		}
		function goVote(q_num){
			document.location.href="pollForm.jsp?q_id=" + q_num;
		}
		function viewResult(q_num){
			document.location.href="pollProcessResult.jsp?q_id" + q_num;
		}
	</script>
</head>
<body>

</body>
</html>