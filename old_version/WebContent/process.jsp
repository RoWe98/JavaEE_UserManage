<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>处理结果</title>
</head>
<body>
<%!String[][] seats = new String[11][13];%>
<% 
	String sno = request.getParameter("sno");
	String sname = new String(request.getParameter("sname").getBytes("ISO-8859-1"),"utf-8");
	String rno = request.getParameter("row");
	String cno = request.getParameter("col");
	int r = Integer.parseInt(rno);
	int c = Integer.parseInt(cno);
	seats[r][c] = sno + "<br>" + sname;
%>

<table border = "1">
		<%for(int i = 1;i<=10;i++){ %>
			<tr>
			<% for(int j = 1;j<=12;j++){%>
				<td><%=seats[i][j]%></td>
			<%} %>
			</tr>
		<%} %>			
</table>
<a href="hello.jsp">返回</a>
</body>
</html>