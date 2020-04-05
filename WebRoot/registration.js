function prepareEventHandlers(){
	
document.getElementById("registrationForm").onsubmit=function(){
	var emailRE = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
	var name = document.getElementById("name");
	var email = document.getElementById("email");
	var password1 = document.getElementById("pass1");
	var password2 = document.getElementById("pass2");
	var username = document.getElementById("uname");
	var mobileNo = document.getElementById("mobile");
	var address = document.getElementById("address");
	var college = document.getElementById("college");
	var error = document.getElementById("error");
	
	if(name.value==''){
		name.focus();
		error.innerHTML="please provide your name";
		return false;
		}
	
	if(email.value==''){
		email.focus();
		error.innerHTML="please enter your email address";
		return false;
		}
	

	
	if(password1.value==''){
		password1.focus();
		error.innerHTML="enter your password";
		return false;
		}
	if(password1.value!=password2.value){
		password1.focus();
		error.innerHTML="passwords are not matching";
		return false;
		}
	if(username.value==''){
		username.focus();
		error.innerHTML="please select your username";
		return false;
		}
	if(mobileNo.value==''){
		mobileNo.focus();
		error.innerHTML="enter your contact number";
		return false;
		}
	if(address.value==''){
		address.focus();
		error.innerHTML="enter adddress";
		return false;
		}
	if(college.value==''){
		college.focus();
		error.innerHTML="chhose your college";
		return false;
		}
	
	
	};
}
window.onload=function(){
	prepareEventHandlers();
	};