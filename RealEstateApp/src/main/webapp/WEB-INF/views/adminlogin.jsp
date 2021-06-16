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
		<input type="text" placeholder="Username" id="email" name="userName"/> 
		<input type="password" placeholder="Password" id="pwd1" name="password"/> 
		<input type="submit" name="Login" id="submit" value="Login" onclick="login()"/>
	</form>

</body>
</html>