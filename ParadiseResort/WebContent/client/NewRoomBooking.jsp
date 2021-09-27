<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="servlets.Session"%>

<%
	String user = Session.getUser();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/png" href="../img/favicon.png">
<title>New Room Booking | Paradise Resort</title>
<link rel="stylesheet" href="../css/navbar.css" />
<script src="../js/navbar2.js"></script>
<link rel="stylesheet" href="../css/sasmini.css">
<link rel="stylesheet" href="../other/bootstrap.min.css" />
<script src="../other/jquery-3.6.0.min.js"></script>
<script src="../other/js/bootstrap.min.js"></script>

</head>

<body class="bg-booking">
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
						<li class="nav-item px-lg-4 px-md-3 px-2 active"><a
							class="nav-link w-100" href="ViewAvailableRooms.jsp">Book
								Rooms</a></li>
						<li class="nav-item px-lg-4 px-md-3 px-2"><a
							class="nav-link w-100" href="ViewAvailableHalls.jsp">Book
								Halls</a></li>
						<%
							if ((user == null) || (user == "")) {
						%>
						<li class="nav-item px-lg-4 px-md-3 px-2"><a
							class="nav-link w-100" href="Signin.jsp">Sign in</a></li>
						<%
							} else {
						%>
						<li class="nav-item px-lg-4 px-md-3 px-2"><a
							class="nav-link w-100" href="UserProfileBookingStatusPage.jsp"><%=user%></a></li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
			</nav>
		</div>
		<div class="row">
			<div class="col-6 mx-auto my-5" id="card">
				<br>
				<h2 class="display-6">
					<b>New Room Booking</b>
				</h2>
				<br>
				<form class="container-fluid row g-3 needs-validation"
					action="../RoomBooking" method="POST" novalidate>
					<div class="container">

						<h4 style="font-family: 'Calibri Light'">Please fill the
							following details!</h4>
						<hr>

						<div class="form-group">
							<label for="validationCustom01" class="form-label">First
								Name</label> <input type="text" name="fname" class="form-control"
								id="validationCustom01" placeholder="First Name" required>

							<div class="invalid-feedback">Please enter your First Name.</div>

							<br>
						</div>

						<div class="form-group">
							<label for="validationCustom02" class="form-label">Last
								Name</label> <input type="text" name="lname" class="form-control"
								id="validationCustom02" placeholder="Last Name" required>

							<div class="invalid-feedback">Please enter your Last Name.</div>

							<br>
						</div>

						<div class="form-group">
							<label for="validationCustom03" class="form-label">Email
								Address</label> <input type="text" name="email" class="form-control"
								id="validationCustom03" placeholder="name@example.com"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>

							<div class="invalid-feedback">Please enter your Email
								Address.</div>

							<br>
						</div>

						<div class="form-group">
							<label for="validationCustom04" class="form-label">Contact
								Number</label> <input type="text" name="tel" class="form-control"
								id="validationCustom04" placeholder="Contact Number" required>

							<div class="invalid-feedback">Please enter your Contact
								Number.</div>

							<br>
						</div>

						<div class="form-group">
							<label for="validationCustom05" class="form-label">Check-In
								Date</label> <input type="date" name="sdate" class="form-control"
								id="validationCustom05" placeholder="mm/dd/yyyy" required>

							<div class="invalid-feedback">Please select a Check-In
								Date.</div>

							<br>
						</div>

						<div class="form-group">
							<label for="validationCustom06">Check-Out Date</label> <input
								type="date" name="edate" class="form-control"
								id="validationCustom06" placeholder="mm/dd/yyyy" required>

							<div class="invalid-feedback">Please select a Check-Out
								Date.</div>

							<br>
						</div>

						<div class="form-group">
							<label for="validationCustom07">Number of Guests</label> <input
								type="number" name="numofg" class="form-control"
								id="validationCustom07" placeholder="Number of Guests" required>

							<div class="invalid-feedback">Please select number of
								guests.</div>

						</div>
						<br> <label><b>Select Your Room</b></label> <br>
						<div class="form-check">
<<<<<<< HEAD
							<input class="form-check-input" type="radio" name="rad"
								value="classic" id="validationFormCheck1" required> <label
								class="form-check-label" for="validationFormCheck1">
								Classic Room - Rs. 20,000/= </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad"
								value="suite" id="validationFormCheck2" required> <label
								class="form-check-label" for="validationFormCheck2">
								Suite Room - Rs. 25,000/= </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad"
								value="family" id="validationFormCheck3" required> <label
								class="form-check-label" for="validationFormCheck3">
								Family Room - Rs. 30,000/= </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad"
								value="deluxe" id="validationFormCheck4" required> <label
								class="form-check-label" for="validationFormCheck4">
								Deluxe Room - Rs. 50,000/= </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad"
								value="superior" id="validationFormCheck5" required> <label
								class="form-check-label" for="validationFormCheck5">
								Superior Room - Rs: 70,000/= </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad"
								value="luxury" id="validationFormCheck6" required> <label
								class="form-check-label" for="validationFormCheck6">
								Luxury Room - Rs. 100,000/= </label>
=======
							<input class="form-check-input" type="radio" name="rad" value="Classic Room" id="validationFormCheck1" required> 
							<label class="form-check-label"  for="validationFormCheck1">
								Classic Room - Rs. 20,000/=
						   </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad" value="Suite Room" id="validationFormCheck2" required>
							<label class="form-check-label" for="validationFormCheck2"> 
							   Suite Room - Rs. 25,000/= 
							</label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad" value="Family Room" id="validationFormCheck3" required>
						    <label class="form-check-label" for="validationFormCheck3"> 
						       Family Room - Rs. 30,000/= 
						    </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad" value="Deluxe Room" id="validationFormCheck4" required> 
							<label class="form-check-label" for="validationFormCheck4"> 
							   Deluxe Room - Rs. 50,000/= 
							</label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad" value="Superior Room" id="validationFormCheck5" required> 
							<label class="form-check-label" for="validationFormCheck5">
								Superior Room - Rs: 70,000/= 
						    </label>
						</div>

						<div class="form-check">
							<input class="form-check-input" type="radio" name="rad" value="Luxury Room" id="validationFormCheck6" required> 
							<label class="form-check-label" for="validationFormCheck6"> 
							    Luxury Room - Rs. 100,000/= 
							</label>
>>>>>>> 8250bd50cb74beb0cd700a8110cba29951794b8a
						</div>

						<br>

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

	<script>
		//Validation
		// For disabling the form submission if there are invalid fields
		(function() {
			'use strict'

			// Fetch the form we want to apply custom validation
			var forms = document.querySelectorAll('.needs-validation')

			// Loop over and prevent submission
			Array.prototype.slice.call(forms).forEach(function(form) {
				form.addEventListener('submit', function(event) {
					if (!form.checkValidity()) {
						event.preventDefault()
						event.stopPropagation()
					}

					form.classList.add('was-validated')
				}, false)
			})
		})()
	</script>

</body>
</html>
