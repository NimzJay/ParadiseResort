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
    <script src="../js/navbar.js"></script>

    <title>Home | Paradise Resort</title>
</head>

<body class="bg-white">
    <nav id="nav" class="navbar fixed-top navbar-expand-sm" data-spy="affix">
        <div class="container h-100">
            <a href="#" class="navbar-brand">Paradise Resort</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="d-flex collapse navbar-collapse justify-content-end h-100" id="navbarNav">
                <ul class="navbar-nav h-100 align-items-center">
                    <li class="nav-item px-lg-4 px-md-3 active">
                        <a class="nav-link w-100 active" aria-current="page" href="index.html">Home</a>
                    </li>
                    <li class="nav-item px-lg-4 px-md-3 px-2">
                        <a class="nav-link w-100" href="#">Gallery</a>
                    </li>
                    <li class="nav-item px-lg-4 px-md-3 px-2">
                        <a class="nav-link w-100" href="#">Book Now</a>
                    </li>
                    <li class="nav-item px-lg-4 px-md-3 px-2">
                        <a class="nav-link w-100" href="Signin.html">Sign in</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- /.navbar -->

    <section class="first mb-5">
        <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
                    aria-label="Slide 4"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4"
                    aria-label="Slide 5"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5"
                    aria-label="Slide 6"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="6"
                    aria-label="Slide 7"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="2000">
                    <img src="../img/hotel1.jpg" class="d-block w-100" alt="Slide 1">
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="../img/hotel4.jpg" class="d-block w-100" alt="Slide 2">
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="../img/hotel5.jpg" class="d-block w-100" alt="Slide 3">
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="../img/hotel2.jpg" class="d-block w-100" alt="Slide 4">
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="../img/hotel3.jpg" class="d-block w-100" alt="Slide 5">
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="../img/hotel6.jpg" class="d-block w-100" alt="Slide 6">
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="../img/hotel7.jpg" class="d-block w-100" alt="Slide 7">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <section id="about" class="margin_100 padding_50">
        <div class="container">
            <div class="col-9 mx-auto">
                <h1>Paradise Resort Sri Lanka</h1>
                <div class="hr"></div>
                <p>
                    Nestled between verdant rainforest and white-sand beaches on the island, The Paradise Resort
                    overlooks the alluring waves of the Indian Ocean.
                    Explore the tropical beauty and rich marine life of this peaceful, eco-conscious setting. Our
                    private lagoon, Iridium Spa and outdoor infinity
                    pool promise nonpareil relaxation. A large variety of water sports and excursions at our diving
                    center can be arranged by our signature service,
                    the butlers. In addition, an exquisite culinary fare awaits at our restaurants and bars. Boasting
                    refined furnishings and island-inspired design,
                    each of our 33 on-land and 44 over-water villas promises picturesque ocean or garden views from
                    private terraces and pools. Our legendary Paradise
                    Resort Butlers deliver bespoke service day or night.
                </p>
                <div class="vl"></div>
            </div>

        </div>
    </section>

    <section id="services" class="bg-light padding_50">
        <div class="container">
            <h1>Services</h1>
            <div class="hr mt-3 w-25"></div>
            <div class="row justify-content-center">
                <div class="mx-auto padding_50 col-lg-3 col-md-12 col-sm-12 col-12">

                    <div class="card shadow" style=" border-bottom: 5px solid #ff7b63;">
                        <img src="../img/starlight2.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title pt-4 pb-4" style="text-align: center;"><b>Starlight Dinner</b></h5>
                            <p class="card-text pb-4">Relax under the stars as they fill the night sky with a romantic
                                private dining experience set on one of SriLanka’s pristine beaches, and surrounded with
                                illuminating candlelight and festive lanterns all with your toes in the sand.</p>
                            <div class="row ">
                                <div id="prBtn" class="col-12 mx-auto">
                                    <button class="btn">Learn More</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mx-auto padding_50 col-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="card shadow" style=" border-bottom: 5px solid #ff7b63;">
                        <img src="../img/family.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title pt-4 pb-4" style="text-align: center;"><b>Family Traditions</b></h5>
                            <p class="card-text pb-4">At the Paradise Resort, a visionary retreat of natural beauty and
                                unforgettable recreation, discovery awaits. Every moment becomes a treasure and every
                                experience a new family tradition.</p>
                            <div class="row ">
                                <div id="prBtn" class="col-12 mx-auto">
                                    <button class="btn">Learn More</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mx-auto padding_50 col-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="card shadow" style=" border-bottom: 5px solid #ff7b63;">
                        <img src="../img/cinema.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title pt-4 pb-4" style="text-align: center;"><b>Private Jungle Cinema</b>
                            </h5>
                            <p class="card-text pb-4">Resort offers an exclusive Jungle Cinema experience set within one
                                of the resort’s most secluded spots surrounded by lush trees and soft white sand. This
                                is the perfect way to spend an evening on the most breathtaking island in the Indian
                                Ocean.</p>
                            <div class="row ">
                                <div id="prBtn" class="col-12 mx-auto">
                                    <button class="btn">Learn More</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>


    <section id="ff" class="padding_50">
        <div class="container">
            <h1>Features</h1>
            <div class="hr mt-3 w-25"></div>
            <div class="row justify-content-center">
                <div class="col-8 mx-auto">
                    <div class="row">
                        <div class="col-2 col-xs-4 mx-auto">
                            <div class="shadow" id="features">
                                <span>
                                    <center><i class="fas fa-dumbbell txt-grey"></i></center>
                                </span>
                            </div>
                            <br>
                            <p>Fitness Center</p>
                        </div>
                        <div class="col-2 col-xs-4 mx-auto">
                            <div class="shadow" id="features">
                                <span>
                                    <center><i class="fab fa-envira txt-grey"></i></center>
                                </span>
                            </div>
                            <br>
                            <p>Iridium Spa</p>
                        </div>
                        <div class="col-2 col-xs-4 mx-auto">
                            <div class="shadow" id="features">
                                <span>
                                    <center><i class="fas fa-swimmer txt-grey"></i></center>
                                </span>
                            </div>
                            <br>
                            <p>Infinity Pool</p>
                        </div>
                        <div class="col-2 col-xs-4 mx-auto">
                            <div class="shadow" id="features">
                                <span>
                                    <center><i class="fas fa-utensils txt-grey"></i></center>
                                </span>
                            </div>
                            <br>
                            <p>Private Dining</p>
                        </div>
                        <div class="col-2 col-xs-4 mx-auto">
                            <div class="shadow" id="features">
                                <span>
                                    <center><i class="fas fa-wifi txt-grey"></i></center>
                                </span>
                            </div>
                            <br>
                            <p>Complimentary <br>Wi-Fi</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="text-center text-white" style="background-color: #f1f1f1;">
        <!-- Grid container -->
        <div class="container pt-4">
          <!-- Section: Social media -->
          <section class="mb-4">
            <!-- Facebook -->
            <a
              class="btn btn-link btn-floating btn-lg text-dark m-1"
              href="#!"
              role="button"
              data-mdb-ripple-color="dark"
              ><i class="fab fa-facebook-f"></i
            ></a>
      
            <!-- Twitter -->
            <a
              class="btn btn-link btn-floating btn-lg text-dark m-1"
              href="#!"
              role="button"
              data-mdb-ripple-color="dark"
              ><i class="fab fa-twitter"></i
            ></a>
      
            <!-- Google -->
            <a
              class="btn btn-link btn-floating btn-lg text-dark m-1"
              href="#!"
              role="button"
              data-mdb-ripple-color="dark"
              ><i class="fab fa-google"></i
            ></a>
      
            <!-- Instagram -->
            <a
              class="btn btn-link btn-floating btn-lg text-dark m-1"
              href="#!"
              role="button"
              data-mdb-ripple-color="dark"
              ><i class="fab fa-instagram"></i
            ></a>
      
            <!-- Linkedin -->
            <a
              class="btn btn-link btn-floating btn-lg text-dark m-1"
              href="#!"
              role="button"
              data-mdb-ripple-color="dark"
              ><i class="fab fa-linkedin"></i
            ></a>
            <!-- Github -->
            <a
              class="btn btn-link btn-floating btn-lg text-dark m-1"
              href="#!"
              role="button"
              data-mdb-ripple-color="dark"
              ><i class="fab fa-github"></i
            ></a>
          </section>
          <!-- Section: Social media -->
        </div>
        <!-- Grid container -->
      
        <!-- Copyright -->
        <div class="text-center text-dark p-3" style="background-color: rgba(0, 0, 0, 0.2);">
          © 2021 Copyright:
          <a class="text-dark" href="index.html">Paradise Resort</a>
        </div>
        <!-- Copyright -->
      </footer>

</body>

</html>