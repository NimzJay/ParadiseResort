<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <title>Booking Status</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="../css/hiran.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body class="bg-hallbooking">

    <div class="container">
        <div class="main-body" id="card">
            <form class="container-fluid" action="" method="post">
                <div class="container">
              
              <h1 style="text-align: center;" class="my-5">Booking Status</h1>
              <br>
              <div class="row gutters-sm">
                <div class="col-md-4 mb-3">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex flex-column align-items-center text-center">
                        <img src="../img/User01.png" alt="Admin" class="rounded-circle" width="150">
                        <div class="mt-3">
                          <h4>John Doe</h4>
                         
                          <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>
                          
                        </div>
                      </div>
                    </div>
                    
                  </div>

                  

                </div>
                
                <div class="col-md-8">
                  <div class="card mb-3">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Full Name</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          Kenneth Valdez
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Email</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          fip@jukmuh.al
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Phone</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          (239) 816-9029
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Mobile</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          (320) 380-4539
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Address</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          Bay Area, San Francisco, CA
                        </div>
                      </div>
                    </div>
                  </div>

                </div>

                    

              </div>

              <div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Room Boking</i>Status</h6>

                      <h6>Room Type</h6>
                      <div>
                        <input type="text" id="txtroom" name="room" value="Family" readonly><br>
                      </div>
                      <hr>

                      <h6>Number of Rooms</h6>
                      <div>
                        <input type="text" id="txtnosroom" name="room" value="2" readonly><br>
                      </div>
                      <hr>

                      <h6>Number Of Guests</h6>
                      <div>
                        <input type="text" id="txtNoOfGuests" name="guests" value="5" readonly><br>
                      </div>
                      <hr>
                      <h6>Check in Date</h6>
                      <div>
                        <input type="text" id="txtindate" name="inDate" value="2021/09/05" readonly><br>
                      </div>
                      <hr>
                      <h6>Check out Date</h6>
                      <div>
                        <input type="text" id="txtoutdate" name="outDate" value="2021/09/08" readonly><br>
                      </div>
                      
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Reception Hall Booking</i>Status</h6>
                      <h6>Hall Type</h6>
                      <div>
                        <input type="text" id="txthall" name="hall" value="Hall 01" readonly><br>
                      </div>
                      <hr>
                      <h6>Number of Guests</h6>
                      <div>
                        <input type="text" id="txthallGuests" name="guests" value="150" readonly><br>
                      </div>
                      <hr>
                      <h6>Date</h6>
                      <div>
                        <input type="text" id="txthalldate" name="Date" value="2021/09/10" readonly><br>
                      </div>
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </form>
            </div>
    </div>


    

    



      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>