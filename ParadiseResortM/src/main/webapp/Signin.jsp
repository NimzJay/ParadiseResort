<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/png" href="img/favicon.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script src="other/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" href="css/nim.css" />
<link rel="stylesheet" href="css/navbar.css" />
<script src="js/navbar2.js"></script>

<title>Signin | Paradise Resort</title>
</head>

<body class="bg-white">
	<nav id="nav" class="navbar affix fixed-top navbar-expand-sm"
		data-spy="affix">
	<div class="container h-100">
		<a href="index.jsp" class="navbar-brand w-25"><img src="img/brand.png" width="60%" height="60%"
				class="" alt="LOGO"></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="d-flex collapse navbar-collapse justify-content-end h-100"
			id="navbarNav">
			<ul class="navbar-nav h-100 align-items-center">
				<li class="nav-item px-lg-4 px-md-3"><a
					class="nav-link w-100" aria-current="page" href="index.jsp">Home</a>
				</li>
				<li class="nav-item px-lg-4 px-md-3 px-2"><a
					class="nav-link w-100" href="HotelGallery.jsp">Gallery</a></li>
				<li class="nav-item px-lg-4 px-md-3 px-2"><a
					class="nav-link w-100" href="ViewAvailableRooms.jsp">Book Rooms</a></li>
				<li class="nav-item px-lg-4 px-md-3 px-2"><a
					class="nav-link w-100" href="ViewAvailableHalls.jsp">Book Halls</a></li>
				<li class="nav-item px-lg-4 px-md-3 px-2 active"><a
					class="nav-link w-100" href="Signin.jsp">Sign in</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- /.navbar -->

	<!-- <section class="first margin_100">
       <div class="container-fluid">
           <div class="row">
               <div class="col-lg-6 col-md-7 col-sm-12 col-12">
                    
               </div>
               <div class="col-lg-6 col-md-7 col-sm-12 col-12">

            </div>

           </div>
       </div>
    </section> -->

	<section class="vh-100 bg-sign" style="overflow-y: hidden;">
	<div class="container-fluid ">
		<div class="row">
			<div class=" card shadow col-lg-5 col-md-5 col-md-6 text-black">

				<div
					class="vh-100 d-flex align-items-center h-custom-2 px-5 mx-5 mt-md-5 pt-md-5 mt-sm-5 pt-sm-5"
					style="border-radius: 30px;">

					<form style="width: 30rem;" action="Signin" method="post">

						<h2 class="fw-normal mb-3 pb-3 h1" style="letter-spacing: 1px;">Sign
							in</h2>

						<div class="form-outline mb-4">
							<label class="form-label" for="form2Example17">Username</label> <input
								type="text" name="user" id="form2Example17"
								class="form-control form-control-lg" required/>
						</div>

						<div class="form-outline mb-4">
							<label class="form-label" for="form2Example27">Password</label> <input
								type="password" name="pass" id="form2Example27"
								class="form-control form-control-lg" required/>
						</div>

						<div class="row pt-1 mb-4">
							<div class="pr col-12">
								<button class=" w-100 btn btn-info btn-lg btn-block"
									type="submit">Signin</button>
							</div>

						</div>

					</form>

				</div>
			</div>
		</div>
	</section>
	
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

</body>

</html>