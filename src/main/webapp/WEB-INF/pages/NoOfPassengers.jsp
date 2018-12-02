<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page errorPage="ErrorPage.jsp" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
<title>Passengers</title>

<style type="text/css">
select{
  background:transparent;
   width: 250px;
   padding: 4px;
   font-family:Times New Roman;
   font-size:20px;
   font-weight:600;
   color:#fff;
   line-height: 1;
   border: 0;
   border-radius: 0;
   height: 30px;
  -webkit-appearance: none;
 
  }

.select-div{
	width: 20px;
	height: 40px;
	overflow: hidden;
	background: url(arrowhead.png) no-repeat right #363636;
	border-top:#575757 2px solid;
	-webkit-border-radius: 4px 4px 4px 4px;
	 -moz-border-radius: 4px 4px 4px 4px;
		  border-radius: 4px 4px 4px 4px;
	-webkit-box-shadow: inset 0 2px 4px rgba(107, 105, 105, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
	 -moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
		  box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
		  -moz-box-shadow:    0px 8px 3px -9px #000000;
		  -webkit-box-shadow: 0px 8px 3px -9px #000000;
		  box-shadow:         0px 8px 3px -9px #000000;
}

select > option {
  background: grey;
}

</style>

<style> 
input[type=text] {
    width: 40%;
    font-size:20px;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    
}
b{
 color: orange;
 font-family:verdana;
 /* background-color: White; */
 font-size: 24px;
 font-color: black;
}
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
<style type="text/css">
body
{
  background:linear-gradient(0deg,rgba(255,161,127,0.3),rgba(0,34,62,0.3)),url(images/passenger1.jpg);
/* background-image: url("images/seat.jpg"); */
background-position: center;
 height: 711px;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

</style>
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
function change() {
    var select = document.getElementById("slct");
    var divv = document.getElementById("container");
    var value = select.value;
    
    if (value == 1) {
        toAppend = "<br><br><b>&nbsp;<input type='text' id='txtbox' placeholder='Passenger 1 Name' required>"; divv.innerHTML=toAppend; return;
        }
        if (value == 2) {
            toAppend = "<br><br><b><input type='text' id='txtbox' placeholder='Passenger 1 Name' required><br><br><input type='text' id='txtbox' placeholder='Passenger 2 Name' required>";divv.innerHTML = toAppend;  return;
        }
        if (value = 3) {
            toAppend = "<br><br><b><input type='text' id='txtbox' placeholder='Passenger 1 Name' required><br><br><input type='text' id='txtbox' placeholder='Passenger 2 Name' required><br><br><input type='text' id='txtbox' placeholder='Passenger 3 Name' required>";divv.innerHTML = toAppend;  return;
        }
        
}
 </script>
 
 </head>
<body>
<div style="background-color:orange; height:75px; padding: 5px;">

  <h1 align="center"  style="font-size: 35px; color:White" >INDIAJET TICKET BOOKING</h1>
</div>
<br>
<form action="seat"><center>
<div class="select-div" style="width:200px;">
<select id="slct" name="sel" onchange="change();">
<option value="1"> 1 </option>
<option value="2"> 2 </option>
<option value="3"> 3 </option>
</select></div><br><br>
<div id="container"></div>
<input type="submit" value="Continue" class="button1"> 
</center>
</form>
  </body>
   </html>