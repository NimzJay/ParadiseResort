function validateFname() {
	var name = document.getElementById("fname").value;
	if ((name == "") || (name == null)) {
		document.getElementById("first").innerHTML = "Enter First Name!";
		document.getElementById("first").style.color = "red";
		document.getElementById("fname").style.border = "1px solid red";
		return false;
	} else {
		document.getElementById("first").innerHTML = "";
		document.getElementById("fname").style.border = "1px solid green";
		return true;
	}

}

function validateLname() {
	var name = document.getElementById("lname").value;
	if ((name == "") || (name == null)) {
		document.getElementById("last").innerHTML = "Enter Last Name!";
		document.getElementById("last").style.color = "red";
		document.getElementById("lname").style.border = "1px solid red";
		return false;
	} else {
		document.getElementById("last").innerHTML = "";
		document.getElementById("lname").style.border = "1px solid green";
		return true;
	}
}

function validateUsername() {

	var un = document.getElementById("user").value;

	if (un == null || un == "") {
		document.getElementById("username").innerHTML = "Enter Username!";
		document.getElementById("username").style.color = "red";
		document.getElementById("user").style.border = "1px solid red";
		return false;
	} else {
		document.getElementById("username").innerHTML = "";
		document.getElementById("user").style.border = "1px solid green";
		return true;
	}

}

function validatePassword() {

	var pw = document.getElementById("pass").value;

	if (pw == null || pw == "") {
		document.getElementById("password").innerHTML = "Enter the Password!";
		document.getElementById("password").style.color = "red";
		document.getElementById("pass").style.border = "1px solid red";
		return false;
	} else if (pw.length < 3) {
		document.getElementById("password").innerHTML = "Must contain at least 6 Characters!";
		document.getElementById("password").style.color = "red";
		document.getElementById("pass").style.border = "1px solid red";
		return false;
	} else {
		document.getElementById("password").innerHTML = "";
		document.getElementById("pass").style.border = "1px solid green";
		return true;
	}

}

function validateRepassword() {

	var re = document.getElementById("repass").value;
	var pw = document.getElementById("pass").value;

	if (re == null || re == "") {
		document.getElementById("repassword").innerHTML = "Enter the Password Again!";
		document.getElementById("repassword").style.color = "red";
		document.getElementById("repass").style.border = "1px solid red";
		return false;
	} else if (re != pw) {
		document.getElementById("repassword").innerHTML = "Re-Entered Password do not Match!";
		document.getElementById("repassword").style.color = "red";
		document.getElementById("repass").style.border = "1px solid red";
		return false;

	} else if (re.length < 6) {
		document.getElementById("repassword").innerHTML = "Must contain at least 6 Characters!";
		document.getElementById("repassword").style.color = "red";
		document.getElementById("repass").style.border = "1px solid red";
		return false;
	} else {
		document.getElementById("repassword").innerHTML = " ";
		document.getElementById("repass").style.border = "1px solid green";
		return true;
	}
}

function validateNic() {
	var nic = document.getElementById("nic").value;
	if ((nic == null) || (nic == "")) {
		document.getElementById("national").innerHTML = "Enter NIC Number!";
		document.getElementById("national").style.color = "red";
		document.getElementById("nic").style.border = "1px solid red";
		return false;

	} else if (nic.length < 10) {
		document.getElementById("national").innerHTML = "Invalid NIC Number Format!";
		document.getElementById("national").style.color = "red";
		document.getElementById("nic").style.border = "1px solid red";
		return false;
	} else {
		document.getElementById("national").innerHTML = "";
		document.getElementById("nic").style.border = "1px solid green";
		return true;
	}
}

function validateEmail() {
	var email = document.getElementById("email").value;
	var dot = email.lastIndexOf(".");
	var at = email.indexOf("@");
	var len = email.length;

	if ((email == null) || (email == "")) {
		document.getElementById("emailAlert").innerHTML = "Enter Email!";
		document.getElementById("emailAlert").style.color = "red";
		document.getElementById("inputEmail").style.border = "1px solid red";
		return false;

	} else if ((at < 1) || (dot - at < 2) || (len - dot < 3)) {
		document.getElementById("emailAlert").innerHTML = "Invalid Email Format!";
		document.getElementById("emailAlert").style.color = "red";
		document.getElementById("email").style.border = "1px solid red";

		return false;
	}else{
		document.getElementById("emailAlert").innerHTML = "";
		document.getElementById("email").style.border = "1px solid green";
		return true;		
	}
}

function validatePhone() {
	var contact = document.getElementById("phone").value;

	if ((contact == null) || (contact == "")) {
		document.getElementById("contact").innerHTML = "Enter Phone Number";
		document.getElementById("contact").style.color = "red";
		document.getElementById("phone").style.border = "1px solid red";
		return false;

	} else if ((contact.length != 10) && (isNaN(contact))) {
		document.getElementById("contact").innerHTML = "Invalid Phone Number";
		document.getElementById("contact").style.color = "red";
		document.getElementById("phone").style.border = "1px solid red";
		return false;
	}else{
		document.getElementById("contact").innerHTML = "";
		document.getElementById("phone").style.border = "1px solid green";
		return true;
	}
}

function validateType(){
	var type = document.getElementById("type").value;
	
	if(type=="null"){
		document.getElementById("typeAlert").innerHTML = "Enter User Type!";
		document.getElementById("typeAlert").style.color = "red";
		document.getElementById("type").style.border = "1px solid red";
		return false;	
	}else{
		document.getElementById("typeAlert").innerHTML = "";
		document.getElementById("type").style.border = "1px solid green";
		return true;
	}
		
	
}

function loginValidate() {

	if (validateUsername() && validatePassword()) {

	} else {
		event.preventDefault();
	}

}

function registerValidate() {

	if (validateFname() && validateLname() && validateUsername()
			&& validatePassword() && validateRepassword() && validateNic()
			&& validateEmail() && validatePhone() && validateType()) {

	} else {
		event.preventDefault();
	}

}
