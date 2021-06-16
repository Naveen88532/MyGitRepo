<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href= "<estate:url value="/css/user.css"/>" rel="stylesheet" type="text/css">
<title>Login Page</title>
</head>
<body>
<form class="box" action="search">
<h1>User Login</h1>
<input type="text"  placeholder="Email id" id="email">
<input type="password"  placeholder="Password" id="pwd1">
<input type="submit"  value="Login" class="btn"/>
<a href="register">New User? Register here....</a>
</form>
</body>
</html>
