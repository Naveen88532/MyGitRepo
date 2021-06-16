<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href= "<estate:url value="/css/search.css "/>" rel="stylesheet" type="text/css">
<title>Search Estates by city..</title>
</head>
<body>
	<script>
      function hyderabad() {
        window.location.href = "hyderabad";
      }
      function mumbai() {
        window.location.href = "mumbai";
      }
      function chennai() {
        window.location.href = "chennai";
      }
      function banglore() {
        window.location.href = "banglore";
      }
    </script>
	<div class="center">
		<h1>Start your Search by city</h1>
		<input type="text" autocomplete="off" id="search"
			onkeyup="myFunction()" placeholder="Search for Cities.."
			title="Type in a name" />
		<ul id="get">
			<li><a href="hyderabad" onclick="hyderabad()">Hyderabad</a></li>
			<li><a href="mumbai" onclick="mumbai()">Mumbai</a></li>

			<li><a href="chennai" onclick="chennai()">Chennai</a></li>
			<li><a href="bangalore" onclick="banglore()">Banglore</a></li>
		</ul>
	</div>
	
	<script>
      function myFunction() {
        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("search");
        filter = input.value.toUpperCase();
        ul = document.getElementById("get");
        ul.style.display="block";
        li = ul.getElementsByTagName("li");
        for (i = 0; i < li.length; i++) {
          a = li[i].getElementsByTagName("a")[0];
          txtValue = a.textContent || a.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
          } else {
            li[i].style.display = "none";
          }
        }
      }
    </script>
    <form action="home" >
			<input type="submit" class="btn" value="back">
		</form>
</body>
</html>
