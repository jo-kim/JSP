<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
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
    header{
    	text-align: right;
    	cursor:pointer;
    }
   div{
          margin-top: 1%;
          margin-right: 1%;
          text-align: right; 
          cursor:pointer;
      }
    </style>
    <title>Board List</title>
</head>
<body>
	
	<%
	BoardDAO dao = BoardDAO.getInstance();
	ArrayList<BoardDTO> boards = dao.getBoard();
	
	%>
	<header>
		<button onclick="location.href='_00_main.jsp'">메인메뉴</button>
		<button onclick="location.href='_07_logoutPro.jsp'">로그아웃</button>
	</header>
	<h1>게시판</h1>
	<!-- 메인메뉴 록아웃  -->
	<table border="1px solid" style="width:100%">
		<tr>
			<td>no</td>
			<td>title</td>
			<td>id</td>
			<td>view</td>
			<td>like</td>
			<td>date</td>
		</tr>
		
		<%
		
		for(int i=0; i<boards.size(); i++){
	
		%>
		<tr>
			<td><%=boards.get(i).getCode() %></td>
			<td><a href="_18_boardView.jsp?code=<%=boards.get(i).getCode()%>"><%=boards.get(i).getTitle() %></a></td>
			<td><%= boards.get(i).getId() %></td>
			<td><%= boards.get(i).getView() %></td>
			<td><%= boards.get(i).getLike() %></td>
			<td><%= boards.get(i).getDate() %></td>
		
		</tr>
		<% }%>
	</table>
	<div>
		 <button onclick="location.href='_11_boardWriteForm.jsp'">게시글 작성하기</button>
		 </div>
</body>
</html>