<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册信息</title>
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
</table>
<% 
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/javaeeweb";
	String usersql= "root";
	String passwordsql = "LSQhsq5211314mxx";
	try{
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,usersql,passwordsql);
		 if(conn != null){  
             out.print("数据库连接成功！");
             out.print("<br />");
		 	 Statement stmt = conn.createStatement();
		 	 String sql = "INSERT INTO submit(username, password, realname, sex, age) VALUES ('"+user+"', '"+password+"', '"+truename+"', '"+sex+"', '"+age+"')";
		 	 stmt.executeUpdate(sql);
        
		 }
	}catch(ClassNotFoundException e){
		System.out.println("Can not find the driver!");
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>