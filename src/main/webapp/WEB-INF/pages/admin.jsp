<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
<style>
.button {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>
	<%
	        	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
	        
	        	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	        	
	        	response.setHeader("Expires", "0"); //Proxies
	        
	        %>
	      <%
	      	if(session.getAttribute("user") == null){
	      		response.sendRedirect("login");
	      	}
	      %>
<div align="center">
			<h1>WELCOME ${user}</h1>
		<br><br><br><br>
		
	<table border=2 cellpadding=10>
		<tr>
				<td><form action="addflight1" method="get">	
			<input type="submit" value="add" class="button"><br>
		</form></td>
		<td><form action="viewflight">
			<input type="submit" value="view" class="button">
		</form></td>
			<td><form>
			<a href="logout"><input type="button" value="Logout" class="button"></a>
		</form></td>
		</tr>
	</table>		        
	</div>
</body>
</html>