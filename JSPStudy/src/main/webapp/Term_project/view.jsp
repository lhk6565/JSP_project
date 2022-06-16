<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
<%	
	Statement sm= conn.createStatement();
	ResultSet rs= sm.executeQuery("SELECT bno, title, major, price, signuptime FROM board");
	
	String str =  "<table>";
	str += "<table width=\"100%\"  border= \"1\" >";
	str += "<tr>";
	str += "<th style=\"background-color: gray;\">번호</th>";
	str += "<th style=\"background-color: gray;\">제목</th>";
	str += "<th style=\"background-color: gray;\">전공</th>";
	str += "<th style=\"background-color: gray;\">가격</th>";
	str += "<th style=\"background-color: gray;\">작성일</th>";
	str += "</tr>";
	
	int count = 1;

	while(rs.next()){
	
		
		str+="<tr><td>"+count+"</td>";
		str+="<td><a href = inform.jsp?bno="+rs.getInt("bno")+">"+rs.getString("title")+"</a></td>";
		str+="<td>"+rs.getString("major")+"</td>";
		str+="<td>"+rs.getString("price")+"</td>";
		str+="<td>"+rs.getString("signuptime")+"</td></tr>";
		count++;	
	}    
	out.print("<hr>");
	out.print(str);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 </title>
</head>
<body>
	
	<table border="0">
		<tr>
			<td>
				<form action="add.jsp" method="post">
					<input type="submit" value= " 판매글 올리기 " >&nbsp;&nbsp;
				</form>
				<form action="main2.jsp" method="post">
					<input type="submit" value = " 메인페이지로 돌아가기">&nbsp;&nbsp;
				</form>
			</td>				
		</tr>
	</table>
</body>
</html>


<%
	rs.close();
	sm.close();
	conn.close();
%>