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
	/*
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/javaeeweb";
	String usersql= "root";
	String passwordsql = "LSQhsq5211314mxx";
	String showflag = null;
	try{
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,usersql,passwordsql);
		PreparedStatement stmt = null;
		ResultSet rs = null;
		if(conn != null){  
             out.print("数据库连接成功！");
             out.print("<br />");
             boolean flag = true;
		 	 if(flag){
		 		 String sql = "select * from submit where username=? and password=?;";
		 		 stmt = conn.prepareStatement(sql);
		 		 stmt.setString(1, user);
		 		 stmt.setString(2, password);
		 	 	 rs = stmt.executeQuery();

 	 	 
		 	 	 if(rs.next()){
		 	 		 out.println("登陆成功！");
		 	 		 flag = false;
		 	 		 showflag = "bingo";
		 	 	 }
		 	 	 else{
		 	 		 out.println("登录失败！");
		 	 		 flag = true;
		 	 		 showflag = "error";
		 	 	 }

		 	 }
		 }
	}catch(ClassNotFoundException e){
		System.out.println("Can not find the driver!");
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}
	*/
	
	edu.sdfi.train.validate Validate = new edu.sdfi.train.validate();
	String showflag = Validate.Confirm(user, password);%>
	<%if(showflag == "bingo"){%>
		<% out.println("登录成功！");%>
		
			<a href="hello.jsp">点击转到网页</a>
		
	<%}else if (showflag == "error"){%>
		<%out.println("登录失败");%>
			<a href="login.jsp">重新登录</a>
	<%} %>

</body>
</html>