<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<estate:url value="/css/deleteestate.css "/>" rel="stylesheet"
	type="text/css">
<title>Delete Estate</title>
</head>
<body>
<form action= "getinfo" class="box">
<table border="1">
<tr>
<td><h3>Estate Id</h3></td>
<td><input type="text" name="estateId"/></td>
<td><input type="submit"  value="delete"></td>
</tr>
</table>
</form>

<estate:if test="${estate != null }">
<h1>Estate Info</h1>

<table border="1">
<tr>
<th>Estate ID</th>
<th>Estate Name</th>
<th>Estate Location</th>
<th>Estate Owner</th>
<th>Estate Area</th>
<th>Estate Budget</th>
</tr>
<tr>
<td>${estate.estateId }</td>
<td>${estate.estateName}</td>
<td>${estate.estateLocation }</td>
<td>${estate.estateOwner}</td>
<td>${estate.estateArea }</td>
<td>${estate.estateBudget }</td>
</tr>
</table>

<form action="delete/${estate.estateId }">
<input type="submit" class="center" value= "delete"/>
</form>

</estate:if>
</body>
</html>