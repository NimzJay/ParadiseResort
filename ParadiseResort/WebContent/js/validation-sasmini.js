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
		document.getElementById("contactNum").innerHTML = "Enter Phone Number";
		document.getElementById("contactNum").style.color = "red";
		document.getElementById("valContact").style.border = "1px solid red";
		return false;

	} else if ((contact.length != 10) && (isNaN(contact))) {
		document.getElementById("contactNum").innerHTML = "Invalid Phone Number";
		document.getElementById("contactNum").style.color = "red";
		document.getElementById("valContact").style.border = "1px solid red";
		return false;
	}else{
		document.getElementById("contactNum").innerHTML = "";
		document.getElementById("valContact").style.border = "1px solid green";
		return true;
	}
}

function roomBookingValidate() {

	if (validateFirstName() && validateLastName() && validateEmail() && validateContact()) {

	} else {
		event.preventDefault();
	}

}


 