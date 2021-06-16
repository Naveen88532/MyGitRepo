<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<estate:url value="/css/addestate.css "/>" rel="stylesheet"
	type="text/css">
<title>Add Estate</title>
</head>
<body>
<form action="save" class="box" method="post">
<h1>Enter Estate Details</h1>
<table>
<tr>
<td>Estate Id</td>
<td><input type="text" name="estateId" /></td>
</tr>
<tr>
<td>Estate Name</td>
<td><input type="text" name="estateName" /></td>
</tr>

<tr>
<td>Estate Location</td>
<td class="radiobtn">
<input type="radio" name="estateLocation" value="Hyderabad">Hyderabad
<input type="radio" name="estateLocation" value="Bangalore">Bangalore
<input type="radio" name="estateLocation" value="Chennai">Chennai
<input type="radio" name="estateLocation" value="Mumbai">Mumbai
</td>

</tr>
<tr>
<td>Estate Owner</td>
<td><input type="text" name="estateOwner" /></td>
</tr>

<tr>
<td>Estate Area</td>
<td><input type="text" name="estateArea" /></td>
</tr>

<tr>
<td>Estate Budget</td>
<td><input type="text" name="estateBudget" /></td>
</tr>

<tr>
<td><input type="submit" name="add" class="center" value="Add Estate"/></td>
<td></td>
</tr>

</table>

</form>

</body>
</html>