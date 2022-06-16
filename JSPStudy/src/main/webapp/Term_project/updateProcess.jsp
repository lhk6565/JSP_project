<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	Statement sm= conn.createStatement();
	
	int bno = Integer.parseInt(request.getParameter("bno"));
	
	String title= request.getParameter("title");
	String major= request.getParameter("major");
	String price= request.getParameter("price");
	String expl= request.getParameter("expl");
	
	String sql = "UPDATE board SET title =?, major = ?, ";
	sql+= "price =?, expl =? WHERE bno = "+bno;
	
	String str="SELECT * FROM board WHERE bno ="+bno;
	
	ResultSet rs= sm.executeQuery(str);
	rs.next();
	
	
	PreparedStatement pm = conn.prepareStatement(sql);
	pm.setString(1, title);
	pm.setString(2, major);
	pm.setString(3, price);
	pm.setString(4, expl);
	
	int count = pm.executeUpdate();
	

	if(count==1){
		out.println("수정에 성공했습니다");
	}
	
%>
<body>
	<form action = "inform.jsp?bno=<%=rs.getInt("bno")%>" method="post">
		<input type= "submit" value="돌아가기">
	</form>
</body>