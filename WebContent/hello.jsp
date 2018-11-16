
<%@page import="edu.sdfi.train.GetCurrentTime"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登陆</title>
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
	//判断是否登录
	
	String logined = (String)session.getAttribute("login");
	if(!"true".equals(logined)){
		response.sendRedirect("login.jsp");
	}
	
	
%>
<<<<<<< HEAD
=======
<script type="text/javascript">
	var date = new Date();
	document.write(date);
</script>
<br>
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
<%  
	edu.sdfi.train.GetCurrentTime time = new GetCurrentTime();
	String current_Date = time.getTime();
	String current_HMS = time.getHou_Min_Sec();
	String hello = time.Judge();
<<<<<<< HEAD
	//out.println(hello);
	//out.println("当前标准日期时间为:"+current_Date);
%>
<br>
<% request.setCharacterEncoding("utf-8");%>
<p style="text-align: center;"><script type="text/javascript">
	var date = new Date();
	document.write(date);
</script>
<br>
</p>
<p style="text-align: center;"><% out.println(hello);out.println("当前标准日期时间为:"+current_Date);%></p>
<p style="text-align: center;">学生座位管理系统</p>
<form action = "process.jsp">
	<table>
		<tr>
			<td>学号:<input type = "text" name = "sno"/></td>
		</tr>
		<tr>
			<td>姓名:<input type = "text" name = "sname"/></td>
		</tr>
		<tr>
			<td>行号:<input type = "text" name = "row"/></td>
		</tr>
		<tr>
			<td>列号:<input type = "text" name = "col"/></td>
		</tr>
		<tr>
			<td><input type = "submit" value = "提交"/></td>
		</tr>
		<tr>
			<td><a href="login.jsp">退出登录 
			<%session.removeAttribute("login");%>
			</a></td>
		</tr>
	</table>
</form>
=======
	out.println(hello);
	out.println("当前标准日期时间为:"+current_Date);
%>
<br>
<% request.setCharacterEncoding("utf-8");%>
学生座位管理系统<br>
<form action = "process.jsp">
	学号:<input type = "text" name = "sno"/><br>
	姓名:<input type = "text" name = "sname"/><br>
	行号:<input type = "text" name = "row"/><br>
	列号:<input type = "text" name = "col"/><br>
	<input type = "submit" value = "提交"/><br>
</form>
<a href="login.jsp">退出登录 
<%session.removeAttribute("login");%>
</a>
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
</body>
</html>