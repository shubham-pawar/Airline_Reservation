 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- <script>
	$(document).ready(function(){
		$('input').on('keypress', function (event) {
		    var regex = new RegExp("^[a-zA-Z0-9]+$");
		    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
		    if (!regex.test(key)) {
		       event.preventDefault();
		       return false;
		    }
		});
		});
</script> -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Travel</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Date Picker -->
<!-- 	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
 -->	<!-- CS Select -->
	<link rel="stylesheet" href="css/cs-select.css">
	<link rel="stylesheet" href="css/cs-skin-border.css">
	
	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">

		<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.jsp"><i class="icon-airplane"></i>IndiaJet</a></h1>
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li class="active"><a href="index.jsp">Home</a></li>
							<li>
								<a href="login" class="fh5co-sub-ddown">Login</a> <!-- Insert Login Link Here!!! -->
								<!-- <ul class="fh5co-sub-menu">
									<li><a href="#">Family</a></li>
									<li><a href="#">CSS3 &amp; HTML5</a></li>
									<li><a href="#">Angular JS</a></li>
									<li><a href="#">Node JS</a></li>
									<li><a href="#">Django &amp; Python</a></li>
								</ul> -->
							</li>
							<!-- <li><a href="flight.html">Flights</a></li>
							<li><a href="hotel.html">Hotel</a></li>
							<li><a href="car.html">Car</a></li>
							<li><a href="blog.html">Blog</a></li>
							<li><a href="contact.html">Contact</a></li> -->
						</ul>
					</nav>
				</div>
			</div>
		</header>

		<!-- end:header-top -->
	
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/air3.jpg);">
				<div class="desc">
					<div class="container">
						<div class="row">
							<div class="col-sm-5 col-md-5">
								<div class="tabulation animate-box">
								
	<form action="registerProcess" method="post"  >

					<div class="form-group">
						<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
							<label for=""><i class="fas fa-user-tag"></i>&nbsp;Title</label>
							<input type="text" class="form-control" name="title" required>
						</div>
						</div>
						
						
<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
							<label for=""><i class="fas fa-user"></i>&nbsp;First Name</label>
							<input type="text" id="txtbox" class="form-control" name="fname" pattern="[A-Za-z]+" title="should contain only alphabets" required>
						</div>
						</div>
<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
							<label for=""><i class="fas fa-user"></i>&nbsp;Last Name</label>
							<input type="text"  class="form-control" name="lname" pattern="[A-Za-z]+" title="should contain only alphabets"  required>
						</div>
						</div>
						
						
					<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
						<label for=""><i class="fas fa-envelope"></i>&nbsp;Email</label>
						<input type="email" class="form-control" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
						
					</div>
					</div>

					<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
						<label for=""><i class="fas fa-key"></i>&nbsp;Password</label>
						<input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  class="form-control" required>
					</div>
					</div>


					<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
						<label for=""><i class="fas fa-phone"></i>&nbsp;Phone No.</label>
						<input type="tel" class="form-control form-rounded" pattern="[789][0-9]{9}" name="phone" minlength="10" maxlength="10"  class="form-control"  required>
					</div>
					</div>
			
  						 </div>
  						 				<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
					<input type="submit" class="btn btn-primary btn-block" value="register">
					</div>
					</div><p></p>
					<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
												
					</div>
					</div>
	</form> 
 </div>
	 </div>
	</div>
	</div>
	</div>
	</div>
	</div>
<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/sticky.js"></script>

	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	 <script src="js/bootstrap-datepicker.min.js"></script> 
	<!-- CS Select -->
	<script src="js/classie.js"></script>
	<script src="js/selectFx.js"></script>
	
	<!-- Main JS -->
	<script src="js/main.js"></script>
</body>
</html>