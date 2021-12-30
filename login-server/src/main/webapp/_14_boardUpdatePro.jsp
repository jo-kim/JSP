<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Update Confirm</title>
</head>
<body>
<h1>updatePro</h1>
	<%
	request.setCharacterEncoding("utf-8");
	BoardDAO dao = BoardDAO.getInstance();

	String code = (String)session.getAttribute("code");
	// System.out.println(code);
	BoardDTO b = dao.getCode(Integer.parseInt(code));
	String id = (String)session.getAttribute("log");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String pw = request.getParameter("pw");
	BoardDTO board = new BoardDTO(title,content,pw);
	if(pw.equals(b.getPw())){
		dao.updateBoard(Integer.parseInt(code), board);
		response.sendRedirect("_10_boardList.jsp");
	}
	
	else{ %>
	<%
	System.out.println("비밀번호가 일치하지않습니다.");
	response.sendRedirect("_10_boardList.jsp");
	}%>
	
	

</body>
</html>