<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%> 
 <%@ taglib prefix="validate" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<link  href="<estate:url value="/css/register.css "/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/jsregister.js"></script>
<style>  
.error{color:red}  
</style>
</head>
<body>

<div class="main">
<div class="register">
<h1> Real Estate User Registration Page</h1>
<validate:form id="register" modelAttribute="user" action="register" method="post">
<validate:label  path="fullName">Full Name : </validate:label>
<br>
<validate:input path="fullName"  minlength="4" maxlength="15" type="text"  name="fullName" id="name1" placeholder="Enter your Full Name"/>
<validate:errors path="fullName" cssClass="error" />
<br><br>

<label>Email : </label>
<br>
<input type="email" name="email" id="name2" placeholder="Enter your Mail Id">
<br><br>
<label>Password: </label>
<br>
<input type="password" name="password" id="name3" placeholder="Enter Password">
<br><br>
<label>Confirm Password : </label>
<br>
<input type="password" name="confirmPassword" id="name4" placeholder="Confirm your Password">
<br><br>
<input type="submit" value="Submit" name="submit" id="submit" onclick="registration()">
</validate:form>
</div>
</div>

</body>
</html>