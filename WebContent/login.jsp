<<<<<<< HEAD
<%@page import="edu.sdfi.train.GetCurrentTime"%>
=======
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录系统</title>
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
</head>
<body> 
<%
	edu.sdfi.train.GetCurrentTime time = new GetCurrentTime();
	String current_Date = time.getTime();
	String hello = time.Judge();
%>
<p style="text-align: center;"><% out.println(hello);out.println("当前标准日期时间为:"+current_Date);%></p>
<p style="text-align: center;">多功能管理系统</p>
=======
</head>
<body> 
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
	<form action = "validate.jsp" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text"name="user" id="user"/></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password"name="pwd" id="pwd"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交"/></td>
			</tr>
			<tr>
				<td></td>
				<td><a href="submit.jsp">注册</a></td>
			</tr>
		</table>
	</form>
<% 
/*
	String pageName = request.getParameter("pageName");
	Integer count = (Integer)application.getAttribute(pageName);
	if(count != null){
		count = new Integer(0);
	}
	count =  new Integer(count.intValue()+1);
	application.setAttribute(pageName, count);
	out.println(count);
*/
	
%>
</body>
</html>