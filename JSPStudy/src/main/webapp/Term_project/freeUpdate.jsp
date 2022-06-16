<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>    
<%@ include file="dbConn.jsp" %>


<%	
	request.setCharacterEncoding("UTF-8");
	
	int bno=  Integer.parseInt(request.getParameter("bno"));
	
	String sql = "SELECT * FROM free WHERE bno = " + bno;
	
	PreparedStatement pm = conn.prepareStatement(sql);

	ResultSet rs = pm.executeQuery();
	rs.next();	

	String title= rs.getString("title");
	String explain= rs.getString("expl");
	
%>

<head>
	<meta charset="UTF-8">
	<title> 게시글 수정하기 </title>
	<script type="text/javascript">
		function checkFun(){
			if(document.change.title.value=="")
			{
				alert("제목을 입력해 주세요");	
				document.change.title.select();
			}
			else if(document.change.expl.value=="")
			{
				alert("내용을 입력해 주세요");	
				document.change.expl.select();
			}
			else
			{
				change.submit();	
			}
		}
	
	</script>
</head>
<body>

	게시글 정보 수정 >
	
	<hr>
	
	<form name="change" action="freeUpdateProcess.jsp?bno=<%=rs.getInt("bno") %>" method="post">
		<fieldset style= "width:300px">
			<legend>제목</legend>
				<textarea class= "message_area" cols="40" rows="1" name="title" value="<%= rs.getString("title")%>"></textarea>
		</fieldset>
		<fieldset style="width:300px">
			<legend>설명</legend>
				<textarea name= "expl" class= "message_area"  cols="40" rows="5"></textarea>
		</fieldset> <br>
		
		<table border="0">
			<tr>
				<td>
					<form method="post">
						<input type="button" value= "수정하기" onclick="checkFun()">
					</form>				
				</td>
				<td>
					<form method="post">
						<input type="reset" value= "취소" >
					</form>				
				</td>
				<td>
					<form action = "freeInform.jsp?bno=<%=rs.getInt("bno")%>" method="post">
						<input type= "submit" value="돌아가기">
					</form>
				</td>
			</tr>
		</table>
		
	</form>
</body>
</html>