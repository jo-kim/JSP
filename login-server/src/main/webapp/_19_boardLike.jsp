<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
BoardDAO dao = BoardDAO.getInstance();

String code = (String)session.getAttribute("code");
//System.out.print("code: "+code);
String id = (String)session.getAttribute("log");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String pw = request.getParameter("pw");
	BoardDTO board = new BoardDTO(title,content,pw);
	dao.likeCnt(Integer.parseInt(code), board);
	response.sendRedirect("_10_boardList.jsp");
%>
</body>
</html>