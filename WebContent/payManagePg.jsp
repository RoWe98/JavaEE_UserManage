<%@page import="edu.sdfi.train.validate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>结果显示</title>
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
	String id = request.getParameter("id");
	String payment = request.getParameter("payment");
	String income = request.getParameter("income");
	String left = request.getParameter("left");
%>

<table>
	<tr>
		<td><% out.println("您的录入信息为：");%></td>	
	</tr>
	<tr>
		<td><% out.println("编号："+id);%></td>		
	</tr>
	<tr>
		<td><% out.println("支出："+payment);%></td>	
	</tr>
	<tr>
		<td><% out.println("收入："+income);%></td>		
	</tr>
	<tr>
		<td><% out.println("剩余："+left);%></td>	
	</tr>

	<tr>
		<td><a href = "payManage.jsp">返回系统
		<% session.setAttribute("login","true");%></a></td>
	</tr>
	<tr>
		<td><% 
	
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/costmanage";
			String loadFlag;
			validate loadpay = new validate();
			loadFlag = loadpay.LoadPayMent(id, payment, income, left, driver, url);
			if(loadFlag == "true"){
				out.println("数据已经录入数据库");
			}
			else{
				out.println("数据已经录入失败");
			}
	
			%>		
		</td>
	</tr>
</table>


</body>
</html>