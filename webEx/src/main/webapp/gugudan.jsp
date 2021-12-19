<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gugudan quiz</title>
</head>
<body>
<%
Random rn = new Random();
%>
	<form method="get" action="gugudanPro.jsp">
	
    <table border="solid 1px" style="border-collapse: collapse;">
        <tr>
            <td>no</td>
            <td>quiz</td>
            <td>input</td>
        </tr>
        
        <%for(int i=0; i<5; i++){ 
        	int x = rn.nextInt(8)+2;
        	int y = rn.nextInt(10)+1;
        	String quiz = String.format("%d X %d =",x,y);
        %>
        <tr>
            <td><%=i+1 %></td>
            <td>
            <%=quiz %>
            <input type ="hidden" name='<%="quiz"+(i+1)%>' value="<%=quiz%>">
            </td>
            <td>
                <input type="number" name="<%="answer"+(i+1) %>" required>
                <input type="hidden" name="<%="dap"+(i+1) %>" value="<%=x*y%>">
            </td>
        </tr>
        <%} %>
    </table>
    <input type="submit">
    </form>
</body>
</html>