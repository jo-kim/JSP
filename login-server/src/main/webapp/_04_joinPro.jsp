<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
input[type="submit"] {
	width: 300px;
	height: 50px;
	background-color: rgb(10, 187, 10);
	color: white;
}
</style>
<title>Join Complete</title>
</head>
<body>
	<h1>NAVER</h1>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String gender = request.getParameter("gender");
		String tel = request.getParameter("tel");
	
	
		
		
		UserDAO dao = UserDAO.getInstance();
		
		if(dao.checkUser(id)){%>
			
			<h1>회원가입을 완료했습니다.</h1>
		<% 
			UserDTO user = new UserDTO(id, pw, name, year, month, day, gender, tel);
		
			dao.addUser(user);
		%>
		
			<form method = "post" action = "_05_login.jsp">
				<input type = "submit" value = "로그인페이지로 이동">
			</form>
	
				<%}
		else{%>
			<h1> 중복된 아이디입니다.</h1>
			<form action = "_03_join.jsp">
			<input type = "submit" value = "뒤로가기 ">
			</form>
		<%} %>	
		
		<h3>가입정보
			<%
			 ArrayList<UserDTO> user = dao.getUsers();
			
			for(int i=0; i<user.size(); i++){%>
				<p><%=user.get(i).toString()%></p> 
			<%}
			%>
		</h3>
		
	
</body>
</html>