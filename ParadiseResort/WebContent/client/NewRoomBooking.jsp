<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>New Room Booking Page</title>

  <link rel="stylesheet" href="../css/sasmini.css">
  <link rel="stylesheet" href="../other/bootstrap.min.css" />
  <script src="../other/jquery-3.6.0.min.js"></script>
  <script src="../other/js/bootstrap.min.js"></script>

</head>

<body class="bg-booking">
  <div class="container-fluid">
    <div class="row">
      <div class="col-6 mx-auto my-5" id="card">
        <br>
        <h2 class="display-6"><b>New Room Booking</b></h2><br>
        <form class="container-fluid" action="../RoomBooking" method="POST">
          <div class="container">

            <h4 style="font-family: 'Calibri Light';">
              Please fill the following details!
            </h4>
            <hr>

              <div class="form-group">
                <label>First Name</label>
                <input type="text" name="fname" class="form-control" placeholder="First Name" required><br>
              </div>
            
              <div class="form-group">
                <label>Last Name</label>
                <input type="text" name="lname" class="form-control" placeholder="Last Name" required><br>
              </div>
            
              <div class="form-group">
                <label>Email Address</label>
                <input type="text" name="email" class="form-control" placeholder="name@example.com" required><br>
              </div>
              
              <div class="form-group">
                <label>Contact Number</label>
                <input type="text" name="tel" class="form-control" placeholder="Contact Number" required><br>
              </div>
          
              <div class="form-group">
                <label>Check In Date</label>
                <input type="date" name="sdate" class="form-control" placeholder="mm/dd/yyyy" required><br>
              </div>
              
              <div class="form-group">
                <label>Check Out Date</label>
                <input type="date" name="edate" class="form-control" placeholder="mm/dd/yyyy" required><br>
              </div>
              
               <div class="form-group">
                <label>Number of Guests</label>
                <input type="number" name="numofg" class="form-control" placeholder="Number of Guests" required>
              </div>
              <br>
              
              <label><b>Select Your Room</b></label>
              <br>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="rad" value="classic" id="Radio1"> 
                <label class="form-check-label" for="flexRadioDefault1"> Classic Room - Rs. 20,000/= </label>
              </div>
              
               <div class="form-check">
                <input class="form-check-input" type="radio" name="rad" value="suite" id="Radio2"> 
                <label class="form-check-label" for="flexRadioDefault1"> Suite Room - Rs. 25,000/= </label>
              </div>
              
               <div class="form-check">
                <input class="form-check-input" type="radio" name="rad" value="family" id="Radio3"> 
                <label class="form-check-label" for="flexRadioDefault1"> Family Room - Rs. 30,000/= </label>
              </div>
              
               <div class="form-check">
                <input class="form-check-input" type="radio" name="rad" value="deluxe" id="Radio4"> 
                <label class="form-check-label" for="flexRadioDefault1"> Deluxe Room - Rs. 50,000/= </label>
              </div>
              
               <div class="form-check">
                <input class="form-check-input" type="radio" name="rad" value="superior" id="Radio5"> 
                <label class="form-check-label" for="flexRadioDefault1"> Superior Room - Rs: 70,000/= </label>
              </div>
              
               <div class="form-check">
                <input class="form-check-input" type="radio" name="rad" value="luxury" id="Radio6"> 
                <label class="form-check-label" for="flexRadioDefault1"> Luxury Room - Rs. 100,000/= </label>
              </div>

            <br>

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
    </div>
  </div>
</div>
</body>
</html> 
