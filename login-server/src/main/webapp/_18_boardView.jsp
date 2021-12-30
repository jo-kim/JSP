<%@page import="java.sql.Timestamp"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
</style>
<title>Document</title>
</head>
<body>
	<h1>boardView</h1>
	<%
	BoardDAO dao = BoardDAO.getInstance();
	int code = Integer.parseInt(request.getParameter("code"));

	BoardDTO board = dao.getCode(code);

	String title = board.getTitle();
	String content = board.getContent();
	String id = board.getId();
	String pw = board.getPw();

	Timestamp date = board.getDate();
	dao.viewCnt(code, board);
	
	session.setAttribute("code", request.getParameter("code"));
	%>

	<div id="t">
		<table border="1px solid " style="width: 100%">
			<tr>
				<td>code</td>
				<td><%=code%></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%=id%></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" placeholder="title"
					value=<%=title%> readonly></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" placeholder="내용을 입력하세요"
						cols="180px" rows="30px" readonly><%=content%> </textarea></td>
			</tr>
			<tr>
				<td>등록시점</td>
				<td><%=date%></td>
			</tr>
		</table>
	</div>
	<%
	String loginId = (String) session.getAttribute("log");
	if (loginId.equals(id)) {
	%>



	<button id="updatebtn"
		onclick="location.href='_13_boardUpdateForm.jsp?code=<%=code%>'">수정하기</button>
	<button id="deletebtn"
		onclick="location.href='_17_boardDeletePro.jsp?code=<%=code%>'">삭제하기</button>
	<%
	}
	
	else{
		%>
		<button id="like" onclick ="location.href='_19_boardLike.jsp'">좋아요</button>
		<button id="list" onclick="location.href='_10_boardList.jsp'">뒤로가기</button>
	<% }%>
</body>
</html>