<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<estate:url value="/css/getbylocation.css "/>" rel="stylesheet"
	type="text/css">
<title>Get By Location</title>
</head>
<body>

<form action="getestatebylocation" class="box">
<label>Search by Location:</label>
<select name="estateLocation">
  <option value="Chennai">Chennai</option>
  <option value="Hyderabad">Hyderabad</option>
  <option value="Mumbai">Mumbai</option>
  <option value="Bangalore">Bangalore</option>
</select>
<input type="submit" class="center" value="Fetch"/>

<estate:if test="${estate != null }">
<h1>List of Estates by location</h1>

<table border="1">
<tr>
<th>Estate ID</th>
<th>Estate Name</th>
<th>Estate Location</th>
<th>Estate Owner</th>
<th>Estate Area</th>
<th>Estate Budget</th>
</tr>
<estate:forEach items="${estate}" var="estate" >
<tr>
<td>${estate.estateId }</td>
<td>${estate.estateName}</td>
<td>${estate.estateLocation }</td>
<td>${estate.estateOwner}</td>
<td>${estate.estateArea }</td>
<td>${estate.estateBudget }</td>
</tr>
</estate:forEach>
</table>
</estate:if>
</form>
<form action="adminhome" class="btn">
<input type="submit" value="back">
</form>
</body>
</html>