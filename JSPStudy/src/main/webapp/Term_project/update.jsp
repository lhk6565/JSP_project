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
	
	String sql = "SELECT * FROM board WHERE bno = " + bno;
	
	PreparedStatement pm = conn.prepareStatement(sql);

	ResultSet rs = pm.executeQuery();
	rs.next();	

	String title= rs.getString("title");
	String major= rs.getString("major");
	String price= rs.getString("price");
	String explain= rs.getString("expl");
	
%>

<head>
	<meta charset="UTF-8">
	<title> 게시글 수정하기 </title>
	<script type="text/javascript">
		function checkUpdate(){
			if(document.change.title.value=="")
			{
				alert("제목을 입력해 주세요");	
				document.change.title.select();
			}
			else if(document.change.major.value=="")
			{
				alert("학부를 선택해 주세요");	
				document.change.major.select();
			}
			else if(document.change.price.value=="")
			{
				alert("가격을 입력해 주세요");	
				document.change.price.select();
			}
			else if(document.change.expl.value=="")
			{
				alert("제목을 입력해 주세요");	
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

	<form name="change" action="updateProcess.jsp?bno=<%=rs.getInt("bno") %>" method="post">
		<fieldset style= "width:300px">
			<legend>제목</legend>
				<textarea class= "message_area" cols="40" rows="1" name="title" value="<%= rs.getString("title")%>"></textarea>
		</fieldset>
		<fieldset style= "width:300px">
			<legend>학부</legend>
				<select name="major" >
					<option value="">=== 선택===</option>
					<option value="컴퓨터공학부">컴퓨터공학부</option>
					<option value="게임공학부">게임공학부</option>
					<option value="기계공학과">기계공학과</option>
					<option value="기계설계공학과">기계설계공학과</option>
					<option value="메카트로닉스공학부">메카트로닉스공학부</option>
					<option value="전자공학부">전자공학부</option>
					<option value="신소재공학과">신소재공학과</option>
					<option value="생명화학공학과">생명화학공학과</option>
					<option value="디자인공학부">디자인공학부</option>
					<option value="경영학부">경영학부</option>
					<option value="나노반도체공학과">나노반도체공학과</option>
					<option value="에너지전기공학과">에너지전기공학과</option>
					<option value="기타">기타</option>
				</select>	
		</fieldset>
		<fieldset style="width:300px">
			<legend>가격 (원)</legend>
				<input type="number" name="price" >
		</fieldset>
		<fieldset style="width:300px">
			<legend>설명</legend>
				<textarea name= "expl" class= "message_area"  cols="40" rows="5"></textarea>
		</fieldset>
	
		<table border="0">
			<tr>
				<td>
					<form method="post">
						<input type="button" value= "수정하기" onclick="checkUpdate()">
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