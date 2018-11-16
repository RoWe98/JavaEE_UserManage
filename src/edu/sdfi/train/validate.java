package edu.sdfi.train;

import java.sql.*;


public class validate {
	
<<<<<<< HEAD
	String Success; //学生座位管理系统成功标志
	String Successpay; //班费管理系统成功标志
	
	public String LoadInfo(String user,String password,String truename,String sex,String age, String driver,String url) {
		String usersql= "root";
		String passwordsql = "LSQhsq5211314mxx";
=======
	String Success;
	
	public String LoadInfo(String user,String password,String truename,String sex,String age, String driver,String url) {
		String usersql= "yourmysqlaccount"; //你的mysql账号
		String passwordsql = "yourmysqlpassword";  //你的mysql密码
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
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
<<<<<<< HEAD
		String usersql= "root";
		String passwordsql = "LSQhsq5211314mxx";
=======
		String usersql= "yourmysqlaccount"; //你的mysql账号
		String passwordsql = "yourmysqlpassword"; //你的mysql密码
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
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
<<<<<<< HEAD
	
	public String LoadPayMent(String id,String payment,String income,String left, String driver,String url) {
		String usersql= "root";
		String passwordsql = "LSQhsq5211314mxx";
		try{
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url,usersql,passwordsql);
			 if(conn != null){  
				 Successpay = "true";
			 	 Statement stmt = conn.createStatement();
			 	 String sql = "INSERT INTO cost(id, payment, income, leftM) VALUES ('"+id+"', '"+payment+"', '"+income+"', '"+left+"');";
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
		return Successpay;
	}
	
=======
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
}
