function validateLogin() {

	var un = document.getElementById("user").value;
	var pw = document.getElementById("pass").value;
	console.log(un, pw);

	if (un == null || un == "") {
		alert("Name can't be blank");
		//		let html = "Enter Username!"
		//		document.getElementById("username").innerHTML = (html);
		//		document.getElementById("username").style.color = "red";
		return false;

	} else if (pw.length < 6) {
		alert("Password must be at least 6 characters long.");
		return false;

	} else {
		return true;
	}

}



function validateUsername() {

	var un = document.getElementById("user").value;

	if (un == null || un == "") {
		alert("please re enter the password");
		return false;
	}
	return true;

}

function validatePassword() {

	var pw = document.getElementById("pass").value;

	if ((pw.length < 5) && (pw != cpw)) {
		alert("please re enter the password");
		return false;
	}
	return true;

}
