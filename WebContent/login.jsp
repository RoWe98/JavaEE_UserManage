<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录系统</title>
</head>
<body> 
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