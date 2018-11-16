<%@page import="edu.sdfi.train.validate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>End</title>
<<<<<<< HEAD
<style>
	
	
	table{
		width:300px;
		height:300px;
		border:1px solid white;
		margin:auto;
		margin-top:100px
	}
</style>
=======
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
</head>
<body>
<%
	String user = request.getParameter("user");
	String password = request.getParameter("pwd");
<<<<<<< HEAD
=======
	out.println(user);
	out.println("<br>");
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
	
	edu.sdfi.train.validate Validate = new edu.sdfi.train.validate();
	String showflag = Validate.ConfirmPass(user, password);%>
	<%if(showflag == "bingo"){%>
<<<<<<< HEAD
	<table>
		<tr>
			<td><% out.println("登录成功！");
			session.setAttribute("login","true"); //设置属性%></td>
		</tr>
		<tr>
			<td><a href="hello.jsp">学生座位管理系统</a></td>
		</tr>
		<tr>
			<td><a href="payManage.jsp">班费管理系统</a></td>
		</tr>
	</table>
	<%}else if (showflag == "error"){%>
	<table>	
		<tr>
			<td><%out.println("登录失败");%></td>
		</tr>
		<tr>
			<td><a href="login.jsp">重新登录</a></td>
		</tr>
	</table>
	<%} %>
=======
		<% out.println("登录成功！");
		session.setAttribute("login","true"); //设置属性%> 
		
			<a href="hello.jsp">点击转到网页</a>
		
	<%}else if (showflag == "error"){%>
		<%out.println("登录失败");%>
			
			<a href="login.jsp">重新登录</a>
	
	<%} %>

>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
</body>
</html>