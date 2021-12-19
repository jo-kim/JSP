<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        span{
            white-space: pre;
        }
    </style>
    <title>join</title>
</head>
<body>
    <h1>JOIN</h1>
    <!-- submit 후 넘어가는 페이지= joinPro -->
    <form method="POST" action="joinPro.jsp">
    	<!-- http://localhost:8081/webEx/joinPro.jsp?파라미터명1=값1&파라미터명2=값2 -->
    	<!-- protocol  Host   Port     Path         Query-->
    	<!-- http://localhost:8081/webEx/joinPro.jsp?id=1234&pw=1234 -->
        <span>id:&#9;</span><input type="text" name="id"><br><br>
        <span>pw:&#9;</span><input type="text" name="pw"><br><br>
        <input type="submit">
    </form>
</body>
</html>