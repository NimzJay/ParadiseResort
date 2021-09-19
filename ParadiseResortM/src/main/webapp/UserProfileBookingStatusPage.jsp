<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Booking Status | Paradise Resort</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" type="image/png" href="img/favicon.png">
<link rel="stylesheet" href="css/navbar.css" />
<script src="js/navbar2.js"></script>
<link rel="stylesheet" href="css/hiran.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body class="bg-hallbooking">
	<nav id="nav" class="navbar affix fixed-top navbar-expand-sm"
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
				<li class="nav-item px-lg-4 px-md-3 px-2"><a
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
	<div class="container" style="margin-top:100px;">
		<div class="main-body mt-5" id="card">
			<form class="container-fluid" action="" method="post">
				<div class="container">

					<h1 style="text-align: center;" class="my-5">Booking Status</h1>
					<br>
					<div class="row gutters-sm">
						<div class="col-md-4 mb-3">
							<div class="card">
								<div class="card-body">
									<div class="d-flex flex-column align-items-center text-center">
										<img src="img/User01.png" alt="Admin"
											class="rounded-circle" width="150">
										<div class="mt-3">
											<h4>John Doe</h4>

											<p class="text-muted font-size-sm">Bay Area, San
												Francisco, CA</p>

										</div>
									</div>
								</div>

							</div>



						</div>

						<div class="col-md-8">
							<div class="card mb-3">
								<div class="card-body">
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0">Full Name</h6>
										</div>
										<div class="col-sm-9 text-secondary">Kenneth Valdez</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0">Email</h6>
										</div>
										<div class="col-sm-9 text-secondary">fip@jukmuh.al</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0">Phone</h6>
										</div>
										<div class="col-sm-9 text-secondary">(239) 816-9029</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0">Mobile</h6>
										</div>
										<div class="col-sm-9 text-secondary">(320) 380-4539</div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-3">
											<h6 class="mb-0">Address</h6>
										</div>
										<div class="col-sm-9 text-secondary">Bay Area, San
											Francisco, CA</div>
									</div>
								</div>
							</div>

						</div>



					</div>

					<div class="row gutters-sm">
						<div class="col-sm-6 mb-3">
							<div class="card h-100">
								<div class="card-body">
									<h6 class="d-flex align-items-center mb-3">
										<i class="material-icons text-info mr-2">Room Boking</i>Status
									</h6>

									<h6>Room Type</h6>
									<div>
										<input type="text" id="txtroom" name="room" value="Family"
											readonly><br>
									</div>
									<hr>

									<h6>Number of Rooms</h6>
									<div>
										<input type="text" id="txtnosroom" name="room" value="2"
											readonly><br>
									</div>
									<hr>

									<h6>Number Of Guests</h6>
									<div>
										<input type="text" id="txtNoOfGuests" name="guests" value="5"
											readonly><br>
									</div>
									<hr>
									<h6>Check in Date</h6>
									<div>
										<input type="text" id="txtindate" name="inDate"
											value="2021/09/05" readonly><br>
									</div>
									<hr>
									<h6>Check out Date</h6>
									<div>
										<input type="text" id="txtoutdate" name="outDate"
											value="2021/09/08" readonly><br>
									</div>

								</div>
							</div>
						</div>
						<div class="col-sm-6 mb-3">
							<div class="card h-100">
								<div class="card-body">
									<h6 class="d-flex align-items-center mb-3">
										<i class="material-icons text-info mr-2">Reception Hall
											Booking</i>Status
									</h6>
									<h6>Hall Type</h6>
									<div>
										<input type="text" id="txthall" name="hall" value="Hall 01"
											readonly><br>
									</div>
									<hr>
									<h6>Number of Guests</h6>
									<div>
										<input type="text" id="txthallGuests" name="guests"
											value="150" readonly><br>
									</div>
									<hr>
									<h6>Date</h6>
									<div>
										<input type="text" id="txthalldate" name="Date"
											value="2021/09/10" readonly><br>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
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
					role="button"><i class="fab fa-facebook-f text-white h5"></i></a> <!-- Twitter -->
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

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>