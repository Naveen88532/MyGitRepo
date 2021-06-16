<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%> 
 <%@ taglib prefix="validate" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<link href="<estate:url value="/css/register.css "/>" rel="stylesheet" type="text/css">
<style>  
.error{color:red}  
</style>
</head>
<body>

<div class="main">
<div class="register">
<h1> User Registration</h1>
<validate:form id="register" modelAttribute="user" action="login" method="post">
<validate:label  path="fullName">Full Name : </validate:label>
<br>
<validate:input path="fullName"  minlength="6" maxlength="15" type="text"  name="fullName" id="name1" placeholder="Enter your Full Name"/>
<validate:errors path="fullName" cssClass="error" />
<br><br>

<validate:label path="email">Email : </validate:label>
<br>
<validate:input type="email" path="email" name="email" id="name2" placeholder="Enter your Mail Id"></validate:input>
<validate:errors path="email" cssClass="error" />
<br><br>
<validate:label path="password">Password: </validate:label>
<br>
<validate:input type="password" minlength="4" maxlength="15" path="password" name="password" id="name3" placeholder="Enter Password"/>
<validate:errors path="password" cssClass="error" />
<br><br>
<validate:label path="confirmPassword">Confirm Password : </validate:label>
<br>
<validate:input type="password" path="confirmPassword" name="confirmPassword" id="name4" placeholder="Confirm your Password"/>
<validate:errors path="confirmPassword" cssClass="error" />
<br><br>
<input type="submit" value="Submit" name="submit" id="submit">
</validate:form>
</div>
</div>

</body>
</html>