<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>New Hall Booking | Paradise Resort</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="icon" type="image/png" href="../img/favicon.png">
<link rel="stylesheet" href="../css/hiran.css">
<link rel="stylesheet" href="../css/navbar.css" />
<script src="../js/navbar2.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body class="bg-hallbooking">

	<div class="container-fluid">
		<div class="row mb-5">
			<nav id="nav" class="navbar affix fixed-top navbar-expand-sm"
				data-spy="affix">
			<div class="container h-100">
				<a href="index.jsp" class="navbar-brand w-25"><img
					src="../img/brand.png" width="60%" height="60%" class="" alt="LOGO"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div
					class="d-flex collapse navbar-collapse justify-content-end h-100"
					id="navbarNav">
					<ul class="navbar-nav h-100 align-items-center">
						<li class="nav-item px-lg-4 px-md-3"><a
							class="nav-link w-100 active" aria-current="page"
							href="index.jsp">Home</a></li>
						<li class="nav-item px-lg-4 px-md-3 px-2"><a
							class="nav-link w-100" href="HotelGallery.jsp">Gallery</a></li>
						<li class="nav-item px-lg-4 px-md-3 px-2"><a
							class="nav-link w-100" href="ViewAvailableRooms.jsp">Book
								Rooms</a></li>
						<li class="nav-item px-lg-4 px-md-3 px-2 active"><a
							class="nav-link w-100" href="ViewAvailableHalls.jsp">Book
								Halls</a></li>
						<li class="nav-item px-lg-4 px-md-3 px-2"><a
							class="nav-link w-100" href="Signin.jsp">Sign in</a></li>
					</ul>
				</div>
			</div>
			</nav>
		</div>
		<div class="row">
			<div class="col-6 mx-auto my-5" id="card">
				<form class="container-fluid" action="../HallBooking" method="POST">
					<div class="container">
						<h1 style="text-align: center;" class="my-5">New Reception
							Hall Booking</h1>
						<br>
						<h3>Please fill following details.</h3>
						<hr>

						<div class="form-group">
							<label for="username"><span class="glyphicon"> </span>
								First Name </label> <input type="text" name="fname" class="form-control"
								id="txtuserName" placeholder="Enter Username" required>
						</div>

						<div class="form-group">
							<label for="username"><span class="glyphicon"> </span>
								Last Name </label> <input type="text" name="lname" class="form-control"
								id="txtuserName" placeholder="Enter Username" required>
						</div>

						<div class="form-group">
							<label for="email"> <span class="glyphicon"></span> Email
								Address
							</label> <input type="text" name="email" class="form-control"
								id="txtemail" placeholder="Enter Email" required>
						</div>

						<div class="form-group">
							<label for="phone"> <span class="glyphicon"></span>
								Contact Number
							</label> <input type="text" name="tel" class="form-control"
								id="txtnumber" placeholder="Enter Mobile Number" required>
						</div>
						<br>
						<hr>

						<h3>Please Select Booking Details.</h3>

						<div class="form-group">
							<label for="date"> <span class="glyphicon"></span>
								Check-in Date
							</label> <input type="date" name="sdate" class="form-control"
								id="txtdate">
						</div>

						<div class="form-group">
							<label for="date"> <span class="glyphicon"></span>
								Check-out Date
							</label> <input type="date" name="edate" class="form-control"
								id="txtdate">
						</div>

						<div class="form-group">
							<label for="guest"> <span class="glyphicon"></span>
								Select the Number of Guests
							</label> <input type="number" name="numofg" class="form-control"
								id="txtguests">
						</div>

						<br>
						<p style="font-weight: bold;">Please select a hall</p>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad"
								value="Signature Ballroom" id="Radio1"> <label
								class="form-check-label" for="flexRadioDefault1">
								Signature Ballroom - Rs: 700,000/= </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad"
								value="Classic Ballroom" id="Radio2" checked> <label
								class="form-check-label" for="flexRadioDefault2">
								Classic Ballroom - Rs: 300,000/= </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad"
								value="Lotus Ballroom" id="Radio3" checked> <label
								class="form-check-label" for="flexRadioDefault3"> Lotus
								Ballroom - Rs: 250,000/= </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad"
								value="Outdoor" id="Radio4" checked> <label
								class="form-check-label" for="flexRadioDefault4">
								Outdoor - Rs: 350,000/= </label>
						</div>

						<hr>

						<div class="row">
							<div class="col">
								<button type="reset" class="btn btn-danger w-100">Reset</button>
							</div>
							<div class="col">

								<button type="submit" class="btn btn-primary w-100" onClick="">Submit</button>


							</div>
						</div>




						<br> <br>


					</div>
				</form>
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