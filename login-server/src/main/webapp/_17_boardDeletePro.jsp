<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Delete</title>
</head>
<body>
	<h1>게시글 삭제하기</h1>
	<%
	request.setCharacterEncoding("utf-8");
	BoardDAO dao = BoardDAO.getInstance();

	String code = (String) session.getAttribute("code");
	//System.out.println("code: "+code);
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String id = (String) session.getAttribute("log");
	String pw = request.getParameter("pw");
	BoardDTO board = dao.getCode(Integer.parseInt(code));
	%>
	<%
	if (pw.equals(board.getPw())) {
		dao.deleteBoard(Integer.parseInt(code));
		response.sendRedirect("_10_boardList.jsp");

	} else {
	%>
	<script>
		alert("비밀번호가 일치하지 않습니다.");
		location.href = "_10_boardList.jsp";
	</script>
	<%
	}
	%>

</body>
</html>