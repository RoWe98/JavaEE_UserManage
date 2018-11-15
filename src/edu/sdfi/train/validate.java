package edu.sdfi.train;

import java.sql.*;


public class validate {
	
	String Success;
	
	public String LoadInfo(String user,String password,String truename,String sex,String age, String driver,String url) {
		String usersql= "yourmysqlaccount"; //你的mysql账号
		String passwordsql = "yourmysqlpassword";  //你的mysql密码
		try{
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url,usersql,passwordsql);
			 if(conn != null){  
				 Success = "true";
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
		return Success;
	}
	
	
	public String ConfirmPass(String user,String password) {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/javaeeweb";
		String usersql= "yourmysqlaccount"; //你的mysql账号
		String passwordsql = "yourmysqlpassword"; //你的mysql密码
		String showflag = null;
		try{
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url,usersql,passwordsql);
			PreparedStatement stmt = null;
			ResultSet rs = null;
			
			if(conn != null){  
				/*
	             out.print("数据库连接成功！");
	             out.print("<br />");
	             */
	             boolean flag = true;
			 	 if(flag){
			 		 String sql = "select * from submit where username=? and password=?;";
			 		 stmt = conn.prepareStatement(sql);
			 		 stmt.setString(1, user);
			 		 stmt.setString(2, password);
			 	 	 rs = stmt.executeQuery();
	
	 	 	 
			 	 	 if(rs.next()){
			 	 		 System.out.println("登陆成功！");
			 	 		 flag = false;
			 	 		 showflag = "bingo";
			 	 	 }
			 	 	 else{
			 	 		 System.out.println("登录失败！");
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
		return showflag;
	}
}
