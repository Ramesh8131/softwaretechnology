<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="background: thistle;">
<head>
<link rel="icon" href="./logo2.jpg" type="image/x-icon" />
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<title>Contact Us  </title>

<%@ include file="ScriptLib.jsp" %>
</head>


<style>
  .form-control:focus {
    color: #495057;
    background-color: #fff;
    border-color: #808080;
    outline: 0;
    border-width:1.4px;
    -webkit-box-shadow: inset 0 0 0 0, 0 0 0 rgb(10 175 233 / 60%);
    box-shadow:0;
 }
    
 .form-control{
    outline:none !important;
    height: 35px;
 }

</style>
	<body class="pages pageBackGround" id="contact">
	              <%@ include file="Header.jsp" %>
	  <div class="pageBackGround"> 
	    <div class="container" style="padding:10% 0 0 0">
	       <div class="col-sm-12 m-b-15 full-height" style="margin-left: 1%;width: 98%">
	         <div class="box d-block">
	             <div class="card-body">
	             <label><h1 style="color: rgb(0, 82, 130);font-size: 18px;font-weight: 800 !important;">Contact Us</h1></label>
	             <hr/>
	             </div>
		     </div>
	      </div>
	      <div class="col-sm-12 m-b-15 full-height" style="margin-left: 1%;width: 98%">
	         <div class="row d-block" style="margin-left: 0%;width: 100%">
	          <div class="col-sm-6">
	           <div class="box d-block">
	             <div class="card-body">
	                <label class="companyName">Er. Uday (Project Manager)</label>
	          	 </div>
	          	</div>
		      </div>
		      <div class="col-sm-6">
		       <div class="box d-block">
	             <div class="card-body">
	               <label class="companyLabel">Rigel Automation</label><br/>
	               <label class="companyName">Email : uday.ukdaac@gmail.com</label><br/>
	               <label class="companyName">Call : +91 7352000128</label><br/>
	               <label class="companyName">First Floor SCF-11 Gulmohar Complex Desu Majra  Sector 125 Kharar Mohali , Punjab ,India</label><br/>
			     </div>
		       </div>
		      </div>
	        </div>
	      </div>
	      
	      <!-- <div class="col-sm-12 m-b-15 full-height" style="margin-left: 1%;width: 98%">
	         <div class="box d-block">
	             <div class="card-body">
	              <label class="companyName">#123 Kharar Mohali Punjab ,India</label><br/>
			     </div>
		     </div>
	      </div> -->
	      
	      </div>
	      <br/>
	      <div class="container" style="padding:0 0 0 0">
	      
	      <div class="col-sm-12 m-b-15 full-height" style="margin-left: 1%;width: 98%">
	         <div class="box d-block">
	             <div class="card-body">
	                <label><h4 class="companyLabel">Leave Message</h4></label>
	             </div>
	         </div>
	      </div>
	      <div class="col-sm-12 m-b-15 full-height" style="margin-left: 1%;width: 100%">
	        <div class="row d-block" style="margin-left: 0%;width: 98%" >
	        <div class="col-sm-6">
	          <div class="box d-block">
	             <div class="card-body">
					<label>Name</label>
					<input type="text" class="form-control" onkeypress="nameValidate(this.value);" id="name" placeholder="Enter Name"/>
					<label id="errorName" class="errorMsg"></label>
					<label >Email</label>
					<input type="text" id="email" onblur="validateEmail(this.value);" class="form-control" placeholder="Enter Email"/>
					<label id="errorEmail" class="errorMsg"></label>
					<label>Phone No</label>
<div id="pcode"></div>					
					<input type="text" id="phoneno" onblur="phonenumber(this.value);" class="form-control" placeholder="Enter Phone No"/>
					<label id="errorPhone" class="errorMsg"></label>
			
					<label>Company Name</label>
					<input type="text" id="companyName" class="form-control" placeholder="Enter Company Name"/>
					<label id="errorCompanyName" class="errorMsg"></label>
	         
					<label>Website</label>
					<input type="text" id="website" class="form-control" placeholder="Enter Website"/>
					<label id="errorWebsite" class="errorMsg"></label>
	             </div>
	          </div>
		      </div>
		      <div class="col-sm-6">
		        <div class="card-body d-block">
						<label>Message : </label>
						<textarea placeholder="Enter Message..." rows="8" cols="30" id="message" onkeypress="messageValidate()" class="form-control"></textarea>
						<label id="errorMessage" class="errorMsg"></label>
						<br/> 
						<input type="button" class="btn btn-primary form-control" onclick="sendMessage();" value="send"/>
		        </div>
		      </div>
		     </div>
	    </div>
	   </div>
	  </div>
	  <div style="max-width:100%;padding:5% 0 0 0" class="pageBackGround">
	           <%@ include file="Footer.jsp" %>
	  </div>
	</body>
	<script>



	function countrycodeList(){}
	var opt=null;
	for(var country of countryPhoneCode){
		opt=opt+'<option><div"><i class="flag flag-us"></i> '+country.dial_code+'</div></option>'
		}
var datas='<select style="height:30px;">'+opt+'<select>';
document.getElementById("pcode").innerHTML=datas;
	
  var formStatus=false;
	function validateEmail(mail) 
	{
		var errorEmail=document.getElementById("errorEmail");
	 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($("#email").val()))
	  {
		errorEmail.innerHTML="";
		errorEmail.style.display="none";
		errorEmail.style.borderColor="#c5c5c5";
		formStatus=true;
	  }else if($("#email").val()=="") {
	   errorEmail.style.display="block";
	   errorEmail.style.borderColor="#FF0000";
	   errorEmail.innerHTML="Enter email";
	   formStatus=false;
	  }else {
		  errorEmail.style.display="block";
		  errorEmail.style.borderColor="#FF0000";
		   errorEmail.innerHTML="Enter valid email";
		   formStatus=false;
		  }
	 return formStatus;
	}

	function phonenumber(inputtxt)
	{
	  var errorPhone=document.getElementById("errorPhone");
	  var phoneno = /^\d{10}$/;
	  if($("#phoneno").val().match(phoneno)){
		errorPhone.innerHTML="";
		errorPhone.style.display="none";
		formStatus=true;
	  }else if($("#phoneno").val()==""){
	    errorPhone.innerHTML="Enter Phone Number";
		errorPhone.style.display="block";
		formStatus=false;
	  }else{
		    errorPhone.innerHTML="Enter valid Phone Number";
			errorPhone.style.display="block";
			formStatus=false;
		  }
	  return formStatus;
	}


	function nameValidate(inputtxt)
	{
		var errorName=document.getElementById("errorName");
	  var regex = /^[a-zA-Z]*$/;
	  if($("#custName").val()==""){
	    errorName.innerHTML="Enter name";
		errorName.style.display="block";
		formStatus=false;
	  }else if($("#custName").val().match(regex)){
			errorName.innerHTML="";
			errorName.style.display="none";
			formStatus=true;
      }else{
		    errorName.innerHTML="Enter valid name";
			errorName.style.display="block";
			formStatus=false;
	  }
	  return formStatus;
	} 

	function messageValidate(){
		var errorMessage=document.getElementById("errorMessage");
	  if($("#message").val()==""){
		  errorMessage.innerHTML="Enter Message";
		  errorMessage.style.display="block";
		  formStatus=false;
	  }else{
		  errorMessage.innerHTML="";
		  errorMessage.style.display="none";
		  formStatus=true;
	  }
	  return formStatus;
	} 
	
	function sendMessage(){
		
		var f1=validateEmail("");
		var f2=phonenumber("");
		var f3=nameValidate("");
		var f4=messageValidate();
		//if(f1&&f2&&f3&&f4){
			//$("#email").val("")
		//	$("#custName").val("")
			//$("#phoneno").val("")
			//$("#message").val("")
			//$("#website").val("")
				var contactUs={};
			 contactUs["name"]= $("#name").val();
        	 contactUs["email"]= $("#email").val();
			 contactUs["phoneNumber"]= $("#phoneno").val();
			 contactUs["contryCode"]= "Jason Sweet";
			 contactUs["companyWebsite"]= $("#website").val();
			 contactUs["companyName"]= "Jason Sweet";
			 contactUs["message"]= $("#message").val();
			 //console.log(contactUs)
			 contactUs=JSON.stringify(contactUs);
			 console.log(contactUs)
			
$.ajax({
  type: "POST",
  url: "saveContactUs",
  cache: false,
  contentType: "application/json",
  data: contactUs,
  success: function (result) {
	  console.log(result)
	  alert("Your Message has sent Successfully.")
  }
});
			
			
			
		//}
		
	}
	/* $(document).on('input', '#alphebet', function(e) {
	    var input=$(this).val();
	    var length=$(this).attr("length");
	    var errorName=document.getElementById("alphebetError");
		  var regex = /^[a-zA-Z]*$/;
		  if(input==""){
		    errorName.innerHTML="This field is required";
			errorName.style.display="block";
			formStatus=false;
		  }else if(input.match(regex)){
				errorName.innerHTML="";
				errorName.style.display="none";
				formStatus=true;
	      }else{
			    errorName.innerHTML="Enter valid input";
				errorName.style.display="block";
				formStatus=false;
		  } 
	}); 
	 */
	</script>
</html>