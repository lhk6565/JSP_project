<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/poll";
	String username = "root";
	String password = "123456";
	Connection conn = null;
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);
	
	Statement sm = conn.createStatement();
	String sql;
	sql = "SELECT COUNT(*) FROM options";
	ResultSet rs = sm.executeQuery(sql);
	rs.next();
	int q_num = rs.getInt("COUNT(*)");
	
	String rec_ques = request.getParameter("question");
	String rec_an1 = request.getParameter("answer1");
	String rec_an2 = request.getParameter("answer2");
	String rec_an3 = request.getParameter("answer3");
	String rec_an4 = request.getParameter("answer4");
	String rec_an5 = request.getParameter("answer5");
	
	sql = "INSERT INTO options(qid, question, answer1, answer2, answer3, answer4, answer5) VALUES";
	sql += "('" + q_num + "','" + rec_ques + "','";
	sql += rec_an1 + "','" + rec_an2 + "','" + rec_an3 + "','";
	sql += rec_an4 + "','" + rec_an5 + "')";
	int count = sm.executeUpdate(sql);
	
	response.sendRedirect("viewPollList.jsp");
%>