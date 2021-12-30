<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
    	body{
    		margin-top: 5%;
    		text-align: center;
    	}
        span {
            white-space: pre;
        }

        input[type="text"] {
            padding: 10px;
            border: solid 2px
            background-color: rgb(10, 187, 10); 
        }

        input[type="button"] {
        	width:200px;
        	height: 50px;
            padding: 10px;
            margin-left: 3%;
            border: none;
            color: white;
            font-size: 1.5em;
            background-color: rgb(10, 187, 10); 
            cursor: pointer;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <title>LOGIN</title>
</head>

<body>
    <h1>LOGIN</h1>

    <form method="POST" action="_06_loginPro.jsp">
        <span>Id:&#9;</span><input type="text" name="id"><br><br>
        <span>Pw:&#9;</span><input type="text" name="pw"><br><br>
        <input type="button" onclick="checkLogin(form)" value="login">
    </form>
    <script type="text/javascript" src="_02_validation.js"></script>
</body>

</html>