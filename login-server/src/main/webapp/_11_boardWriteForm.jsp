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
    <script type="text/javascript" src="_02_validation.js"></script>
    <style>
      input[type="text"]{
          border: none;
          font-size: 1em;
      }
     textarea{
          border: none;
          font-size: 1em;
      }
      input[type="password"]{
          border: none;
          font-size: 1em;
          
      }
      div{
          margin-top: 1%;
          margin-right: 1%;
          text-align: right; 
      }
    
    </style>
    <title>Document</title>
</head>
<body>
	<%
	BoardDAO dao = BoardDAO.getInstance();
	String log =(String) session.getAttribute("log");
	//System.out.println(log);
	%>
    <h1>게시글 작성하기</h1>
    <form action="_12_boardWritePro.jsp" method="post"> 
		<table border="1px solid " style="width: 100%">
			<tr>
				<td>작성자</td>
				<td><%=log %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" placeholder="title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" placeholder="내용을 입력하세요" cols="180px" rows="30px"></textarea></td>
			</tr>
			<tr>
				<td>비밀번호 설정</td>
				<td><input type="password" name="pw" placeholder="password"></td>
			</tr>
		</table>
    <div id="button">
	<input type="button" value="뒤로가기" onclick="location.href='_10_boardList.jsp'">
	<input type="button" value="등록" onclick="check(form)">
</div>
	</form>
</body>
</html>