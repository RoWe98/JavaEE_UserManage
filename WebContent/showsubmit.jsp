<%@page import="edu.sdfi.train.validate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册信息</title>
<<<<<<< HEAD
<style>
	
	
	table{
		width:300px;
		height:300px;
		border:1px solid white;
		margin:auto;
		margin-top:50px
	}
</style>
=======
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
</head>
<body>
<% 
	String user = request.getParameter("user");
	String password = request.getParameter("pwd");
	String truename = new String(request.getParameter("truename").getBytes("ISO-8859-1"),"utf-8");
	String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"utf-8");
	String age = request.getParameter("age");
%>
<table>
	<tr>
		<td><% out.println("您的注册信息为：");%></td>	
	</tr>
	<tr>
		<td><% out.println("用户名："+user);%></td>		
	</tr>
	<tr>
		<td><% out.println("密码："+password);%></td>	
	</tr>
	<tr>
		<td><% out.println("真实姓名："+truename);%></td>		
	</tr>
	<tr>
		<td><% out.println("性别："+sex);%></td>	
	</tr>
	<tr>
		<td><% out.println("年龄："+age);%></td>		
	</tr>
	<tr>
		<td><a href = "login.jsp">返回登录</a></td>
	</tr>
<<<<<<< HEAD
	<tr>
		<td>
		<% 
=======
</table>
<% 
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/javaeeweb";
		String loadFlag;
		validate load = new validate();
		loadFlag = load.LoadInfo(user,password,truename,sex,age,driver,url);
		if(loadFlag == "true"){
			out.println("数据已经录入数据库");
		}
		else{
			out.println("数据已经录入失败");
		}
<<<<<<< HEAD
		%>
		</td>
	</tr>
</table>
=======
%>
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
</body>
</html>