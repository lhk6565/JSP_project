<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>

<%

	int num = Integer.parseInt(request.getParameter("bno"));
		

	Statement sm1= conn.createStatement();
	
	Statement sm2= conn.createStatement();
	
	
	String sql;
	sql= "SELECT viewcnt FROM board WHERE bno=" + num;
	ResultSet rs_ori = sm1.executeQuery(sql);
	rs_ori.next();
	
	int viewcnt = rs_ori.getInt("viewcnt")+1;
	sql="UPDATE board SET viewcnt=" + viewcnt +" WHERE bno="+num;
	
	int count = sm1.executeUpdate(sql);
	
	sql= "SELECT bno, title, major, price, expl, viewcnt, signuptime FROM board WHERE bno=" + num;
	ResultSet rs = sm1.executeQuery(sql);
	rs.next();
	
	
	String chat_sql;
	
	chat_sql= "SELECT * FROM chat WHERE bno=" + num;
	ResultSet rs_chat = sm2.executeQuery(chat_sql);
	
	chat_sql= "SELECT * FROM chat WHERE bno=" + num;
	
	int chat_count=1;
	
	String chat=  "<table>";
	chat += "<table width=\"80%\"  border= \"1\" >";
	chat += "<tr>";
	chat += "<th style=\"background-color: gray;\">번호</th>";
	chat += "<th style=\"background-color: gray;\">작성자</th>";
	chat += "<th style=\"background-color: gray;\">댓글 내용</th>";
	chat += "<th style=\"background-color: gray;\">올린 시간</th>";
	chat += "<th style=\"background-color: gray;\">삭제버튼</th>";
	chat += "</tr>";
	
	while(rs_chat.next()){
		chat+="<tr><td>"+chat_count+"</td>";
		chat+="<td>"+rs_chat.getString("title")+"</td>";
		chat+="<td>"+rs_chat.getString("expl")+"</td>";
		chat+="<td>"+rs_chat.getString("signuptime")+"</td>";
		chat+="<td>"+"<input type=\"button\" value=\"삭제하기\" onclick=\"deletechat("+rs_chat.getInt("cno")+")\">"+"</td>";
		chat_count++;	
	}    

%>
<!DOCTYPE html>
<html>
<head>
<script>
function del(bno) {
	if(!confirm("이 글을 삭제하시겠습니까?")){
		alert("취소하셨습니다.")
	}else{
		document.location.href = 'delete.jsp?bno=' + <%=rs.getInt("bno")%>;
	}
}
function deletechat(cno){
	if(!confirm("현재 댓글을 삭제하시겠습니까?")){
		alert("취소하셨습니다.")
	}else{
		document.location.href = 'chatDelete.jsp?cno='+cno;
	}
}

</script>
<meta charset="UTF-8">
<title> 게시판 내용 </title>
</head>
<body>
게시글 내용
<hr>
<form method="post" action="#">
	<fieldset style="width:50%">
		<legend> 게시판 내용 </legend>
		<hr>
		<table width ="100%" border="1" >
			<tr>
				<th> 제목 </th> <th>  <%=rs.getString("title") %><br> </th>
			</tr>
			<tr>
				<th> 전공 </th> <th>  <%=rs.getString("major") %> </th>
			</tr>
			<tr>
				<th> 가격 </th> <th>  <%=rs.getString("price") %> </th>
			</tr>
			<tr>
				<th> 설명 </th> <th>  <%=rs.getString("expl") %> </th>
			</tr>
			<tr>
				<th> 등록일 </th> <th>  <%=rs.getString("signuptime") %> </th>
			</tr>
			<tr>
				<th> 조회수 </th> <th>  <%=rs.getString("viewcnt") %> </th>
			</tr>			
		</table>
	</fieldset>
</form>
<table border="0">
	<tr>
		<td>
			<form action="chat.jsp?bno=<%=rs.getInt("bno")%>" method="post">
				<input type="submit" value= " 댓글 달기 " >&nbsp;&nbsp;
			</form>				
		</td>
		<td>
			<form action="update.jsp?bno=<%=rs.getInt("bno")%>" method="post">
				<input type= "submit" value=" 게시글 수정 " )">  &nbsp;&nbsp;
			</form>
		</td>
		<td>
			<form action="delete.jsp?bno=<%=rs.getInt("bno")%>" method="post">
				<input type="button" value="게시글 삭제" onclick="del(<%=rs.getInt("bno")%>)">  &nbsp;&nbsp;
			</form>
		</td>
		<td>
			<form action="view.jsp" method="post">
				<input type="submit" value="돌아가기">
			</form>
		</td>
	</tr>
</table>
</body>
</html>

<%


out.print("<hr>");
out.print("댓글 > ");
out.print("<hr>");
out.print(chat);



rs_chat.close();
rs.close();
sm1.close();
sm2.close();
conn.close();

%>