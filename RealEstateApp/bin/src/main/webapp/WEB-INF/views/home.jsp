<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<estate:url value="/css/home.css "/>" rel="stylesheet"
	type="text/css">

</head>
<body>
	<header>

		<div class="main">

		<ul>
			<li class="active"><a href="#">Home</a></li>
			<li><a href="register" onclick="register()">Register</a></li>
			<li><a href="#" onclick="login()">User Login</a></li>
			<li><a href="#" onclick="admin()">Admin Login</a></li>
			<li><a href="#" onclick="properties()">Properties</a></li>

		</ul>
		</div>
		<div class="title">
			<h1>REAL ESTATE</h1>

		</div>

	</header>

</body>
</html>