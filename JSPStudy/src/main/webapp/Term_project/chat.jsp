<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
    
<%
	
	request.setCharacterEncoding("UTF-8");
	
	int num=  Integer.parseInt(request.getParameter("bno"));
	
	String sql = "SELECT * FROM board WHERE bno = " + num;
	
	PreparedStatement pm = conn.prepareStatement(sql);

	ResultSet rs = pm.executeQuery();
	rs.next();	

	int bno= rs.getInt("bno");
	String title= rs.getString("title");
	String major= rs.getString("major");
	String price= rs.getString("price");
	String explain= rs.getString("expl");

	
%>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 댓글 올리기 </title>
	<script type="text/javascript">
		function checkFun(){
			if(document.chat.title.value=="")
			{
				alert("작성자를 입력해 주세요");	
				document.chat.title.select();
			}
			else if(document.chat.expl.value=="")
			{
				alert("설명을 입력해 주세요");	
				document.chat.expl.select();
			}
			else
			{
				chat.submit();
			}
		}
	
	</script>
</head>
<body>

	댓글 > 
	
	<hr>
	
	<form name="chat" action="chatAdd.jsp?bno=<%= bno %>" method="post"> 
		<fieldset style= "width:300px">
			<legend>작성자</legend>
				<textarea class= "message_area" cols="40" rows="1" name="title"></textarea>
		</fieldset>
		
		<fieldset style="width:300px">
			<legend>설명</legend>
				<textarea name= "expl" class= "message_area"  cols="40" rows="5" ></textarea>
		</fieldset>
		
		<table border="0">
			<tr>
				<td>
					<form method="post">
						<input type="button" value= "게시" onclick="checkFun()">
					</form>				
				</td>
				<td>
					<form method="post">
						<input type="reset" value= "취소" >
					</form>				
				</td>
				<td>
					<form action = "inform.jsp?bno=<%=rs.getInt("bno")%>" method="post">
						<input type= "submit" value="돌아가기">
					</form>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>