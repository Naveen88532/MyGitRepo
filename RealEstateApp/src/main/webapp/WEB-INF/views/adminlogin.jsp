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
</head>
<body>
	<form class="box" action="verifyadmin" id="form" method="post">
		<h1>Admin Login</h1>
		<input type="text" placeholder="Username" id="userName" name="userName"/> 
		<input type="password" placeholder="Password" id="password" name="password"/> 
		<input type="submit" name="Login" id="submit" value="Login" onclick=validate()/>
	</form>
</body>
<script type="text/javascript">
function validate(){
let email = document.getElementById('userName'); 
let pwd = document.getElementById('password');
let email_fail document.getElementById('email_fail'); 
let pwd_fail document.getElementById('pwd_fail');
let form = document.getElementById('form');

form.addEventListener('submit', function(e)
if(!email.value.includes ("@"))
{
email_fail.innerText= "Enter valid email"; 
email_fail.style.color="red";
e.preventDefault();
}
else
email_fail.innerText = "";

if(pwd.value.length === 0 || pwd.value== null)
{
pwd_fail.innerText= "password field should not be empty"; 
pwd_fail.style.color="red";
e.preventDefault();
}
 else
pwd fail.innerText = "";

)}
}
</script>
</html>