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
<title>Customer List View</title>
<script type="text/javascript">
	function delete(){
		
	}
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row ">
			<div class="col-auto col-md-3 col-xl-2 px-sm-2 ">
				<div
					class="d-flex flex-column align-items-center align-items-sm-start px-3  pt-2 min-vh-100 side">

					<img id="logo" src="../img/logo.png" />

					<hr>
					<hr>
					<ul
						class="nav nav-pills flex-column mb-sm-auto  align-items-center align-items-sm-start"
						id="menu">
						<li class="nav-item"><a href="./dashboard.jsp"
							class="nav-link " aria-current="page"> <span class="icon"><i
									class="fas fa-home me-2"></i></span> <span
								class="ms-1 d-none d-sm-inline item">Home</span>
						</a></li>
						<li><a href="#" class="nav-link active"> <span
								class="icon"><i class="fas fa-desktop me-2"></i></span> <span
								class="ms-1 d-none d-sm-inline item">Customer List View</span>
						</a></li>
						<li><a href="./NewUser.jsp" class="nav-link text-white">
								<span class="icon"><i class="fas fa-user-friends me-2"></i></span>
								<span class="ms-1 d-none d-sm-inline item">Add New
									Customer</span>
						</a></li>
						<li><a href="#" class="nav-link text-white"> <span
								class="icon"><i class="fas fa-sign-out-alt me-2"></i></span> <span
								class="ms-1 d-none d-sm-inline item">Log-out</span>
						</a></li>
					</ul>
					<hr>
					<div class="profile" style="width: 100%">
						<img src="../img/User01.png" alt="profile_picture">
						<h3>Anamika Roy</h3>
						<p>Designer</p>
					</div>
				</div>

			</div>
			<div class="col py-3">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="view_table">
								<h1>
									<b>Customer List</b>
								</h1>
								<p>
									All Customers are Listed Here. You can perform <b>Edit</b> or <b>Delete</b>.
								</p>
								<table>
									<tr>
										<th>User ID</th>
										<th>First Name</th>
										<th>Second Name</th>
										<th>User Name</th>
										<th>Password</th>
										<th>NIC</th>
										<th>Email</th>
										<th>Contact Number</th>
										<th>Delete</th>
									</tr>
									<%
															try{
																con = DBConn.getconn();
																st = con.createStatement();
																String sql = ("SELECT `uid`,`fname`, `lname`, `username`, `password`, `nic`, `email`, `contact` FROM `user` WHERE `uType` LIKE 'C%'");
																
																
																rs = st.executeQuery(sql);
																while(rs.next()){
																	
									%>
									<tr>
										<td class="booking"><%=rs.getInt(1)%></td>
										<td class="booking"><%=rs.getString(2)%></td>
										<td class="booking"><%=rs.getString(3)%></td>
										<td class="booking"><%=rs.getString(4) %></td>
										<td class="booking"><%=rs.getString(5) %></td>
										<td class="booking"><%=rs.getString(6) %></td>
										<td class="booking"><%=rs.getString(7) %></td>
										<td class="booking"><%=rs.getInt(8) %></td>
										<td class="booking"><a class="btn btn-danger" href='./userDelete.jsp?d=<%=rs.getInt(1)%>'>Delete</a></td>
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

</body>
</html>