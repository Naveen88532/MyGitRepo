<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<estate:url value="/css/getall.css "/>" rel="stylesheet"
	type="text/css">
<title>Get All Estates</title>
</head>
<body>
<h1>List of Estates with Details</h1>

<table border="1" class="box">
<tr>
<th>Estate ID</th>
<th>Estate Name</th>
<th>Estate Location</th>
<th>Estate Owner</th>
<th>Estate Area</th>
<th>Estate Budget</th>
</tr>
<c:forEach items="${estates}" var="estate" >
<tr>
<td>${estate.estateId }</td>
<td>${estate.estateName}</td>
<td>${estate.estateLocation }</td>
<td>${estate.estateOwner}</td>
<td>${estate.estateArea }</td>
<td>${estate.estateBudget }</td>
</tr>
</c:forEach>
</table>
<form action="adminhome" class="btn">
<input type="submit" value="back">
</form>
</body>
</html>