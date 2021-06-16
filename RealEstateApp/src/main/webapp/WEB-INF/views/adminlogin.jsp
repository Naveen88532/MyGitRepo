<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<link href="<estate:url value="/css/admin.css "/>" rel="stylesheet"
	type="text/css">
<style>
.error {
	color: red
}
</style>
<title>Login Page</title>
<script type="text/javascript">
function login()
{
	var uname = document.getElementById("email").value;
	var pwd = document.getElementById("pwd1").value;
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if(uname =='')
	{
		alert("please enter user name.");
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
	else
	{
alert('Thank You for Login & You are Redirecting to Real Estate Website');
//Redirecting to other page or webste code or you can set your own html page.
   window.location = "adminverify";
		}
}
</script>
</head>
<body>
	<form class="box" action="verifyadmin" id="form" method="post">
		<h1>Admin Login</h1>
		<input type="text" placeholder="Username" id="email" name="userName"/> 
		<input type="password" placeholder="Password" id="pwd1" name="password"/> 
		<input type="submit" name="Login" id="submit" value="Login" onclick=login()/>
	</form>
</body>
</html>