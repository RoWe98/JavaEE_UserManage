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
</head>
<body>
<script type="text/javascript">
	var date = new Date();
	document.write(date);
</script>
<br>
<%  
	edu.sdfi.train.GetCurrentTime time = new GetCurrentTime();
	String current_Date = time.getTime();
	String current_HMS = time.getHou_Min_Sec();
	String hello = time.Judge();
	out.println(hello);
	out.println("当前标准日期时间为:"+current_Date);
%>
<br>
<% request.setCharacterEncoding("utf-8");%>
This is my JSP page.<br>
<form action = "process.jsp">
	学号:<input type = "text" name = "sno"/><br>
	姓名:<input type = "text" name = "sname"/><br>
	行号:<input type = "text" name = "row"/><br>
	列号:<input type = "text" name = "col"/><br>
	<input type = "submit" value = "提交"/><br>
</form>
<a href="login.jsp">退出</a>
</body>
</html>