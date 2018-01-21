<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="user" class="dto.User"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>login</title>
<style>
span{
	color:red;
}
</style>
<script type="text/javascript">
	function validate()
	{		
			flag=true;

// 			var username1=document.getElementById("username");
// 			var username=username1.value;
			var username=document.loginform.userName.value;
// 			var password1=document.getElementById("password");
// 			var password=password1.value;
			var password=document.loginform.password.value;		
			
			var usernameregex=/^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/;
			var passwordregex=/^[a-zA-Z,._,0-9]{2,16}$/;
			
			if(!usernameregex.test(username))
			{
// 				var span1=document.getElementById("s1");
// 				span1.innerHTML="*Please Enter Valid User Name";
				alert("Enter Valid User Name");
				flag=false;
			}
			if(!passwordregex.test(password))
			{
// 				var span2=document.getElementById("s2");
// 				span2.innerHTML="*Please Enter Valid Password";
				alert("Enter Valid Password ");
				flag=false;
			}
			return flag;
			
			
		
	}
</script>

</head>
<body>
	<div align="center" class="w3-bar w3-black"><h2>V-Point</h2></div>
	
	<form name="loginform" action="UserValidate.jsp" method="post" onsubmit="return validate()">
<!-- 	<form method="post" onsubmit="return validate()"> -->
		<table align="center" class="w3-striped">
			<tr>
				<td>User Name :</td>
				<td><input type="text" name="userName" id="username" class="w3-input"></td><td><span id="s1"></span></td>
			</tr>
			
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password" id="password" class="w3-input"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</body>
</html>