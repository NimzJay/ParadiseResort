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
        <form class="container-fluid" action="" method="post">
          <div class="container">

            <h4 style="font-family: 'Calibri Light';">
              Please fill the following details!
            </h4>
            <hr>

            <div class="row">
              <div class="form-group">
                <label>First Name</label>
                <input type="text" class="form-control" placeholder="First name"><br>
              </div>
              <br>
              <div class="form-group">
                <label>Last Name</label>
                <input type="text" class="form-control" placeholder="Last name"><br>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <label>Email</label>
                <input type="text" class="form-control" placeholder="name@example.com"><br>
              </div>
              <div class="form-group">
                <label>Contact Number</label>
                <input type="text" class="form-control" placeholder="Contact Number"><br>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <label>Check In</label>
                <input type="text" class="form-control" placeholder="mm/dd/yyyy"><br>
              </div>
              <div class="form-group">
                <label>Check Out</label>
                <input type="text" class="form-control" placeholder="mm/dd/yyyy"><br>
              </div>
            </div>

            <div class="row">
              <div class="form-group">
                <label>Select Your Room</label>
                <select class="form-select">
                  <option selected>Room Type</option>
                  <option value="FamilyRoom">Family Room</option>
                  <option value="DeluxeRoom">Deluxe Room</option>
                  <option value="ClassicRoom">Classic Room</option>
                  <option value="SuperiorRoom">Superior Room</option>
                  <option value="LuxuryRoom">Luxury Room</option>
                </select> <br>
              </div>

              <div class="form-group">
                <label>No of Guests</label>
                <select class="form-select">
                  <option selected>No of Guests</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7 & more</option>
                </select><br>
              </div>
            </div>

            <div class="form-group">
              <label for="message">Message</label>
              <textarea class="form-control" id="message" rows="3" placeholder="Enter your message"></textarea>
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
