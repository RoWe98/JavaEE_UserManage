<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
</head>
<body>
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
    	<td><input type="submit" value="登陆" onclick="return judge();"/></td>
	</tr>
</table>
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