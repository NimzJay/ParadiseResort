<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="../other/bootstrap.min.css" /> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script src="../other/jquery-3.6.0.min.js"></script>
<!-- <script src="../other/js/bootstrap.min.js"></script> -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" href="../css/nim.css" />
<link rel="stylesheet" href="../css/dash.css" />

<title>New User | Paradise Resort</title>
</head>
<body>
	<div class="row">
		<div class="col shadow signup"
			style="padding: 2% 7% 2% 7%; background-color: rgba(255, 255, 255, 0.9);">
			<h4 class="display-4">User Registration</h4>

			<!-- Login Form -->
			<form id="register" action="../NewUser" method="POST">
				<div class="row">
					<div class="col">
						<label for="inputEmail4">Name</label>
					</div>
				</div>
				<div class="row mb-3">
					<div class="form-group col-md-6 col-sm-6">
						<input type="text" class="form-control" name="fname"
							placeholder="First name">
					</div>
					<div class="form-group col-md-6 col-sm-6">
						<input type="text" class="form-control" name="lname"
							placeholder="Last name">
					</div>
				</div>
				<div class="form-row mb-3">
					<div class="form-group col-md-12 mb-2">
						<label for="inputEmail4">Username</label> <input type="text"
							class="form-control" name="user">
					</div>
				</div>
				<div class="form-row mb-2">
					<div class="form-group col-md-12">
						<label for="inputPassword4">Password</label> <input
							type="password" class="form-control" id="pass"
							placeholder="Password" name="pass">
					</div>
				</div>
				<div class="form-row mb-3">
					<div class="form-group col-md-12">
						<input type="password" class="form-control" id="repass"
							placeholder="Confirm Password" name="repass">
					</div>
				</div>
				<div class="form-row mb-3">
					<div class="form-group col-md-12">
						<label for="inputAddress">NIC</label> <input type="text"
							class="form-control" id="nic" placeholder="987654321V" name="nic">
					</div>
				</div>
				<div class="form-row mb-3">
					<div class="form-group col-md-12">
						<label for="inputAddress">Email</label> <input type="email"
							class="form-control" id="inputEmail"
							placeholder="johndoe@example.com" name="email">
					</div>
				</div>
				<div class="form-row mb-3">
					<div class="form-group col-md-12">
						<label for="inputAddress">Phone</label> <input type="text"
							class="form-control" id="inputPhone" name="phone"
							placeholder="0777123456">
					</div>
				</div>
				<div class="form-row mb-3">
					<div class="form-group col-md-12">
						<label for="inputAddress">User Type</label><select
							class="form-select" aria-label="Default select example"
							name="type">
							<option selected>Select User Type</option>
							<option value="client">Client</option>
							<option value="admin">Admin</option>
						</select>
					</div>
				</div>

				<div class="row mt-4 mb-4">
					<div class="form-group col-md-6">
						<input type="reset" value="Reset"
							class="btn btn-danger btn-block w-100 bg-orange" style="border:none;">
					</div>
					<div class="form-group col-md-6">
						<input type="submit" class="btn btn-primary btn-block w-100 bg-green"
							value="Register" style="border:none;">
					</div>

					<br>

				</div>
			</form>
		</div>
	</div>
</body>
</html>