<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
<%	
	request.setCharacterEncoding("UTF-8");
	
	Statement sm= conn.createStatement();
	
	int bno = Integer.parseInt(request.getParameter("bno"));
	
	String title= request.getParameter("title");
	String expl= request.getParameter("expl");
	
	String sql = "UPDATE free SET title =?, ";
	sql+= "expl =? WHERE bno = "+bno;
	
	String str="SELECT * FROM free WHERE bno ="+bno;
	
	ResultSet rs= sm.executeQuery(str);
	rs.next();
	
	
	PreparedStatement pm = conn.prepareStatement(sql);
	pm.setString(1, title);
	pm.setString(2, expl);
	
	int count = pm.executeUpdate();
	

	if(count==1){
		out.println("수정에 성공했습니다");
	}
	
%>
<body>
	<form action = "freeInform.jsp?bno=<%=rs.getInt("bno")%>" method="post">
		<input type= "submit" value="돌아가기">
	</form>
</body>