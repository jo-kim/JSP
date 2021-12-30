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
<h1>게시글 삭제하기</h1>
<%
request.setCharacterEncoding("utf-8");
BoardDAO dao = BoardDAO.getInstance();

int code = Integer.parseInt(request.getParameter("code"));
// System.out.println("code: "+code);
String title = request.getParameter("title");
String content = request.getParameter("content");
String id = (String)session.getAttribute("log");
String pw = request.getParameter("pw");

dao.deleteBoard(code);
response.sendRedirect("_10_boardList.jsp");
%>
</body>
</html>