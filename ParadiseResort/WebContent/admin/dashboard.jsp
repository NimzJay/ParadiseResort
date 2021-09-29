<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Arrays"%>
<%@page import="dbConnection.DBConn"%>
<%@page import="servlets.Session"%>
<%
	String user = Session.getUser();
%>
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
<link rel="stylesheet" href="../css/dash.css">
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

					<img id="logo" src="../img/logo.png"/>

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
						<li><a href="./NewUser.jsp" class="nav-link text-white"> <span
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
						<img src="../img/User01.png" alt="profile_picture">
						<%
							user = Session.getUser();
							String fname = null, sname = null, email = null, uname = null, tel = null;
							try {
								con = DBConn.getconn();
								st = con.createStatement();
								String sql1 = ("SELECT `uid`, `fname`, `lname`, `username`, `password`, `nic`, `email`, `contact`, `image`, `uType` FROM `user` WHERE `username` LIKE '"
										+ user + "'");
								rs = st.executeQuery(sql1);
								while (rs.next()) {
									uname = rs.getString("username");
									tel = rs.getString("contact");
									fname = rs.getString("fname");
									sname = rs.getString("lname");
									email = rs.getString("email");
								}
						%>
						<h3><%=fname%></h3>
						<p><%=email%></p>
						<%
							} catch (Exception e) {
								System.out.println("Error     " + e);
								e.printStackTrace();
							}
						%>
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
														<%
															int n=0,a=0;
															try{
																con = DBConn.getconn();																
																st = con.createStatement();	
																Statement st2 = con.createStatement();
																
																String sql =("SELECT COUNT(`uid`) AS `total` FROM `user` where `uType` LIKE 'C%'");	
																String sql2 =("SELECT COUNT(`uid`) AS `total` FROM `user` where `uType` LIKE 'A%'");	
																rs = st.executeQuery(sql);
																ResultSet rs2 = st2.executeQuery(sql2);
																
																while(rs.next()){
																	 n = rs.getInt("total");
																}
																while(rs2.next()){
																	 a = rs2.getInt("total");
																}
																
														%>		
															<p>Total Clients : <%= n %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Total Admins : <%=a %> </p>
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
															<b>Room Bookings</b>
														</h4>
														<%	
															
															int r1=0,r2=0,r3=0,r4=0,r5=0;
															try{
																con = DBConn.getconn();																
																st = con.createStatement();	
																Statement st2 = con.createStatement();
																Statement st3 = con.createStatement();
																Statement st4 = con.createStatement();
																Statement st5 = con.createStatement();
																
																String sql =("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'Classic'");	
																String sql2 =("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'Suite'");
																String sql3 =("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'Family'");
																String sql4 =("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'Deluxe'");
																String sql5 =("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'Superior'");
																
																rs = st.executeQuery(sql);
																ResultSet rs2 = st2.executeQuery(sql2);
																ResultSet rs3 = st3.executeQuery(sql3);
																ResultSet rs4 = st4.executeQuery(sql4);
																ResultSet rs5 = st5.executeQuery(sql5);
																while(rs.next()){
																	 r1 = rs.getInt("total");
																	 
																}
																while(rs2.next()){
																	 r2 = rs2.getInt("total");
																	 
																}
																while(rs3.next()){
																	 r3 = rs3.getInt("total");
																	 
																}
																while(rs4.next()){
																	 r4 = rs4.getInt("total");
																	 
																}
																while(rs5.next()){
																	 r5 = rs5.getInt("total");
																	 
																}
																
														%>		
															<p>Classic : <%=r1 %>  Bookings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Suite : <%=r2 %> Bookings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Family : <%=r3 %> Bookings<br>
															<br>Deluxe :  <%=r4 %> Bookings &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Superior : <%=r5 %> Bookings
															</p>
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
															<b>Hall Bookings</b>
														</h4>
														<%	
															int h1=0,h2=0,h3=0;
															
															try{
																con = DBConn.getconn();																
																st = con.createStatement();	
																Statement st2 = con.createStatement();
																Statement st3 = con.createStatement();
																
																String sql =("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'Hall 1'");	
																String sql2 =("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'Hall 2'");
																String sql3 =("SELECT COUNT(`bid`) AS `total` FROM `booking` where `type` LIKE 'Hall 3'");
																rs = st.executeQuery(sql);
																ResultSet rs2 = st2.executeQuery(sql2);
																ResultSet rs3 = st3.executeQuery(sql3);
																while(rs.next()){
																	 h1 = rs.getInt("total");
																	 
																}
																while(rs2.next()){
																	 h2 = rs2.getInt("total");
																	 
																}
																while(rs3.next()){
																	 h3 = rs3.getInt("total");
																	 
																}
																
														%>		
															<p>Hall 1: <%=h1 %> Bookings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Hall 2 : <%=h2 %> Bookings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>  Hall 3 : <%=h3 %> Bookings</p>
															<% 
																
																
															}catch(Exception e){
																System.out.println("Error     "+e);
																e.printStackTrace();
															}
																
															%>
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