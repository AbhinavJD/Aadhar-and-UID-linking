<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="w3.css">
<title>Insert title here</title>
<style type="text/css">
	
</style>
<script type="text/javascript">
	
function checkForm(form)
{
  if(form.userName.value == "") {
    alert("Error: Email Id cannot be blank!");
    form.userName.focus();
    return false;
  }
  re = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/;
  if(!re.test(form.userName.value)) {
    alert("Error: userName must contain only letters, numbers and underscores!");
    form.userName.focus();
    return false;
  }

  if(form.password.value != "" && form.password.value == form.repass.value) {
    if(form.password.value.length < 6) {
      alert("Error: Password must contain at least six characters!");
      form.password.focus();
      return false;
    }
    if(form.password.value == form.userName.value) {
      alert("Error: Password must be different from userName!");
      form.password.focus();
      return false;
    }
    re = /[0-9]/;
    if(!re.test(form.password.value)) {
      alert("Error: Password must contain at least one number (0-9)!");
      form.password.focus();
      return false;
    }
    re = /[a-z]/;
    if(!re.test(form.password.value)) {
      alert("Error: Password must contain at least one lowercase letter (a-z)!");
      form.password.focus();
      return false;
    }
    re = /[A-Z]/;
    if(!re.test(form.password.value)) {
      alert("Error: Password must contain at least one uppercase letter (A-Z)!");
      form.password.focus();
      return false;
    }
  } else {
    alert("Error: Passwords dont match!");
    form.password.focus();
    return false;
  }

  alert("Registration Successfull!!");
  return true;
}

</script>

</head>
<body>
	<div align="center" class="w3-bar w3-black"><h2>V-Point</h2>
	<a href="Login.jsp" class="w3-display-topright">Login</a>
	</div>
	
	<form name="form" action="Insert.jsp" onsubmit="return checkForm(this);" class="w3-container">
	<h3 align="center" class="w3-container w3-green">Enter following Credentials</h3>
	<table align="center" class="w3-striped">
		<tr>
			<td>Email Id :</td>
			<td><input type="text" name="userName" class="w3-input"></td>
		</tr>
		<tr>
			<td>Password :</td>
			<td><input type="password" name="password" class="w3-input"></td>
		</tr>
		<tr>
			<td>Re-Enter Password :</td>
			<td><input type="password" name="repass" class="w3-input"></td>
			
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="Sign Up" class="w3-button"></td>
		</tr>
	</table>
	</form>
</body>
</html>