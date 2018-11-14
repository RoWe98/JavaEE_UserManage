<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String submitName=request.getParameter("submitUserName");
	String submitPass=request.getParameter("submitUserPass");
	
	edu.sdfi.train.GetItem item=new edu.sdfi.train.GetItem();
	item.getInfo(submitName,submitPass);
	out.println(submitName+"注册成功！");
	out.println("<br>");
	
%>
<a href="login.jsp">返回登陆</a>
</body>
</html>