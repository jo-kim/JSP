<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board Write Confirm</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String id = (String)session.getAttribute("log");
	String pw = request.getParameter("pw");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	BoardDAO dao = BoardDAO.getInstance();
	
	BoardDTO boards = new BoardDTO(id,pw,title,content);
	dao.addBoard(boards);
	
	response.sendRedirect("_00_main.jsp");
	%>
</body>
</html>