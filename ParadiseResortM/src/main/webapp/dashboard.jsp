<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Arrays"%>
<%@page import="dbConnection.DBConn"%>

<%
	String driverName = "com.mysql.jdbc.Driver";
	try {
		System.out.println("Connected ");
		Class.forName(driverName);
	} catch (ClassNotFoundException ex) {
		System.out.println("Error" + ex);
		ex.printStackTrace();
	}
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet" href="css/dash.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
</head>

<body>
	<div class="container-fluid">
		<div class="row ">
			<div class="col-auto col-md-2 col-xl-2 px-sm-2 ">
				<div
					class="d-flex flex-column align-items-center align-items-sm-start px-3  pt-2 min-vh-100 side">

					<img id="logo" src="img/logo.png"/>

					<hr>
					<hr>
					<ul
						class="nav nav-pills flex-column mb-sm-auto  align-items-center align-items-sm-start"
						id="menu">
						<li class="nav-item"><a href="#" class="nav-link active"
							aria-current="page"> <span class="icon"><i
									class="fas fa-home me-2"></i></span> <span
								class="ms-1 d-none d-sm-inline item">Home</span></a></li>
						<li><a href="./cuslistviw.jsp" class="nav-link text-white"> <span
								class="icon"><i class="fas fa-desktop me-2"></i></span> <span
								class="ms-1 d-none d-sm-inline item">Customer List View</span>
						</a></li>
						<li><a href="#" class="nav-link text-white"> <span
								class="icon"><i class="fas fa-user-friends me-2"></i></span> <span
								class="ms-1 d-none d-sm-inline item">Add New Customer</span>
						</a></li>
						<li><a href="#" class="nav-link text-white"> <span
								class="icon"><i class="fas fa-sign-out-alt me-2"></i></span> <span
								class="ms-1 d-none d-sm-inline item">Log-out</span>
						</a></li>
					</ul>
					<hr>
					<div class="profile" style="width: 100%">
						<img src="img/User01.png" alt="profile_picture">
						<h3>Anamika Roy</h3>
						<p>Designer</p>
					</div>
				</div>

			</div>
			<div class="col py-3">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="row">
							<div class="col-md-10">
								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">
										<div class="row">
											<div class="col-md-6 col-xs-6 col-sm-6">
												<div class="card">
													<div class="con">
														<h4>
															<b>Number of Customers</b>
														</h4>
														<p>Architect & Engineer</p>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-xs-6 col-sm-6">
												<div class="card">
													<div class="con">
														<h4>
															<b>Number of Bookings</b>
														</h4>
														<%
															int num=0,hall=0,room=0;
															try{
																con = DBConn.getconn();
																
																st = con.createStatement();
																Statement st2 = con.createStatement();
																Statement st3 = con.createStatement();
																
																String sql = ("SELECT COUNT(`bid`) AS `total` FROM `booking`");
																String sql2= ("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'H%'");
																String sql3= ("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'R%'");
																
																ResultSet r3 =st3.executeQuery(sql3);
																ResultSet r2 =st2.executeQuery(sql2);
																rs = st.executeQuery(sql);
																
																while(rs.next()){
																	 num = rs.getInt("total");
																}
																while(r2.next()){
																	hall = r2.getInt("total");
																}
																while(r3.next()){
																	room = r3.getInt("total");
																}
																
														%>		
															<p>Total Bookings : <%= num %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Hall Bookings : <%=hall %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hall Bookings : <%=room %></p>
															<% 
																
																
															}catch(Exception e){
																System.out.println("Error     "+e);
																e.printStackTrace();
															}
																
															%>
																
														
														
													</div>
												</div>
											</div>
											<div class="col-md-6 col-xs-6 col-sm-6">
												<div class="card">
													<div class="con">
														<h4>
															<b>Available Rooms</b>
														</h4>
														<p>Architect & Engineer</p>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-xs-6 col-sm-6">
												<div class="card">
													<div class="con">
														<h4>
															<b>Available Halls</b>
														</h4>
														<p>Architect & Engineer</p>
													</div>
												</div>
											</div>
											<div class="col-md-12 col-xs-12 col-sm-12">
												<div class="card">
													<div class="con">
														<h4>
															<b>Booking List</b>
														</h4>
														<p>Here are the all booking details.</p>
														<table>
															<tr>
																<th>ID</th>
																<th>Fisrt Name</th>
																<th>Email</th>
																<th>Tel</th>
																<th>Checkin</th>
																<th>Checkout</th>
																<th>Guests</th>
																<th>Type</th>
															</tr>
														<%
															try{
																con = DBConn.getconn();
																st = con.createStatement();
																String sql = ("SELECT `bid`, `firstname`,`email`, `tel`, `checkin`, `checkout`, `guests`, `type` FROM `booking`");
																
																
																rs = st.executeQuery(sql);
																while(rs.next()){
																	
														%>
															<tr>
																<td class="booking"><%=rs.getInt(1)%></td>
																<td class="booking"><%=rs.getString(2)%></td>
																<td class="booking"> <%=rs.getString(3) %></td>
																<td class="booking"><%=rs.getString(4) %></td>
																<td class="booking"><%=rs.getDate(5) %></td>
																<td class="booking"><%=rs.getDate(6) %></td>
																<td class="booking"><%=rs.getInt(7) %></td>
																<td class="booking"><%=rs.getString(8) %></td>
															</tr>
														<% 
																}
																
															}catch(Exception e){
																System.out.println("Error     "+e);
																e.printStackTrace();
															}
																
														%>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="rwo">
									<div class="col-md-12">
										<div class="income">
											<div class="income_con">
												<h4>
													<b>Profits</b>
												</h4>
												<p>Total income & profits</p>
											</div>
												<table>
													<tr>
														<th>Booking ID</th>
														<th>Payment</th>
													</tr>
											<%
															try{
																con = DBConn.getconn();
																st = con.createStatement();
																String sql = ("SELECT `bid`, `price` FROM `booking`");
																
																
																rs = st.executeQuery(sql);
																while(rs.next()){
																	double d=rs.getInt(2);
											%>
											
												<tr>
													<td><center><%=rs.getString(1) %></center></td>
													<td><center>Rs: <%=String.format("%,.2f",d) %></center></td>
												</tr>
											
											<% 
																}
																
															}catch(Exception e){
																System.out.println("Error     "+e);
																e.printStackTrace();
															}
																
											%>
											</table>
											<hr>
											<hr>
											<%
															try{
																con = DBConn.getconn();
																st = con.createStatement();
																String sql = ("SELECT SUM(`price`) FROM `booking`");
																
																
																rs = st.executeQuery(sql);
																while(rs.next()){
																	double d=rs.getInt(1);
											%>
											
											<h4>
													<b>Total Income:<br> Rs: <%= String.format("%,.2f",d) %>/=</b>
											</h4>
											<% 
																}
																
															}catch(Exception e){
																System.out.println("Error     "+e);
																e.printStackTrace();
															}
																
											%>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




</body>

</html>