<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body{
margin-top: 15%;
text-align: center;
}
button{
	cursor:pointer;
	width:30vw;
	height: 10vh;
	color:white;
	font-size:1em;
	background-color: rgb(10, 187, 10);
	border:none;
}
</style>
<title>MAIN</title>
</head>
<body>
	<h1>MAIN</h1>
	<%
	String id =(String)	session.getAttribute("log");
	// System.out.println("id: "+id);
	if(session.getAttribute("log") != null){
	%>
	<h3><%=id%>님 로그인중..</h3>
	<button onclick="location.href='_07_logoutPro.jsp'">Logout</button>
	<button onclick="location.href='_10_boardList.jsp'">게시판</button>
	<% }
	else{%>
		<h3>회원가입 먼저 해주세요.</h3>
		<button onclick="location.href='_01_agree.jsp'">회원가입</button>
	<%}
	%>
</body>
</html>
