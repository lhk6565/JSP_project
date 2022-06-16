<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
<%	
	Statement sm= conn.createStatement();
	
	String sql;
	sql= "SELECT * FROM board";
	
	ResultSet rs = sm.executeQuery(sql);
	rs.next();
	
	String major= rs.getString("major");
	
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 전공 선택하기 </title>
</head>
<body>
	<table border="1" width="100%" height="100%">
		<tr>
			<th colspan="2" > 전공 </th> 
		</tr>
		
		<tr>
			<th width="50%" > <a href ="search.jsp?major='컴퓨터공학부'">컴퓨터공학부</a></th> <th width="50%"> <a href ="search.jsp?major='기계공학과'">기계공학과</a></th> 
		</tr>
		<tr>
			<th> <a href ="search.jsp?major='기계설계공학과'">기계설계공학과</a></th> <th> <a href ="search.jsp?major='메카트로닉스공학부'">메카트로닉스공학부</a></th> 
		</tr>
		<tr>
			<th> <a href ="search.jsp?major='전자공학부'">전자공학부</a></th> <th> <a href ="search.jsp?major='신소재공학과'">신소재공학과</a></th> 
		</tr>
		<tr>
			<th> <a href ="search.jsp?major='생명공학과'">생명화학공학과</a></th> <th> <a href ="search.jsp?major='디자인공학부'">디자인공학부</a></th> 
		</tr>
		<tr>
			<th> <a href ="search.jsp?major='경영학부'">경영학부</a></th> <th> <a href ="search.jsp?major='나노반도체공학과'">나노반도체공학과</a></th> 
		</tr>
		<tr>
			<th> <a href ="search.jsp?major='에너지전기공학과'">에너지전기공학과</a></th> <th> <a href ="search.jsp?major='지식융합학부'">지식융합학부</a></th> 
		</tr>
		<tr>
			<th colspan="2"> <a href ="search.jsp?major='기타'">기타</a></th> 
		</tr>	
	</table>
	<form action="main2.jsp" method="post">
		<input type="submit" value= " 메인화면으로 가기 " >&nbsp;&nbsp;
	</form>
</body>
</html>