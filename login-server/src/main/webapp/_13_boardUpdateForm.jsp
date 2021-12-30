
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
    <script type="text/javascript" src="_02_validation.js"></script>
    <title>Document</title>
</head>
<body>
<%
BoardDAO dao = BoardDAO.getInstance();
int code = Integer.parseInt(request.getParameter("code"));
System.out.println(code);
BoardDTO c = dao.getCode(code);

System.out.println("_13_boardUpdateForm.jsp : code : " + request.getParameter("code"));
session.setAttribute("code", request.getParameter("code"));

%>
    <h1>게시글 수정</h1>
    <form method="post" action="_14_boardUpdatePro.jsp">
        <table border="solid 1px">
    
            <tr>
                <td>제목</td>
                <td><input type="text" name="title" value="<%=c.getTitle()%>"></td>
            </tr>
            <tr>
                <td>내용</td>
                <td><textarea name="content" cols="180px" rows="30px" ><%=c.getContent()%></textarea>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td><input type="password" name="pw"></td>
            </tr>
        </table>
        <input type="button" value="수정" onclick="check(form)">
    </form>
    
</body>
</html>