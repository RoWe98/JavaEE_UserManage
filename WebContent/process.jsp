<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>处理结果</title>
<<<<<<< HEAD
<style>
	
	
	table{
		width:300px;
		height:300px;
		border:1px solid red;
		margin:auto;
		margin-top:100px
	}
</style>
=======
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
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
<<<<<<< HEAD
		<%} %>		
</table>
<p style="text-align: center;"><a href="hello.jsp">
				<% session.setAttribute("login","true");%>
				返回管理系统</a>
</p>

=======
		<%} %>			
</table>
<a href="hello.jsp">
<% session.setAttribute("login","true");%>
返回管理系统</a>
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
</body>
</html>