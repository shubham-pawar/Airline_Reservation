<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.loader {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	  background: url('images/plane.gif') 20% 20% no-repeat rgb(249,249,249);
    background-position: center;
    background-size: cover;
}
</style>
<script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">;
$(window).load(function() {
	$(".loader").fadeOut("slow");
})
</script>
<script type="text/javascript">
function leave() {
  window.location = "book";
}
setTimeout("leave()", 3500);
</script>
</head>
<body>
<div class="loader"></div>;

</body>
</html>