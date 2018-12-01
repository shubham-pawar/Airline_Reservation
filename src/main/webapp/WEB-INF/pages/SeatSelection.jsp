<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seat Selection</title>
</head>
<style>
/* The container */
.container {
   
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
    height: 0;
    width: 0;
}

/* Create a custom checkbox */
.checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
    background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
    background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
    display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
    left: 9px;
    top: 5px;
    width: 5px;
    height: 10px;
    border: solid white;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
}
</style>
<style>
.button1 {
    background-color: orange; /* Orange */
    border-radius: 25px;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: underline;
    font-family: "Times New Roman", Times, serif;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid orange;
}

.button1:hover {
    background-color: orange;
    color: white;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('.single-checkbox').on('change', function() {
	   if($('.single-checkbox:checked').length > ${msg}) {
	       this.checked = false;
	       alert("allowed only "+${msg});
	   }
	});
	});
</script>

</script>
<style>
body
{
  background:linear-gradient(0deg,rgba(255,161,127,0.3),rgba(0,34,62,0.3)),url(images/seat.jpg);
/* background-image: url("images/seat.jpg"); */
background-position: center;
 height: 711px;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.container,h3
{
 color: #FFE4E1;
 font-family:verdana;
}

</style>
<body>
<div style="background-color:orange; height:75px; padding: 5px;">
  <h1 align="center"  style="font-size: 35px; color:White" >INDIAJET SEAT SELECTION</h1>
</div>

<center><br><br>
<c:forEach begin="1" end="5" var="i" varStatus="loop">
<c:forEach begin="1" end="5" var="j" varStatus="loop">
 <label class="container"><c:out value = "${i}-${j}"/><input type="checkbox" class="single-checkbox" name="input${i}${j}">
 &nbsp;&nbsp;&nbsp;<span class="checkmark"></span></label>
  </c:forEach>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <c:forEach begin="6" end="10" var="j" varStatus="loop">
 <label class="container"><c:out value = "${i}-${j}"/><input type="checkbox" class="single-checkbox" name="input${i}${j}">
 &nbsp;&nbsp;&nbsp;<span class="checkmark"></span></label>
  </c:forEach><br><br>
</c:forEach>
<h3>Number Of Flights to select: ${msg}</h3>
<div id="container"></div>
<a href="payment"><input type="button" class="button1" value="continue"></a>
</center>
</body>
</html>