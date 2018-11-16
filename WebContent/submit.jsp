<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>submit</title>
<<<<<<< HEAD
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
<p style="text-align: center;">输入用户名和密码完成注册</p>
<form action = "showsubmit.jsp" method="post">
=======
</head>
<body>
<form action = "showsubmit.jsp" method="post">
	请输入用户名和密码完成注册！<br>
	*为必填，且密码不能小于6位
>>>>>>> b6947c858e2047a22eb4873eeab849a66847fb59
	<table>
	    <tr>
	        <td><font color="red">*</font>用户名：</td>
	        <td><input type="text"name="user" id="user" /></td>
	    </tr>
	     
	    <tr>
	        <td><font color="red">*</font>密码：</td>
	        <td><input type="password"name="pwd" id="pwd" /></td>
	    </tr>
	    <tr>
	        <td><font color="red">*</font>真实姓名：</td>
	        <td><input type="text"name="truename" id="truename" /></td>
	    </tr>
	    <tr>
	        <td><font color="red">*</font>性别：</td>
	        <td><input type="radio"name="sex" value="男" id="man"/>男<input type="radio"name="sex" value="女" id="women"/>女</td>
	    </tr>
	 	<tr>
	        <td><font color="red">*</font>年龄：</td>
	        <td><input type="text"name="age" id="age" /></td>
	    </tr>
	    <tr>
	    	<td><input type="submit" value="提交" onclick="return judge();"/></td>
		</tr>
	</table>
</form>
<script>
	function judge(){
		var user = document.getElementById("user").value;
		var pwd= document.getElementById("pwd").value;
		if(user.trim() == "" || pwd.trim() == ""){
			alert("用户和密码不能为空");
		return false;
		}else if(pwd.length < 6){
			alert("密码不能低于6位");
			return false;
		}
		return true;
	}
</script>
</body>
</html>