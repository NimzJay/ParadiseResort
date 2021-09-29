<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hotel Gallery | Paradise Resort</title>
<link rel="icon" type="image/png" href="img/favicon.png">
<link rel="stylesheet" href="css/navbar.css" />
<script src="js/navbar2.js"></script>
<link rel="stylesheet" href="css/sasmini.css">
<link rel="stylesheet" href="other/bootstrap.min.css" />
<script src="other/jquery-3.6.0.min.js"></script>
<script src="other/js/bootstrap.min.js"></script>

</head>
<body class="bg-gallery">
	<nav id="nav" class="navbar affix fixed-top navbar-expand-sm sticky-top"
		data-spy="affix">
	<div class="container h-100">
		<a href="index.jsp" class="navbar-brand w-25"><img
			src="img/brand.png" width="60%" height="60%" class="" alt="LOGO"></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="d-flex collapse navbar-collapse justify-content-end h-100"
			id="navbarNav">
			<ul class="navbar-nav h-100 align-items-center">
				<li class="nav-item px-lg-4 px-md-3"><a
					class="nav-link w-100 active" aria-current="page" href="index.jsp">Home</a></li>
				<li class="nav-item px-lg-4 px-md-3 px-2 active"><a
					class="nav-link w-100" href="HotelGallery.jsp">Gallery</a></li>
				<li class="nav-item px-lg-4 px-md-3 px-2"><a
					class="nav-link w-100" href="ViewAvailableRooms.jsp">Book Rooms</a></li>
				<li class="nav-item px-lg-4 px-md-3 px-2"><a
					class="nav-link w-100" href="ViewAvailableHalls.jsp">Book Halls</a></li>
				<li class="nav-item px-lg-4 px-md-3 px-2"><a
					class="nav-link w-100" href="Signin.jsp">Sign in</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<br>
	<h2 class="display-6">
		<b>Gallery</b>
	</h2>

	<div class="col-10 mx-auto my-5">

		<!-- Hotel View -->
		<h5>Hotel View</h5>
		<br>
		<div class="row">
			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/HotelView1.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/HotelView3.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/HotelView2.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" />
			</div>
			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/HotelView4.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/HotelView5.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/HotelView6.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" />
			</div>

			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/HotelView7.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/HotelView8.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/HotelView9.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" />
			</div>
		</div>

		<!-- Rooms -->
		<br>
		<h5>Rooms</h5>
		<br>
		<div class="row">
			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/HotelRoom1.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/Room3.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" />
			</div>

			<div class="col-lg-4 mb-4 mb-lg-0">
				<img src="img/Room2.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/Room6.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" />
			</div>

			<div class="col-lg-4 mb-4 mb-lg-0">
				<img src="img/Room5.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/Room4.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" />
			</div>
		</div>

		<!-- Features -->
		<br>
		<h5>Features</h5>
		<br>
		<div class="row">
			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/Feature4.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/Feature1.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" />
			</div>

			<div class="col-lg-4 mb-4 mb-lg-0">
				<img src="img/Feature2.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/Feature5.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" />
			</div>

			<div class="col-lg-4 mb-4 mb-lg-0">
				<img src="img/Feature6.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/Feature3.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" />
			</div>
		</div>

		<!-- Events & Activities -->
		<br>
		<h5>Events & Activities</h5>
		<br>
		<div class="row">
			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/EA1.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" /> <img src="img/EA2.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/EA3.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" />
			</div>
			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/EA4.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" /> <img src="img/EA5.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/EA6.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" />
			</div>

			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/EA7.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" /> <img src="img/EA8.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/EA9.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" />
			</div>

		</div>

		<div class="row">
			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/EA10.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/EA11.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" /> <img src="img/EA12.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" />
			</div>
			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/EA13.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/EA14.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" /> <img src="img/EA15.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" />
			</div>

			<div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
				<img src="img/EA16.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" /> <img
					src="img/EA17.jpg" class="w-100 shadow-1-strong rounded mb-4"
					alt="" /> <img src="img/EA18.jpg"
					class="w-100 shadow-1-strong rounded mb-4" alt="" />
			</div>
		</div>

	</div>
	
	
	<!-- Footer -->
	<div class="bg-blue text-white text-md-start">
		<!-- Grid container -->
		<div class="container p-4">
			<!--Grid row-->
			<div class="row mt-5">
				<!--Grid column-->
				<div class="col-lg-6 col-md-12 mb-4 mb-md-0">
					<h5 class="text-uppercase h4 pb-3" style="color: #22c6c6;">
						<b>About Us</b>
					</h5>
					<p style="text-align: left;">The Paradise Resort overlooks the
						alluring waves of the Indian Ocean. Explore the tropical beauty
						and rich marine life of this peaceful, eco-conscious setting. Our
						private lagoon, Iridium Spa and outdoor infinity pool promise
						nonpareil relaxation.</p>
					<div class="hr mt-5"></div>

				</div>
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0 text-center">
					<h5 class="text-uppercase mb-0 pb-3" style="color: #22c6c6;">
						<b>Overview</b>
					</h5>
					<ul class="list-unstyled">
						<li><a href="index.jsp" class="text-white links">Home</a></li>
						<li><a href="HotelGallery.jsp" class="text-white links">Gallery</a></li>
						<li><a href="#!" class="text-white links">Book Now</a></li>
						<li><a href="Signin.jsp" class="text-white links">Sign in</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0 text-center"
					style="border-left: 2px solid #ff7b63;">

					<h5 class="text-uppercase mb-0 pb-3" style="color: #22c6c6;">
						<b>Booking</b>
					</h5>

					<ul class="list-unstyled">
						<li><a href="#!" class="text-white links">Events & Dining</a></li>
						<li><a href="#!" class="text-white links">Experience</a></li>
						<li><a href="ViewAvailableRooms.jsp" class="text-white links">View
								Available Rooms</a></li>
						<li><a href="ViewAvailableHalls.jsp" class="text-white links">View
								Available Halls</a></li>
					</ul>

				</div>
			</div>
			<!-- Section: Social media -->
			<center>
				<section class="mb-4 mt-4"> <!-- Facebook --> <a
					id="social" class="btn btn-transparent btn-floating m-1" href="#!"
					role="button"><i class="fab fa-facebook-f text-white h5" style="color: white;"></i></a> <!-- Twitter -->
				<a id="social" class="btn btn-transparent btn-floating m-1"
					href="#!" role="button"><i class="fab fa-twitter text-white h5"></i></a>
				<!-- Google --> <a id="social"
					class="btn btn-transparent btn-floating m-1" href="#!"
					role="button"><i class="fab fa-google text-white h5"></i></a> <!-- Instagram -->
				<a id="social" class="btn btn-transparent btn-floating m-1"
					href="#!" role="button"><i
					class="fab fa-instagram text-white h5"></i></a> <!-- Linkedin --> <a
					id="social" class="btn btn-transparent btn-floating m-1" href="#!"
					role="button"><i class="fab fa-linkedin-in text-white h5"></i></a>

				</section>
			</center>
			<!-- Section: Social media -->
		</div>
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.3);">
			© 2021 Copyright: <a class="text-white"
				href="https://mdbootstrap.com/" style="text-decoration: none;">Team
				Alpha</a>
		</div>

	</div>
	
</body>
</html>