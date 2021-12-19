<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="validate.js"></script>
    <title>Subject</title>
</head>
<body>
    <h1>수강신청</h1>
    <p>최소 한 개 과목 이상 신청해야 합니다.</p>
   <form action="subjectPro.jsp">
       <ul>
           <li><input type="checkbox" name="subjects" value="java"><span>Java</span></li>
           <li><input type="checkbox" name="subjects" value="jsp"><span>JSP</span></li>
           <li><input type="checkbox" name="subjects" value="html/css"><span>HTML/CSS</span></li>
           <li><input type="checkbox" name="subjects" value="JS"><span>JS</span></li>
           <li><input type="checkbox" name="subjects" value="Spring"><span>Spring</span></li>
       </ul>
       <input type="button" value="인풋버튼" onclick="checkVal(form)">
   </form>
</body>
</html>