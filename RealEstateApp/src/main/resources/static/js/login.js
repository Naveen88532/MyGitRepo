function check(form) {   /*function to check userid & password*/
	/*the following code checkes whether the entered userid and password are matching*/
	if (form.uname.value == "admin" && form.password.value == "12345") {
		window.open('adminhome.jsp')/*opens the target page while Id & password matches*/
	}
	else {
		alert("Error Password or Username")   /*displays error message*/
	}
}
