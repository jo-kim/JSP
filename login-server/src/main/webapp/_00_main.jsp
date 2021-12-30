<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MAIN</title>
</head>
<body>
	<h1>MAIN</h1>
	<%
	String id =	session.getAttribute("log").toString();
	%>
	<h3><%=id%>님 로그인중...</h3>
	<button onclick="location.href='_07_logoutPro.jsp'">logout</button>
	<button onclick="location.href='_10_boardList.jsp'">게시판으로가기</button>
</body>
</html>
