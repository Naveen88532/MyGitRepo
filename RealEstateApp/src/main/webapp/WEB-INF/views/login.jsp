<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href= "<estate:url value="/css/user.css"/>" rel="stylesheet" type="text/css">
<title>Login Page</title>
<script type="text/javascript">
function login()
{
	var uname = document.getElementById("email").value;
	var pwd = document.getElementById("pwd1").value;
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if(uname =='')
	{
		alert("please enter username and password.");
	}
	else if(pwd=='')
	{
    	alert("enter the password");
	}
	else if(!filter.test(uname))
	{
		alert("Enter valid email id.");
	}
	else if(pwd.length < 4 || pwd.length > 8)
	{
		alert("Password min length is 4 and max length is 8.");
	}
	else {
		alert('Thank You for Login & You are Redirecting to Real Estate Website');
		   window.location = "search";
	}
}
</script>
</head>
<body>
<form class="box" action="search">
<h1>User Login</h1>
<input type="text"  placeholder="Email id" id="email">
<input type="password"  placeholder="Password" id="pwd1">
<input type="submit"  value="Login" class="btn" onclick="login()" />
<a href="register">New User? Register here....</a>
</form>
</body>
</html>
