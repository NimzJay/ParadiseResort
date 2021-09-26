<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Arrays"%>
<%@page import="dbConnection.DBConn"%>

<%
	Statement st1, st2, st3, st4, st5, st6 = null;
	ResultSet rs1, rs2, rs3, rs4, rs5, rs6 = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Available Rooms | Paradise Resort</title>
<link rel="icon" type="image/png" href="../img/favicon.png">
<link rel="stylesheet" href="../css/navbar.css" />
<script src="../js/navbar2.js"></script>
<link rel="stylesheet" href="../css/sasmini.css">
<link rel="stylesheet" href="../other/bootstrap.min.css" />
<script src="../other/jquery-3.6.0.min.js"></script>
<script src="../other/js/bootstrap.min.js"></script>

</head>
<body class="bg-rooms">

	<%
		try {

			int i = 0;

			Connection con = DBConn.getconn();
			st1 = con.createStatement();
			st2 = con.createStatement();
			st3 = con.createStatement();
			st4 = con.createStatement();
			st5 = con.createStatement();
			st6 = con.createStatement();

			String sql1 = ("SELECT COUNT(rid) AS count FROM room WHERE roomType='classic' AND availability='Yes'");
			String sql2 = ("SELECT COUNT(rid) AS count FROM room WHERE roomType='suite' AND availability='Yes'");
			String sql3 = ("SELECT COUNT(rid) AS count FROM room WHERE roomType='family' AND availability='Yes'");
			String sql4 = ("SELECT COUNT(rid) AS count FROM room WHERE roomType='deluxe' AND availability='Yes'");
			String sql5 = ("SELECT COUNT(rid) AS count FROM room WHERE roomType='superior' AND availability='Yes'");
			String sql6 = ("SELECT COUNT(rid) AS count FROM room WHERE roomType='luxuxry' AND availability='Yes'");

			rs1 = st1.executeQuery(sql1);
			rs2 = st2.executeQuery(sql2);
			rs3 = st3.executeQuery(sql3);
			rs4 = st4.executeQuery(sql4);
			rs5 = st5.executeQuery(sql5);
			rs6 = st6.executeQuery(sql6);
	%>

	<nav id="nav"
		class="navbar affix fixed-top navbar-expand-sm sticky-top"
		data-spy="affix">
	<div class="container h-100">
		<a href="index.jsp" class="navbar-brand w-25"><img
			src="../img/brand.png" width="60%" height="60%" class="" alt="LOGO"></a>
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
				<li class="nav-item px-lg-4 px-md-3 px-2 active"><a
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
		<b>Our Rooms</b>
	</h2>
	<br>
	<!-- Carousel wrapper -->
	<div id="carouselMultiItemExample"
		class="carousel slide carousel-dark text-center"
		data-mdb-ride="carousel">

		<!-- Inner -->
		<div class="carousel-inner py-4">
			<!-- Single item -->
			<div class="carousel-item active">
				<div class="container">
					<div class="row">
						<div class="col-lg-4">
							<div class="card">
								<img src="../img/SuiteRoom.jpg" class="card-img-top" alt="..." />
								<div class="card-body">
									<h3 class="card-title">Suite Room</h3>
									<p>
										<span class="price"><b>Rs. 25,000/= </b></span> <span
											class="per"><i>per night</i></span>
									</p>
									<hr>
									<%
										while (rs2.next()) {
									%>
									<p class="card-text">
										<span>Max : </span> 3 Persons <br> <span>Size : </span> 55 m2<br>
										<span>View : </span> Sea View<br> <span>Beds : </span> 2<br>
										<span>Rooms : </span><%=rs2.getInt("count")%><br>
										<%
											}
										%>
									
									<hr>
									</p>
									<a href="NewRoomBooking.jsp" class="btn btn-primary">Book Now</a>
								</div>
							</div>
						</div>

						<div class="col-lg-4 d-none d-lg-block">
							<div class="card">
								<img src="../img/FamilyRoom.jpg" class="card-img-top" alt="..." />
								<div class="card-body">
									<h3 class="card-title">Family Room</h3>
									<p>
										<span class="price"><b>Rs. 30,000/= </b></span> <span
											class="per"><i>per night</i></span>
									</p>
									<hr>
									<%
										while (rs3.next()) {
									%>
									<p class="card-text">
										<span>Max : </span> 3 Persons <br> <span>Size : </span> 50 m2<br>
										<span>View : </span> Sea View<br> <span>Beds : </span> 2<br>
										<span>Rooms : </span><%=rs3.getInt("count")%><br>
										<%
											}
										%>
									
									<hr>
									</p>
									<a href="NewRoomBooking.jsp" class="btn btn-primary">Book Now</a>
								</div>
							</div>
						</div>

						<div class="col-lg-4 d-none d-lg-block">
							<div class="card">
								<img src="../img/DeluxeRoom.jpg" class="card-img-top" alt="..." />
								<div class="card-body">
									<h3 class="card-title">Deluxe Room</h3>
									<p>
										<span class="price"><b>Rs. 50,000/= </b></span> <span
											class="per"><i>per night</i></span>
									</p>
									<hr>
									<%
										while (rs4.next()) {
									%>
									<p class="card-text">
										<span>Max : </span> 2 Persons <br> <span>Size : </span> 100
										m2<br> <span>View : </span> Sea View<br> <span>Beds : </span>
										1<br> <span>Rooms : </span><%=rs4.getInt("count")%><br>
										<%
											}
										%>
									
									<hr>
									</p>
									<a href="NewRoomBooking.jsp" class="btn btn-primary">Book Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Carousel wrapper -->
		<div id="carouselMultiItemExample"
			class="carousel slide carousel-dark text-center"
			data-mdb-ride="carousel">
			<!-- Inner -->
			<div class="carousel-inner py-4">
				<!-- Single item -->
				<div class="carousel-item active">
					<div class="container">
						<div class="row">
							<div class="col-lg-4">
								<div class="card">
									<img src="../img/ClassicRoom.jpg" class="card-img-top"
										alt="..." />
									<div class="card-body">
										<h3 class="card-title">Classic Room</h3>
										<p>
											<span class="price"><b>Rs. 20,000</b></span> <span
												class="per"><i>per night</i></span>
										</p>
										<hr>
										<%
											while (rs1.next()) {
										%>
										<p class="card-text">
											<span>Max : </span> 2 Persons <br> <span>Size : </span> 55
											m2<br> <span>View : </span> Sea View<br> <span>Beds : </span>
											2<br> <span>Rooms : </span><%=rs1.getInt("count")%><br>
										<hr>
										<%
											}
										%>
										</p>
										<a href="NewRoomBooking.jsp" class="btn btn-primary">Book Now</a>
									</div>
								</div>
							</div>

							<div class="col-lg-4 d-none d-lg-block">
								<div class="card">
									<img src="../img/SuperiorRoom.jpg" class="card-img-top"
										alt="..." />
									<div class="card-body">
										<h3 class="card-title">Superior Room</h3>
										<p>
											<span class="price"><b>Rs. 70,000/= </b></span> <span
												class="per"><i>per night</i></span>
										</p>
										<hr>
										<%
											while (rs5.next()) {
										%>
										<p class="card-text">
											<span>Max : </span> 2 Persons <br> <span>Size : </span> 65
											m2<br> <span>View : </span> Sea View<br> <span>Beds : </span>
											1<br> <span>Rooms : </span><%=rs5.getInt("count")%><br>
										<hr>
										<%
											}
										%>
										</p>
										<a href="NewRoomBooking.jsp" class="btn btn-primary">Book Now</a>
									</div>
								</div>
							</div>

							<div class="col-lg-4 d-none d-lg-block">
								<div class="card">
									<img src="../img/LuxuryRoom.jpg" class="card-img-top" alt="..." />
									<div class="card-body">
										<h3 class="card-title">Luxury Room</h3>
										<p>
											<span class="price"><b>Rs. 100,000/= </b></span> <span
												class="per"><i>per night</i></span>
										</p>
										<hr>
										<%
											while (rs6.next()) {
										%>
										<p class="card-text">
											<span>Max : </span> 2 Persons <br> <span>Size : </span> 75
											m2<br> <span>View : </span> Sea View<br> <span>Beds : </span>
											1<br> <span>Rooms : </span><%=rs6.getInt("count")%><br>
										<hr>
										<%
											}
											} catch (Exception ex) {
												System.out.println("Error" + ex);
												ex.printStackTrace();
											}
										%>
										</p>
										<a href="NewRoomBooking.jsp" class="btn btn-primary">Book Now</a>
									</div>
								</div>
							</div>
						</div>
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
							<p style="text-align: left;">The Paradise Resort overlooks
								the alluring waves of the Indian Ocean. Explore the tropical
								beauty and rich marine life of this peaceful, eco-conscious
								setting. Our private lagoon, Iridium Spa and outdoor infinity
								pool promise nonpareil relaxation.</p>
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
								<li><a href="Signin.jsp" class="text-white links">Sign
										in</a></li>
							</ul>
						</div>
						<div class="col-lg-3 col-md-6 mb-4 mb-md-0 text-center"
							style="border-left: 2px solid #ff7b63;">

							<h5 class="text-uppercase mb-0 pb-3" style="color: #22c6c6;">
								<b>Booking</b>
							</h5>

							<ul class="list-unstyled">
								<li><a href="#!" class="text-white links">Events &
										Dining</a></li>
								<li><a href="#!" class="text-white links">Experience</a></li>
								<li><a href="ViewAvailableRooms.jsp"
									class="text-white links">View Available Rooms</a></li>
								<li><a href="ViewAvailableHalls.jsp"
									class="text-white links">View Available Halls</a></li>
							</ul>

						</div>
					</div>
					<!-- Section: Social media -->
					<center>
						<section class="mb-4 mt-4"> <!-- Facebook --> <a
							id="social" class="btn btn-transparent btn-floating m-1"
							href="#!" role="button"><i
							class="fab fa-facebook-f text-white h5"></i></a> <!-- Twitter --> <a
							id="social" class="btn btn-transparent btn-floating m-1"
							href="#!" role="button"><i
							class="fab fa-twitter text-white h5"></i></a> <!-- Google --> <a
							id="social" class="btn btn-transparent btn-floating m-1"
							href="#!" role="button"><i
							class="fab fa-google text-white h5"></i></a> <!-- Instagram --> <a
							id="social" class="btn btn-transparent btn-floating m-1"
							href="#!" role="button"><i
							class="fab fa-instagram text-white h5"></i></a> <!-- Linkedin --> <a
							id="social" class="btn btn-transparent btn-floating m-1"
							href="#!" role="button"><i
							class="fab fa-linkedin-in text-white h5"></i></a> </section>
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