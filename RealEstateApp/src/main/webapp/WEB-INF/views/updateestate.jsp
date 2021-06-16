<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="<estate:url value="/css/updateestate.css "/>" rel="stylesheet"
	type="text/css">
<title>Update Estate</title>
</head>
<body>
	<h2>Modify Operation</h2>
	<form action="getestateinfo" class="box">
		<table border="1">
			<tr>
				<td>Estate Id</td>
				<td><input type="text" name="estateId" /></td>
				<td><input type="submit" class="center" value="Update"></td>
			</tr>
		</table>
	</form>

	<estate:if test="${estate != null }">
		<h1>Estate Info</h1>

		<form action="update/${estate.estateId}" method="post">
			<table>
				<tr>
					<td>Estate Id</td>
					<td><input type="text" name="estateId"
						value="${estate.estateId }" readonly="readonly"></td>
				</tr>

				<tr>
					<td>Estate Name</td>
					<td><input type="text" name="estateName"
						value="${estate.estateName }"></td>
				</tr>

				<tr>
					<td>Estate Location</td>
					<td><input type="text" name="estateLocation"
						value="${estate.estateLocation}"></td>
				</tr>

				<tr>
					<td>Estate Owner</td>
					<td><input type="text" name="estateOwner"
						value="${estate.estateOwner }"></td>
				</tr>
				<tr>
					<td>Estate Area</td>
					<td><input type="text" name="estateArea"
						value="${estate.estateArea }"></td>
				</tr>
				<tr>
					<td>Estate Budget</td>
					<td><input type="text" name="estateBudget"
						value="${estate.estateBudget }"></td>
				</tr>

				<tr>
					<td></td>
					<td><input type="submit" class="center" value="update"></td>
				</tr>

			</table>

		</form>

	</estate:if>

</body>
</html>