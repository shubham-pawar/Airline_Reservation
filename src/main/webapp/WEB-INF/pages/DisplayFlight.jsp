<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Flight</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

<style> 
input[type=submit] {
    background-color: orange;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
input[type=text] {
    width: 30%;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
            $(document).ready(function(){
              $("#searchFlightDetails").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#flightList tr").filter(function() {
                  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
              });
            });
        </script>
</head>
<body>

		<hr>
		<div class="w3-container">		
		<form action="back" method="get">
		<input type="submit" value="Back"><br>
			<i class="fas fa-search"></i>&nbsp;Search&nbsp;&nbsp;<input type="text" id="searchFlightDetails">
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
			</tr>
			<tbody id="flightList">
	 			<c:forEach items="${listFlight}" var="f"> 
                <tr>
						<td>${f.flightnumber}</td>
						<td>${f.source}</td>
						<td>${f.destination}</td>
						<td>${f.depart}</td>
						<td>${f.arrive}</td>
						<td>${f.duration}</td>
						<td>${f.price}</td>
						<td>${f.flydate}</td>
				</tr>
                </c:forEach>
</tbody>
			</table>
			</form>
			</div>
			
</body>
</html>