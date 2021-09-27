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
<%@page import="servlets.Session"%>
<%
	Statement st1, st2, st3, st4  = null;
	ResultSet rs1, rs2, rs3, rs4  = null;
%>
<%
String user=Session.getUser();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Available Halls | Paradise Resort</title>
<link rel="icon" type="image/png" href="../img/favicon.png">
<link rel="stylesheet" href="../css/navbar.css" />
<script src="../js/navbar2.js"></script>
<link rel="stylesheet" href="../css/sasmini.css">
<link rel="stylesheet" href="../other/bootstrap.min.css" />
<script src="../other/jquery-3.6.0.min.js"></script>
<script src="../other/js/bootstrap.min.js"></script>

</head>
<body class="bg-halls">

	<%
		try {

			int i = 0;

			Connection con = DBConn.getconn();
			st1 = con.createStatement();
			st2 = con.createStatement();
			st3 = con.createStatement();
			st4 = con.createStatement();

			String sql1 = ("SELECT COUNT(hid) AS count FROM hall WHERE hallType='Hall 1' AND availability='Yes'");
			String sql2 = ("SELECT COUNT(hid) AS count FROM hall WHERE hallType='Hall 2' AND availability='Yes'");
			String sql3 = ("SELECT COUNT(hid) AS count FROM hall WHERE hallType='Hall 3' AND availability='Yes'");
			String sql4 = ("SELECT COUNT(hid) AS count FROM hall WHERE hallType='Outdoor' AND availability='Yes'");
			 
			rs1 = st1.executeQuery(sql1);
			rs2 = st2.executeQuery(sql2);
			rs3 = st3.executeQuery(sql3);
			rs4 = st4.executeQuery(sql4);
			 
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
				<li class="nav-item px-lg-4 px-md-3 px-2"><a
					class="nav-link w-100" href="ViewAvailableRooms.jsp">Book Rooms</a></li>
				<li class="nav-item px-lg-4 px-md-3 px-2 active"><a
					class="nav-link w-100" href="ViewAvailableHalls.jsp">Book Halls</a></li>
				<%
					if((user==null)||(user=="")){
					%>
				<li class="nav-item px-lg-4 px-md-3 px-2 active"><a
					class="nav-link w-100" href="Signin.jsp">Sign in</a></li>
				<%
					}else{
					%>
				<li class="nav-item px-lg-4 px-md-3 px-2"><a
					class="nav-link w-100" href="UserProfileBookingStatusPage.jsp"><%=user %></a></li>
				<%
					}
					%>
			</ul>
		</div>
	</div>
	</nav>

	<br>
	<h2 class="display-6">
		<b>Reception Halls</b>
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
						<div class="col-lg-12">
							<div class="card">
								<img src="../img/IndoorEvents.jpg" class="card-img-top"
									alt="..." />
								<div class="card-body-halls">
									<br>
									<h3 class="card-title">Indoor Events</h3>
									<hr>

									<p class="card-text">
										Paradise Resort has the most extensive and versatile events
										space in the country. Offers a range of flexible venues
										including the Signature Ballroom, the largest pillar-less
										ballroom in the region that can cater to seated banquets for
										up to 1,440 guests. The property also consists of a Classic
										Ballroom and a Lotus Ballroom catering to banquets up to 500
										guests, a large outdoor space and Spices, our dedicated
										function rooms. <br>
									<h5>
										<I>Available Venues</I>
									</h5>
									<%
										     while (rs1.next()) {
									    %>
									<span>Signature Ballroom : </span><%=rs1.getInt("count")%><br>
									<%
										    }
										%>

									<%
										     while (rs2.next()) {
									    %>
									<span>Classic Ballroom : </span><%=rs2.getInt("count")%><br>
									<%
										    }
										%>
									<%
										     while (rs3.next()) {
									    %>
									<span>Lotus Ballroom : </span><%=rs3.getInt("count")%><br>

									<%
										    }
										%>

									<br> <b> For more details, please contact us. </b> <br>
									<br> <i> Phone : (+94) 11 788 8267 <br> Email :
										events.tb@paradiseresort.com
									</i>
									<hr>
									</p>
									<a href="NewHallBooking.jsp" class="btn btn-primary">Book
										Now</a> <br> <br>
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
							<div class="col-lg-12">
								<div class="card">
									<img src="../img/OutdoorEvents.jpg" class="card-img-top"
										alt="..." />
									<div class="card-body">
										<h3 class="card-title">Outdoor Events</h3>
										<hr>
										<%
										     while (rs4.next()) {
									     %>
										<p class="card-text">
											Have an enchanting outdoor event with a gentle breeze around
											you on golden shores in the Pearl of the Indian Ocean.
											Celebrate your special days with an unforgettable outdoor
											event at Paradise Resort. From intimate ceremonies to grand
											celebrations by the sea, we will help you plan a unique event
											where you can enjoy your day to the fullest. <br>
										<h5>
											<I>Available Venues</I>
										</h5>
										<span>Outdoor : </span><%=rs4.getInt("count")%><br>
										<br> <b> For more details, please contact us. </b> <br>
										<br> <i> Phone : (+94) 11 788 8267 <br> Email :
											events.tb@paradiseresort.com
										</i>
										<hr>
										<%
										    }
											} catch (Exception ex) {
												System.out.println("Error" + ex);
												ex.printStackTrace();
											}
										%>
										</p>
										<a href="NewHallBooking.jsp" class="btn btn-primary">Book
											Now</a>
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