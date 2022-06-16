<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>    
<%@ include file="dbConn.jsp" %>



<%	
	int bno = Integer.parseInt(request.getParameter("bno"));
	
	request.setCharacterEncoding("UTF-8");
	
	Statement sm= conn.createStatement();

	String sql="";
	
	sql = "DELETE FROM free ";
	sql += "WHERE bno = ?";
	
	PreparedStatement pm = conn.prepareStatement(sql);
	pm.setInt(1, bno);
	
	int count= pm.executeUpdate();
	
	if(count==1){
		out.println("게시글이 삭제되었습니다");
		out.print("<input type= \"button\" value=\"돌아가기\" onclick=\"document.location.href = \'freeView.jsp\'\">");
	}
	
	pm.close();
	sm.close();
	conn.close();
				
%>

