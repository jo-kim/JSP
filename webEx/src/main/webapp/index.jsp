<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    
<%---jsp �ּ� --%>
<%---JSP : Java Server Page --%>
<%--- html�����ȿ� Java �� ���ԵǴ� ���� --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
hello World
<%// ��ũ��Ʋ��: �ڹٹ����� �ۼ��Ǵ� ������ �±׷� ǥ���� �� 
	int num = 10;

	// ǥ���� : �ڹٺ����� �������ִ� ��
%>
<h1><%=num %></h1>

<%
// ��� �ڹ� ������ �ۼ��� �� �ְ� (html�����ȿ��� ��� ����� ������)
// �� ���ǹ� if, if-else, switch-case
// �� �ݺ��� while, do-while, for
// �� ������� break, continue

// ������ ����ϱ�
// .2~9�ܱ���
// .������ �ȿ� ���
// .ǥ�� �׸���

//[XX��]
%>
<table border="1">
<% 	for(int i=2;i<10; i++){%>
<th colspan ="9"><%=i%>��</th>
			<tr>
			<%for(int j=1;j<10; j++){ %>
			<td><h3><%=i %>X<%=j %>=<%=i*j %></h3></td>
			<%}%>
			</tr>
		<%}
%>
</table>
</body>
</html>