<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="../other/bootstrap.min.css" /> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="../other/jquery-3.6.0.min.js"></script>
    <!-- <script src="../other/js/bootstrap.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="../css/nim.css" />
    <link rel="stylesheet" href="../css/navbar.css" />
    <script src="../js/navbar2.js"></script>

    <title>Signin | Paradise Resort</title>
</head>

<body class="bg-white">
    <nav id="nav" class="navbar affix fixed-top navbar-expand-sm" data-spy="affix">
        <div class="container h-100">
            <a href="#" class="navbar-brand">Paradise Resort</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="d-flex collapse navbar-collapse justify-content-end h-100" id="navbarNav">
                <ul class="navbar-nav h-100 align-items-center">
                    <li class="nav-item px-lg-4 px-md-3">
                        <a class="nav-link w-100 active" aria-current="page" href="index.html">Home</a>
                    </li>
                    <li class="nav-item px-lg-4 px-md-3 px-2">
                        <a class="nav-link w-100" href="#">Gallery</a>
                    </li>
                    <li class="nav-item px-lg-4 px-md-3 px-2">
                        <a class="nav-link w-100" href="#">Book Now</a>
                    </li>
                    <li class="nav-item px-lg-4 px-md-3 px-2 active">
                        <a class="nav-link w-100" href="Signin.html">Sign in</a>
                    </li>
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
                    
                    <div class="vh-100 d-flex align-items-center h-custom-2 px-5 mx-5 mt-md-5 pt-md-5 mt-sm-5 pt-sm-5" style="border-radius: 30px;">

                        <form style="width: 30rem;" class="">

                            <h2 class="fw-normal mb-3 pb-3 display-5" style="letter-spacing: 1px;">Sign in</h2>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form2Example17">Email address</label>
                                <input type="email" id="form2Example17" class="form-control form-control-lg" />
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form2Example27">Password</label>

                                <input type="password" id="form2Example27" class="form-control form-control-lg" />
                            </div>

                            <div class="row pt-1 mb-4">
                                <div class="signin col-12">
                                    <button class=" w-100 btn btn-info btn-lg btn-block" type="button">Signin</button>
                                </div>
                                
                            </div>

                        </form>

                    </div>

                <!-- </div>
                <div class="col-sm-6 px-0 d-none d-sm-block">
                    <img src="../img/hotel4.jpg"
                        alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left;">
                </div> -->
            </div>
        </div>
    </section>

</body>

</html>