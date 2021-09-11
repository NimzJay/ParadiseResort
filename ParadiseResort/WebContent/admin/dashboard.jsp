<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="../css/dash.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-xs-12 col-sm-12">
                <div class="row">
                    <div class="col-md-2 col-xs-12 col-sm-12">
                        <div class="d-flex flex-column flex-shrink-0 p-3 text-white side"
							style="width: 280px; height: 100vh;">
							<center><h2>Paradise Resort</h2></center>
							<hr>
							<ul class="nav nav-pills flex-column mb-auto">
								<li class="nav-item">
								<a href="#" class="nav-link active" aria-current="page">
									<span class="icon"><i class="fas fa-home me-4"></i></span> 
									<span class="item">Home</span></a>
								</li>
								<li><a href="#" class="nav-link text-white"> 
									<span class="icon"><i class="fas fa-desktop me-4"></i></span>
                                    <span class="item">Customer List View</span>
								</a></li>
								<li><a href="#" class="nav-link text-white"> 
									<span class="icon"><i class="fas fa-user-friends me-4"></i></span>
                                    <span class="item">Add New Customer</span>
								</a></li>
								<li><a href="#" class="nav-link text-white"> 
									<span class="icon"><i class="fas fa-sign-out-alt me-4"></i></span>
                                    <span class="item">Log-out</span>
								</a></li>
							</ul>
							<hr>
							<div class="profile">
                                        <img src="../img/User01.png"
                                            alt="profile_picture">
                                        <h3>Anamika Roy</h3>
                                        <p>Designer</p>
                                    </div>
						</div>
                    </div>
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <div class="row">
                                                    <div class="col-md-6 col-xs-6 col-sm-6">
                                                        <div class="card">
                                                            <div class="con">
                                                                <h4><b>Number of Customers</b></h4>
                                                                <p>Architect & Engineer</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-6 col-sm-6">
                                                        <div class="card">
                                                            <div class="con">
                                                                <h4><b>Number of Bookings</b></h4>
                                                                <p>Architect & Engineer</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-6 col-sm-6">
                                                        <div class="card">
                                                            <div class="con">
                                                                <h4><b>Available Rooms</b></h4>
                                                                <p>Architect & Engineer</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="rwo">
                                            <div class="col-md-12">
                                                <div class="income">
                                                    <div class="income_con">
                                                        <h4><b>Profits</b></h4>
                                                        <p>Total income & profits</p>
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
            </div>
        </div>
    </div>
</body>

</html>