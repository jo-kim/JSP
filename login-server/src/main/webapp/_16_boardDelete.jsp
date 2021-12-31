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
	<%
		request.setCharacterEncoding("utf-8");
		BoardDAO dao = BoardDAO.getInstance();
		
		String code = request.getParameter("code");
		//System.out.println("code: "+code);
		session.setAttribute("code",code);
	%>
		<form method="post" action="_17_boardDeletePro.jsp">
			<span>비밀번호: &#9;</span>
			<input type="password" name="pw">
			<input type="submit" value="삭제">
		</form>
</body>
</html>