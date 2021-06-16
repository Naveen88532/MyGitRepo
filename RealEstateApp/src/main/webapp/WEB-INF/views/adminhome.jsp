<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<estate:url value="/css/adminhome.css "/>" rel="stylesheet"
	type="text/css">
<title>Admin Operations</title>
</head>
<body>
<h1>Estate Management System</h1>
<table border="1" class="center">
<tr>
<th><h2>Pick Your Operation</h2></th>
</tr>
<tr>
<td><a href="addestate"><h3>Add a Estate</h3></a></td>
</tr>
<tr>
<td><a href="deleteestate"><h3>Delete a Estate</h3></a></td>
</tr>
<tr>
<td><a href="updateestate"><h3>Modify a Estate</h3></a></td>
</tr>
<tr>
<td><a href="getbylocation"><h3>Retrieve Estate by location</h3></a></td>
</tr>
<tr>
<td><a href="getall"><h3>Retrieve All Estates</h3></a></td>
</tr>
</table>
<form action="home" class="logout">
<input type="submit" value="Log out"/>
</form>
</body>
</html>
