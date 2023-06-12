
<header>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.css">

  
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/1bootstrap.min.css"> 
  
  <link rel="stylesheet" href="css/loginformStyle.css"> 
 
  <script src="js/jquery.slim.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>
  
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
  
  <script src="custom.js"></script>
</header>
<body class="main-bg pages" id="about">
<div class="background-wrap">
  <div class="background"></div>
</div>

<form id="accesspanel" action="login" method="post">
  <h1 id="litheader1">Login</h1>
  <div class="inset">
    <p class="usericon">
	<i class="fa fa-user fa-lg"></i>
      <input type="text" class="loginform" onblur="val_email()" name="email" id="email" placeholder="Enter email address">
	  <span id="spanalert1" style="display:none"><label id="emailError"></label><br/></span>
	  <hr/>
    </p>
    <p class="passicon">
	<i class="fa fa-lock fa-lg"></i>
      <input type="password" class="loginform" name="password" id="password" placeholder="Enter password">
	  <span id="spanalert2" style="display:none"><label id="passwordError"></label><br/></span>
	  <hr/>
    </p>
	<div style="float:right;margin-top: -7%;"><a href="/forgetpassword" >Forgot Password?</a></div>
    <div style="float:left">
      <div class="checkboxouter">
        <input type="checkbox" name="rememberme" id="remember" value="Remember">
        <label class="checkbox"></label>
      </div>
      <label for="remember">Remember me for 14 days</label>
    </div>
	<br/>
    <input class="loginLoginValue" type="hidden" name="service" value="login" />
  </div>
  <p class="p-container">
    <input type="button" name="Login" id="go" onclick="val_email(),val_password()" value="Authorize">
  </p>
  <div><center><label>Don't have an account?</label><br/><br/>
  <a href="/signup">Signup</a>
  </center>
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
		email.style.borderColor="green";
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
		password.style.borderColor="green";
		passwordError.innerHTML="";
		spanalert.style.display="none";
		}
}

</script>