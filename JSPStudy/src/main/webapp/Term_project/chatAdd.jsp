<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>    
<%@ include file="dbConn.jsp" %>

<%
	
	request.setCharacterEncoding("UTF-8");
	
	int bno = Integer.parseInt(request.getParameter("bno"));
	
	String title= request.getParameter("title");
	String expl= request.getParameter("expl");
	
	Statement sm= conn.createStatement();

	
	String sql = "INSERT INTO chat(title, expl, bno) VALUES ";
	sql += "('" + title + "','" + expl + "','"+ bno+ "')";
	int count = sm.executeUpdate(sql);

	if(count==1){
		out.print("성공하셨습니다.");
	}else{
		out.print("실패하셨습니다");
		response.sendRedirect("view.jsp");
	}
		
	sm.close();
	conn.close();
	
%>

<body>
	댓글이 게시판에 등록되었습니다
	<form action="inform.jsp?bno=<%=bno%>" method="post">
		<input type= "submit" value =" 돌아가기 " >
	</form>
</body>

