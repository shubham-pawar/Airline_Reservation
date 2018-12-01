<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
.button1 {
    background-color: orange; /* Orange */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
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
b{
color: orange;
 font-family:verdana;
 font-size: 28px;
}
</style>
</head>
<body>
<div class="w3-container">		
<h3 align="center"><u><b>INDIAJET AIRLINE</b></u></h3>
 <form action="load" method="get"> 
	<table border="1" class="w3-table-all w3-card-4">
		<tr>
				<th>FlightNumber</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Departure</th>
				<th>Arrival</th>
				<th>Duration</th>
				<th>Price</th>
				<th>Flydate</th>
				<!-- <th>Booking</th> -->
			</tr>
		
		<c:forEach items="${FlightData}" var="f"> 
                <tr>
						<td><a href="load">${f.flightnumber}</a></td>
						<td>${f.source}</td>
						<td>${f.destination}</td>
						<td>${f.depart}</td>
						<td>${f.arrive}</td>
						<td>${f.duration}</td>
						<td>${f.price}</td>
						<td>${f.flydate}</td>
   						<!-- <td><input type="submit" value="book" class="button1"></td> --> 
				</tr>
				
                </c:forEach>
	
<!-- 		<tr>
			<td><a href="login">Home</a></td>
			<td><input type="submit" value="Admin"></td>
					</tr> -->
	</table>
	</div>
</body>
</html>
