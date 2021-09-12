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
	Statement st1,st2,st3,st4,st5,st6 = null;
	ResultSet rs1,rs2,rs3,rs4,rs5,rs6 = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Available Rooms Page</title>

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
										while(rs2.next()){														
									%>
									<p class="card-text">
										<span>Max:</span> 3 Persons <br> <span>Size:</span> 55 m2<br>
										<span>View:</span> Sea View<br> <span>Beds:</span> 2<br>
										<span>Rooms:</span><%=rs2.getInt("count")%><br>
										<%} %>
									
									<hr>
									</p>
									<a href="#!" class="btn btn-primary">Book Now</a>
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
										while(rs3.next()){														
									%>
									<p class="card-text">
										<span>Max:</span> 3 Persons <br> <span>Size:</span> 50 m2<br>
										<span>View:</span> Sea View<br> <span>Beds:</span> 2<br>
										<span>Rooms:</span><%=rs3.getInt("count")%><br>
										<%} %>
									
									<hr>
									</p>
									<a href="#!" class="btn btn-primary">Book Now</a>
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
										while(rs4.next()){														
									%>
									<p class="card-text">
										<span>Max:</span> 2 Persons <br> <span>Size:</span> 100
										m2<br> <span>View:</span> Sea View<br> <span>Beds:</span>
										1<br> <span>Rooms:</span><%=rs4.getInt("count")%><br>
										<%} %>
									
									<hr>
									</p>
									<a href="#!" class="btn btn-primary">Book Now</a>
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
										<%while(rs1.next()){ %>
										<p class="card-text">
											<span>Max:</span> 2 Persons <br> <span>Size:</span> 55
											m2<br> <span>View:</span> Sea View<br> <span>Beds:</span>
											2<br> <span>Rooms:</span><%=rs1.getInt("count")%><br>
										<hr>
										<%}%>
										</p>
										<a href="#!" class="btn btn-primary">Book Now</a>
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
										<%while(rs5.next()){ %>
										<p class="card-text">
											<span>Max:</span> 2 Persons <br> <span>Size:</span> 65
											m2<br> <span>View:</span> Sea View<br> <span>Beds:</span>
											1<br> <span>Rooms:</span><%=rs5.getInt("count")%><br>
										<hr>
										<%} %>
										</p>
										<a href="#!" class="btn btn-primary">Book Now</a>
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
										<%while(rs6.next()){ %>
										<p class="card-text">
											<span>Max:</span> 2 Persons <br> <span>Size:</span> 75
											m2<br> <span>View:</span> Sea View<br> <span>Beds:</span>
											1<br> <span>Rooms:</span><%=rs6.getInt("count")%><br>
										<hr>
										<%
								}
								} catch (Exception ex) {
									System.out.println("Error" + ex);
									ex.printStackTrace();
								}
							%>
										</p>
										<a href="#!" class="btn btn-primary">Book Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>