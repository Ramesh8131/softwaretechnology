
<header>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="loginformStyle.css">
 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
  
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
	<style>
	
	lable{
	padding-top:2px 0 0 -2px;
	}
	.form-control{
	height: 40px;
	}
	

#captcha {
height: 13%;
    width: 60%;
 font-size: 30px;
 letter-spacing: 3px;
 margin: auto;
 display: block;
 top: 0;
 bottom: 0;
 left: 0;
 right: 0;
}
.textBox1 {
    text-align: center;
    margin-left: 32%;
    margin-top: -8%;
    border: 1px solid yellow;
    height: 28px;
    border-radius: 2px;
}
.refreshButton1 {
    margin-left: 32%;
    width: 35%;
    height: 31px;
    border: 1px solid yellow;
}
/* 
.incorrectCaptcha {
 color: #FF0000;
}
.correctCaptcha {
 color: #7FFF00;
} */

</style>
  
    <script src="custom.js"></script>
</Header>
<body>g
<div class="main">
<div class="contains">
<div class="col-sm-12">
<div class="row">
<div class="col-sm-8">
<div class="box">
<img src="pic.jpg" width="100%" height="100%">
</div>
</div>
<div class="col-sm-4">
<div class="box">


        <div>
		<br/>
		<center><h1>User Register Form</h1></center>
		<br/>
		<div>
		<label class="for">Name</label>
		<input type="text" class="form-control" name="name" id="name" placeholder="Enter Name" />
		 
		<label class="for">Email Address</label>
		<input type="text" class="form-control" name="email" id="email" placeholder="Enter Email" /> 
		<label class="for">Phone No</label>
		<input type="text" class="form-control" name="phone" id="phone" placeholder="Enter Mobile/Phone No"/> 
		<label class="for">Password</label>
		<input type="text" class="form-control" name="password" id="password" placeholder="Enter Password"/> 
		<label class="for">Gender</label>
		<select class="form-control">
		
		<option value="" selected>Select Gender</option>
		<option value="1">Male</option>
		<option value="0" >Female</option>
		
		</select>
		<br/>
		<label class="for">Company Name</label>
		<input type="text" class="form-control" name="company" id="company" placeholder="Enter Company Name" /> 
		<label class="for">Company Address</label>
		<input type="text" class="form-control" name="addess" id="addesss" placeholder="Enter Company Address" /> 
		
        <label class="for"> Captcha Verification</label>
        <!-- <div class="for"> --><canvas id="captcha">captcha text</canvas><!-- </div> -->			 
        <input id="textBox" class="textBox1" type="text" name="text1" /><br/>
        <button id="refreshButton" class="refreshButton1" type="submit">Refresh</button>
        
		<div id="buttons">
		<input id="submitButton" type="submit">
		</div>
        <span class="for" id="output"></span>
			 
			 
		</div>
	    <script src="script.js"></script>
		</div>
        </div>


</div>
</div>
</div>
</div>
</div>
</div>

</body>
<script>
//document.querySelector() is used to select an element from the document using its ID
let captchaText = document.querySelector('#captcha');
var ctx = captchaText.getContext("2d");
ctx.font = "30px Roboto";
ctx.fillStyle = "#08e5ff";

let userText = document.querySelector('#textBox');
let submitButton = document.querySelector('#submitButton');
let output = document.querySelector('#output');
let refreshButton = document.querySelector('#refreshButton');

// alphaNums contains the characters with which you want to create the CAPTCHA
let alphaNums = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
let emptyArr = [];
// This loop generates a random string of 7 characters using alphaNums
// Further this string is displayed as a CAPTCHA
for (let i = 1; i <= 7; i++) {
 emptyArr.push(alphaNums[Math.floor(Math.random() * alphaNums.length)]);
}
var c = emptyArr.join('');
ctx.fillText(emptyArr.join(''),captchaText.width/4, captchaText.height/2);

// This event listener is stimulated whenever the user press the "Enter" button
// "Correct!" or "Incorrect, please try again" message is
// displayed after validating the input text with CAPTCHA
userText.addEventListener('keyup', function(e) {
 // Key Code Value of "Enter" Button is 13
 if (e.keyCode === 13) {
 if (userText.value === c) {
 output.classList.add("correctCaptcha");
 output.innerHTML = "Correct!";
 } else {
 output.classList.add("incorrectCaptcha");
 output.innerHTML = "Incorrect, please try again";
 }
 }
});
// This event listener is stimulated whenever the user clicks the "Submit" button
// "Correct!" or "Incorrect, please try again" message is
// displayed after validating the input text with CAPTCHA
submitButton.addEventListener('click', function() {
 if (userText.value === c) {
 output.classList.add("correctCaptcha");
 output.innerHTML = "Correct!";
 } else {
 output.classList.add("incorrectCaptcha");
 output.innerHTML = "Incorrect, please try again";
 }
});
// This event listener is stimulated whenever the user press the "Refresh" button
// A new random CAPTCHA is generated and displayed after the user clicks the "Refresh" button
refreshButton.addEventListener('click', function() {
 userText.value = "";
 let refreshArr = [];
 for (let j = 1; j <= 7; j++) {
 refreshArr.push(alphaNums[Math.floor(Math.random() * alphaNums.length)]);
 }
 ctx.clearRect(0, 0, captchaText.width, captchaText.height);
 c = refreshArr.join('');
 ctx.fillText(refreshArr.join(''),captchaText.width/4, captchaText.height/2);
 output.innerHTML = "";
});
</script>