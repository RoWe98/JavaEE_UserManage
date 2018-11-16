<%@page import="edu.sdfi.train.GetCurrentTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>班费管理系统</title>
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
	//判断是否登录
	
	String logined = (String)session.getAttribute("login");
	if(!"true".equals(logined)){
		response.sendRedirect("login.jsp");
	}
	
	
%>

<%
	edu.sdfi.train.GetCurrentTime time = new GetCurrentTime();
	String current_Date = time.getTime();
	String hello = time.Judge();	
%>

<% request.setCharacterEncoding("utf-8");%><br>
<p style="text-align: center;"><% out.println(hello);out.println("当前标准日期时间为:"+current_Date);%></p>
<p style="text-align: center;">班费管理系统</p>
<form action = "payManagePg.jsp">
	<table>
		<tr>
				<td>编号:<input type = "text" name = "id"/></td>
		</tr>
		<tr>
				<td>支出:<input type = "text" name = "payment"/></td>
		</tr>
		<tr>
				<td>收入:<input type = "text" name = "income"/></td>
		</tr>
		<tr>
				<td>剩余:<input type = "text" name = "left"/></td>
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

</body>
</html>
