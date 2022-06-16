<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	
	int cno = Integer.parseInt(request.getParameter("cno"));
	
	Statement sm= conn.createStatement();

	String str= "SELECT * FROM chat WHERE cno="+cno;
	ResultSet rs = sm.executeQuery(str);
	rs.next();
	
	String sql="";
	
	sql = "DELETE FROM chat ";
	sql += "WHERE cno = ?";
	
	PreparedStatement pm = conn.prepareStatement(sql);
	pm.setInt(1, cno);
	
	int count= pm.executeUpdate();
	
	if(count==1){
		out.println("댓글이 삭제되었습니다");
	}else{
		response.sendRedirect("deleteFail.jsp");
	}
	
%>

<body>
	<form action = "inform.jsp?bno=<%=rs.getInt("bno")%>" method="post">
		<input type= "submit" value="돌아가기">
	</form>
</body>

<%

	pm.close();
	sm.close();
	conn.close();
			
%>