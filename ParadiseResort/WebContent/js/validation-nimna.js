function validateLogin() {
	var un = document.loginForm.user.value;
	var pw = document.loginForm.pass.value;
	console.log(un, pw);

	if (un == null || un == "") {
//		alert("Name can't be blank");
		let html = "Enter Username!"
		document.getElementById("username").append(html);
		return false;
	} else if (pw.length < 6) {
//		alert("Password must be at least 6 characters long.");
		return false;
	}else{
		
	}
}
