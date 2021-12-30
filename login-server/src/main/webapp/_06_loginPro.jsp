<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Complete</title>
</head>
<body>

	<% 
	  request.setCharacterEncoding("utf-8");
	  String id = request.getParameter("id");
	  String pw = request.getParameter("pw");
	  
	  UserDAO dao = UserDAO.getInstance();
	  
	 if(dao.loginUser(id,pw)){
		 session.setAttribute("log", id);
		 response.sendRedirect("_10_boardList.jsp");
	 }else{
		 response.sendRedirect("_05_login.jsp");
		 System.out.println("일치하지 않는 정보입니다.");
	 }
    %>
</body>
</html>