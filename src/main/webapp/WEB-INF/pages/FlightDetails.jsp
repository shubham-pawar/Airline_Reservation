<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page errorPage="ErrorPage.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>

<title>ADD FLIGHT</title>
<style type="text/css">
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 40%;
    background-color: #FFA500;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #ff6600;
}

div {
    border-radius: 5px;
    padding: 20px;
}
#s1{
width: 15%;
    background-color: #FFA500;
    color: white;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

</style>
</head>
<body>
	
<div>
	<form action="addProcess" method="post"  >

<table  border="0px" width="480px" cellpadding="0" cellspacing="0" align="center">
<center><tr>
   <td><h1 align="center">INDIAJET AIRLINES</h1></td>
</tr><center>
		<table  border="0px" width="480px" cellpadding="0" cellspacing="0" align="center">
							<tr>
							<td align="center"><label for="">Flight Number</label></td>
							<td align="center"><input type="text" name="flightnumber" required></td>
							</tr>
					
							<tr>
							<td align='center'><label for="">Source</label></td>
							<td align="center"><input type="text" class="form-control" name="source" required></td>
							</tr>
							
							<tr>
							<td align='center'><label for="">Destination</label></td>
							<td align="center"><input type="text" class="form-control" name="destination" required></td>
							</tr>
							
							<tr>
							<td align='center'><label for="">Depart</label></td>
							<td align="center"><input type="text" class="form-control" name="depart" required></td>
							</tr>
		
							<tr>
							<td align='center'><label for="">Arrive</label></td>
							<td align="center"><input type="text" class="form-control" name="arrive" required></td>
							</tr>
			
							<tr>
							<td align='center'><label for="">Duration</label></td>
							<td align="center"><input type="text" class="form-control" name="duration" required></td>
							</tr>
	
							<tr>
							<td align='center'><label for="">Price</label></td>
							<td align="center"><input type="text" class="form-control" name="price" required><br></td>
							</tr>
	
							<tr>
							<td align='center'><label for="">FlyDate</label></td>
							<td align="center"><input type="Date" class="form-control" name="flydate" required><br></td>
							</tr>
							<tr> <td>&nbsp;</td> </tr>
<table border="0px" cellpadding="0" cellspacing="0" width="480px" align="center">
<tr>
    <td align="center"><input type="submit"  value="ADD"></td>
</tr>
</table>
</table>
</table>		
	</form>
<form action="back" method="get">
		<center><input type="submit" value="Back" id="s1"></center>
		</form> 
</div>
</body>
</html>