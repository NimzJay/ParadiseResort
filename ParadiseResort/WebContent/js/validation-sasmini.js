 function validateFirstName() {
	var name = document.getElementById("valFirstName").value;
	if ((name == "") || (name == null)) {
		document.getElementById("firstName").innerHTML = "Enter First Name!";
		document.getElementById("firstName").style.color = "red";
		document.getElementById("valFirstName").style.border = "1px solid red";
		return false;
		
	} else {
		document.getElementById("firstName").innerHTML = "";
		document.getElementById("valFirstName").style.border = "1px solid green";
		return true;
	}

}

function validateLastName() {
	var name = document.getElementById("valLastName").value;
	if ((name == "") || (name == null)) {
		document.getElementById("lastName").innerHTML = "Enter Last Name!";
		document.getElementById("lastName").style.color = "red";
		document.getElementById("valLastName").style.border = "1px solid red";
		return false;
		
	} else {
		document.getElementById("lastName").innerHTML = "";
		document.getElementById("valLastName").style.border = "1px solid green";
		return true;
	}
}

 
function validateEmail() {
	var email = document.getElementById("valEmail").value;
	var dot = email.lastIndexOf(".");
	var at = email.indexOf("@");
	var len = email.length;

	if ((email == null) || (email == "")) {
		document.getElementById("alertEmail").innerHTML = "Enter Email!";
		document.getElementById("alertEmail").style.color = "red";
		document.getElementById("valEmail").style.border = "1px solid red";
		return false;

	} else if ((at < 1) || (dot - at < 2) || (len - dot < 3)) {
		document.getElementById("alertEmail").innerHTML = "Invalid Email Format!";
		document.getElementById("alertEmail").style.color = "red";
		document.getElementById("valEmail").style.border = "1px solid red";

		return false;
		
	}else{
		document.getElementById("alertEmail").innerHTML = "";
		document.getElementById("valEmail").style.border = "1px solid green";
		return true;		
	}
}

function validateContact() {
	var contact = document.getElementById("valContact").value;

	if ((contact == null) || (contact == "")) {
		document.getElementById("contactNum").innerHTML = "Enter Phone Number!";
		document.getElementById("contactNum").style.color = "red";
		document.getElementById("valContact").style.border = "1px solid red";
		return false;

	} else if ((contact.length != 10) || (isNaN(contact))) {
		document.getElementById("contactNum").innerHTML = "Invalid Phone Number!";
		document.getElementById("contactNum").style.color = "red";
		document.getElementById("valContact").style.border = "1px solid red";
		return false;
		
	}else{
		document.getElementById("contactNum").innerHTML = "";
		document.getElementById("valContact").style.border = "1px solid green";
		return true;
	}
}

function validateCheckInDate() {
	var checkInDate = document.getElementById("valCheckInDate").value;
	if ((checkInDate == "") || (checkInDate == null)) {
		document.getElementById("checkInDate").innerHTML = "Enter Check-In Date!";
		document.getElementById("checkInDate").style.color = "red";
		document.getElementById("valCheckInDate").style.border = "1px solid red";
		return false;
		
	} else {
		document.getElementById("checkInDate").innerHTML = "";
		document.getElementById("valCheckInDate").style.border = "1px solid green";
		return true;
	}

}

function validateCheckOutDate() {
	var checkOutDate = document.getElementById("valCheckOutDate").value;
	if ((checkOutDate == "") || (checkOutDate == null)) {
		document.getElementById("checkOutDate").innerHTML = "Enter Check-Out Date!";
		document.getElementById("checkOutDate").style.color = "red";
		document.getElementById("valCheckOutDate").style.border = "1px solid red";
		return false;
		
	} else {
		document.getElementById("checkOutDate").innerHTML = "";
		document.getElementById("valCheckOutDate").style.border = "1px solid green";
		return true;
	}

}

function validateGuests() {
	var guests = document.getElementById("valGuests").value;
	if ((guests == "") || (guests == null)) {
		document.getElementById("guests").innerHTML = "Enter Number of Guests!";
		document.getElementById("guests").style.color = "red";
		document.getElementById("valGuests").style.border = "1px solid red";
		return false;
		
	} else {
		document.getElementById("guests").innerHTML = "";
		document.getElementById("valGuests").style.border = "1px solid green";
		return true;
	}

}

function validateSelectRoom() {  
    if(document.getElementById('validationFormCheck1').checked) { 
    	document.getElementById("roomType").innerHTML = "";
		 
		return true;
        
    }else if(document.getElementById('validationFormCheck2').checked) { 
    	document.getElementById("roomType").innerHTML = "";
		 
		return true;
        
    }else if(document.getElementById('validationFormCheck3').checked) { 
    	document.getElementById("roomType").innerHTML = "";
		 
		return true;
		
    }else if(document.getElementById('validationFormCheck4').checked) { 
    	document.getElementById("roomType").innerHTML = "";
		 
		return true;  
        
    }else if(document.getElementById('validationFormCheck5').checked) { 
    	document.getElementById("roomType").innerHTML = "";
		 
		return true; 
        
    }else if(document.getElementById('validationFormCheck6').checked) { 
    	document.getElementById("roomType").innerHTML = "";
		 
		return true; 
        
    }else { 
    	document.getElementById("roomType").innerHTML = "Please Select a Room!";
		document.getElementById("roomType").style.color = "red";
		return false;
    } 
} 

function roomBookingValidate() {

	if (validateFirstName() && validateLastName() && validateEmail() && validateContact() && validateCheckInDate() && validateCheckOutDate() && validateGuests() && validateSelectRoom()) {

	} else {
		event.preventDefault();
	}

}


 