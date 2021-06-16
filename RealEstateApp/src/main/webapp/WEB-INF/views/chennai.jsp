<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="estate" uri="http://java.sun.com/jsp/jstl/core"%>
<Doctype html>
<html>
<head>
<link rel="stylesheet" href="chennai.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="boxed">
<h1 style="text-align:center"><u><b>Estates at Chennai</b></u></h1>

<h2 style="text-align:center"><b> 1. HOLIDAY VILLA</b>:</h2>
<div class="slideshow-container">
  <div class="mySlides1">
      <img src="<%=request.getContextPath()%>/images/che1.jpg" style="width:100%"/>
  </div>

  <div class="mySlides1">
     <img src="<%=request.getContextPath()%>/images/che1.1.jpg" style="width:100%"/>
  </div>

  <div class="mySlides1">
      <img src="<%=request.getContextPath()%>/images/che1.2.jpg" style="width:100%"/>
  </div>

  <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
<p class="blocktext"><button class="btn" ><i class="fa fa-download"></i><a href="<%=request.getContextPath()%> /pdf/Chennai1.pdf" download="/pdf/Chennai1.pdf"> Download Brochure</button></a></p>

</div>
</div>

<div class="boxed">
<h2 style="text-align:center"> <b> 2. CUTE VILLA </b></h2>
<div class="slideshow-container">
  <div class="mySlides2">
      <img src="<%=request.getContextPath()%>/images/che2.jpg" style="width:100%"/>
  </div>

  <div class="mySlides2">
      <img src="<%=request.getContextPath()%>/images/che2.1.jpg" style="width:100%"/>
  </div>

  <div class="mySlides2">
      <img src="<%=request.getContextPath()%>/images/che2.2.jpg" style="width:100%"/>
  </div>

  <a class="prev" onclick="plusSlides(-1, 1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 1)">&#10095;</a>
<p class="blocktext"><button class="btn" ><i class="fa fa-download"></i> <a href=" " download=" ">Download Brochure</button></a></p>

</div>
</div>

<script type="text/javascript">
var slideIndex = [1,1];
var slideId = ["mySlides1", "mySlides2",]
showSlides(1, 0);
showSlides(1, 1);

function plusSlides(n, no) {
  showSlides(slideIndex[no] += n, no);
}

function showSlides(n, no) {
  var i;
  var x = document.getElementsByClassName(slideId[no]);
  if (n > x.length) {slideIndex[no] = 1}    
  if (n < 1) {slideIndex[no] = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex[no]-1].style.display = "block";  
}
</script>
</body>
</html>
