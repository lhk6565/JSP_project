<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>    
<%@ include file="dbConn.jsp" %>


<%
	
	request.setCharacterEncoding("UTF-8");
	
	
	String title= request.getParameter("title");
	String major= request.getParameter("major");
	String price= request.getParameter("price");
	String expl= request.getParameter("expl");
	
	
	Statement sm= conn.createStatement();
	String sql= "SELECT * FROM board";
	ResultSet rs= sm.executeQuery(sql);
	rs.next();

	
	sql = "INSERT INTO board(title, major, price, expl) VALUES";
	sql += "('" + title + "','" + major + "','" + price + "','" + expl + "')";
	int count = sm.executeUpdate(sql);

	rs.close();
	sm.close();
	conn.close();
	
%>

<body>
	게시판에 등록되었습니다
	<form action="view.jsp" method="post">
		<input type= "submit" value =" 돌아가기 " >
	</form>
</body>

