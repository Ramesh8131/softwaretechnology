
<header>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="ScriptLib.jsp" %>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.css">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="css/loginformStyle.css">
 
  
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  i{
  color:white !important;
  }
  </style>
	
  
  <script src="custom.js"></script>
</Header>
<body class="main-bg">
<div class="background-wrap">
  <div class="background"></div>
</div>

<form id="accesspanel" style="height: 40% !important;width: 350px;" action="login" method="post">
  <h1 id="litheader1" style="font-size: x-large;">Forget Password</h1>
  <div class="inset" style="color: white;">
    <p class="usericon">
	<i class="fa fa-user fa-lg"></i>
      <input type="text" class="loginform" onblur="val_email()" name="email" id="email" placeholder="Enter email address">
      <span id="spanalert1" style="display:none"><label id="emailError"></label><br/></span>
	    <hr/>
    </p>
    <p class="passicon">
	<i class="fa fa-lock fa-lg"></i>
      <input type="password" class="loginform" name="password" id="password" placeholder="Enter New Password">
      <span id="spanalert2" style="display:none"><label id="passwordError"></label><br/></span>
	  <hr/>
    </p>
	<p class="passicon">
	<i class="fa fa-lock fa-lg"></i>
      <input type="password" class="loginform" name="cnfgpassword" id="cnfgpassword" placeholder="Enter Confirm Password">
      <span id="spanalert3" style="display:none"><label id="CnfgPasswordError"></label><br/></span>
	  <hr/>
    </p>
  <p class="p-container">
    <input type="button" name="Login" id="go" onclick="val_email(),val_password(),val_cnfgpassword()" value="Submit">
  </p>
</div>
</form>
</body>

<script>
function val_email(){

	var letters =  /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	var email = document.getElementById("email");
	var spanalert = document.getElementById("spanalert1");
	var emailError = document.getElementById("emailError");
	
	if(email.value===""||!email.value.match(letters)){
		spanalert.style.display="block";
		email.style.borderColor="red";
		emailError.innerHTML="Enter Email";
		emailError.style.color="red";
		emailError.style.fontSize="12px";
		emailError.style.position="absolute";
	}
	else{
		email.style.borderColor="white";
		emailError.innerHTML="";
		spanalert.style.display="none";
		}
}

function val_password(){

	var letters = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
	var password = document.getElementById("password");
	var spanalert = document.getElementById("spanalert2");
	var passwordError = document.getElementById("passwordError");
	
	if(password.value===""){
		spanalert.style.display="block";
		password.style.borderColor="red";
		passwordError.innerHTML="Enter Password";
		passwordError.style.color="red";
		passwordError.style.fontSize="12px";
		passwordError.style.position="absolute";
	}
	else if(!password.value.match(letters)){
		
		spanalert.style.display="block";
		password.style.borderColor="red";
		passwordError.innerHTML="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters";
		passwordError.style.color="red";
		passwordError.style.fontSize="12px";
		passwordError.style.position="absolute";
	}
	else{
		password.style.borderColor="white";
		passwordError.innerHTML="";
		spanalert.style.display="none";
		}
}

function val_cnfgpassword(){
	
	var password = document.getElementById("password").value;
	var cnfgpassword = document.getElementById("cnfgpassword");
	var spanalert = document.getElementById("spanalert3");
	var CnfgPasswordError = document.getElementById("CnfgPasswordError");
	
	if(cnfgpassword.value===""){
		
		spanalert.style.display="block";
		cnfgpassword.style.borderColor="red";
		CnfgPasswordError.innerHTML="Enter Confirm Password";
		CnfgPasswordError.style.color="red";
		CnfgPasswordError.style.fontSize="12px";
		CnfgPasswordError.style.position="absolute";
	}
	else if(cnfgpassword.value!=password){
		
		spanalert.style.display="block";
		cnfgpassword.style.borderColor="red";
		CnfgPasswordError.innerHTML="unmatched with new password";
		CnfgPasswordError.style.color="red";
		CnfgPasswordError.style.fontSize="12px";
		CnfgPasswordError.style.position="absolute";
	}
    else{
		cnfgpassword.style.borderColor="white";
		CnfgPasswordError.innerHTML="";
		spanalert.style.display="none";
		}
}
</script>