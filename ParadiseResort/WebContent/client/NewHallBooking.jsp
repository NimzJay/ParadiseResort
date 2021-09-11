<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="../css/hiran.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body class="bg-hallbooking">
    <div class="container-fluid">
      <div class="row">
        <div class="col-6 mx-auto my-5" id="card">
          <form class="container-fluid" action="" method="post">
            <div class="container">
              <h1 style="text-align: center;" class="my-5">New Reception Hall Booking</h1>
              <br>
            <h3>
              Please fill following details.
            </h3>
            <hr>
            
            <div class="form-group">
              <label for="username"><span class="glyphicon"> </span> Username
              </label>
              <input type="text" class="form-control" id="txtuserName" placeholder="Enter Username" required>
            </div>
             
            <div class="form-group">
              <label for="email"> <span class="glyphicon"></span> Email Address
              </label>
              <input type="text" class="form-control" id="txtemail" placeholder="Enter Email" required>
            </div>
        
            <div class="form-group">
              <label for="phone"> <span class="glyphicon"></span> Contact Number 
              </label>
              <input type="text" class="form-control" id="txtnumber" placeholder="Enter Mobile Number" required>
            </div>
            <br>
            <hr>
        
            <h3>Please Select Booking Details.</h3>
        
            <div class="form-group">
              <label for="date"> <span class="glyphicon"></span> Select the Date
              </label>
              <input type="date" class="form-control" id="txtdate">
            </div>
            
            <div class="form-group">
              <label for="guest"> <span class="glyphicon"></span> Select the Number of Guests
              </label>
              <input type="number" class="form-control" id="txtguests">
            </div>
        
            <br>
            <p style="font-weight: bold;">Please select a hall</p>
        
            <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="Radio1">
              <label class="form-check-label" for="flexRadioDefault1">
                Hall 01
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="Radio2" checked>
              <label class="form-check-label" for="flexRadioDefault2">
                Hall 02
              </label>
            </div>
        
            <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="Radio3" checked>
              <label class="form-check-label" for="flexRadioDefault3">
                Hall 03
              </label>
            </div>
        
            <hr>
              
            <div class="row">
            <div class="col">
              <button type="submit" class="btn btn-primary w-100" onClick="">Submit</button>
              
            </div>
            <div class="col">
              <button type="reset" class="btn btn-danger w-100">Reset</button>
            </div>
          </div>
               
            
              

              <br><br>
              
              
        </div>
      </div>
            
            
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>