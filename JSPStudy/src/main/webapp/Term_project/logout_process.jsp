<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		String u_id = (String) session.getAttribute("memberID");
		String u_pw = (String) session.getAttribute("memberPW");
		
		session.removeAttribute("memberID");
		response.sendRedirect("main.jsp");
%>