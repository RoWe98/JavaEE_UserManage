<%@page import="edu.sdfi.train.validate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>End</title>
</head>
<body>
<%
	String user = request.getParameter("user");
	String password = request.getParameter("pwd");
	out.println(user);
	out.println("<br>");
	
	edu.sdfi.train.validate Validate = new edu.sdfi.train.validate();
	String showflag = Validate.ConfirmPass(user, password);%>
	<%if(showflag == "bingo"){%>
		<% out.println("登录成功！");
		session.setAttribute("login","true"); //设置属性%> 
		
			<a href="hello.jsp">点击转到网页</a>
		
	<%}else if (showflag == "error"){%>
		<%out.println("登录失败");%>
			
			<a href="login.jsp">重新登录</a>
	
	<%} %>

</body>
</html>