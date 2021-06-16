<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<estate:url value="/css/error.css "/>" rel="stylesheet"
	type="text/css">
<title>Login Error</title>
</head>
<body>
<form action="adminlogin">
<h1>Login Failed...Invalid credentials!!</h1>
<input type="submit" class="btn" value="Try again"/>
</form>
</body>
</html>