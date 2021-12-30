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
        input[type="text"]{
            padding: 10px;
            border: solid 2px green;
        }
        input[type="button"]{
        	cursor:pointer;
            padding: 10px;
            border:none;
            color: white;
            background-color: green;
        }
    </style>
    <script type="text/javascript" src="_02_valAns.js"></script>
    <title>Join</title>
</head>
<body>
    <h1>JOIN</h1>
    <form method="post" action="_04_joinProAns.jsp">
        <span>id:&#9;</span><input type="text" name="id"><br><br>
        <span>pw:&#9;</span><input type="text" name="pw"><br><br>
        <input type="button" onclick="checkInfo(form)" value="join">
    </form>
</body>
</html>