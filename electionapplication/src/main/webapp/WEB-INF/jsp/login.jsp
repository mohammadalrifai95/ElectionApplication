<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head> 
<meta charset="windows-1256">
<title>Welcome to Election System Application</title>
</head>
<style>


.spacer{
  display:block;
  height:40px;
  width:100%;
  margin: 0 auto;
  content:""; 
}

.button{
	color: black;
	border-radius: 10px; 
	font-size: 1.2rem; 
	height: auto;
	text-shadow: 1px 1px 1px #000;
	background-color: #679FAB;
	width:210px;
	margin-left: 80px; 
     background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0)); 
     box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6); 
}

	
   #circle {
      width: 75px;
      height: 30px;
      webkit-border-radius: 25px;
      moz-border-radius: 25px;
      border-radius: 25px;
background: #b9f2ff; 
      background: black;
text-decoration: underline overline;
	  border-bottom: 1px solid #000;
	  color: white;
    }	
	
   .circle {
      width: 75px;
      height: 30px;
      webkit-border-radius: 25px;
      moz-border-radius: 25px;
      border-radius: 25px;
background: #b9f2ff;
      background: black;
text-decoration: underline overline;         
	  border-bottom: 1px solid #000;
	  color: white;
	  margin-left: 20px;
    }	
	
  
  
  

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}


.parent {
  border: 1px solid black;
  margin: 1rem;
  padding: 2rem 2rem;
  text-align: center;
}

.child {
  display: inline-block;
  border: 1px solid red;
  padding: 1rem 1rem;
  vertical-align: middle;
}


.verticalSpace
{
    content: " " !important;
    display: block !important;
    margin:60px;
}




label {
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
  text-align: right;
  width: 400px;
  line-height: 26px;
  margin-bottom: 10px;
  margin-right: 200px;
}

input {
  height: 20px;
  flex: 0 0 200px;
  margin-left: 10px;
}


.popupBox{
position:absolute;
/* background-color: #F5F5F5;  */
background-color: #679FAB;
top:70%;
left:50%;
width:350px;  /* adjust as per your needs */
height:280px;   /* adjust as per your needs */
margin-left:-280px;   /* negative half of width above */
margin-top:-250px;   /* negative half of height above */
flex: 0 0 200px;
border-radius: 20px; 
background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0));
box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6);
}

</style>
<body>

<!-- <div   style="background-color: #6CC417; width: 100%; height: 80%" > -->
<!-- background-color: #9F2B00  change it to #679FAB -->
<div   style="margin: auto;  border: 3px solid #73AD21; padding: 1px;background-color: #679FAB; width: 100%; height: 10%; text-align: center;" >
  <h3>Welcome to the Election System app - this is the login page</h3>
  		<select name="language" id="language" style="margin-right: 1100px;  width: 180px; font-size: 18px;" onchange="dropDownSelect(this.value)" >
		  <option value="">Select Language</option>
		  <option value="English">English</option>
		  <option value="Arabic">العربية</option>
		</select>  
</div>

<div class='parent' id="englishDiv">

	<div class='child' style="margin-right: 200px;">
	<span id="errorLoginMessage" style="color:red;">${errorLoginMessage}</span>
	<span id="loginMessage" style="color:red;"></span>
<!-- 	<span id="loginMessage2" style="color:blue;"></span> -->
	
	<!-- -----------------------------------------Login Part------------------------------------------------------------------------------------------------------------------- -->
		<div id="loginDiv" style="margin-top: 50px;">
			<form action="login" method = "GET">    
				 <label class="label">User Name:<input class="input" type="text" name="userName"  id="userName" value=""  /></label> 
				 <label class="label">Password:<input class="input" type="password" name="password"  id="password" value=""  style="margin-left: 1%;" /></label> 
				 <label class="label"><input type="submit" value="Login" id="Login" name="Login" class="button"></label> 
			</form>
			<br class="verticalSpace">
		</div>
	
		<span id="errorRegistMessage" style="color:blue;">${errorRegistMessage}</span>
	<!-- -----------------------------------------Registration Part------------------------------------------------------------------------------------------------------------------- -->
		<div id="registDiv" style="display:none">
		
				<h2>Please fill below fields to register.</h2>
		
				<label class="label">First Name:<input type="text" id="firstName" name="firstName" value=""  class="input"/></label> 
				
				<label class="label">Last Name:<input type="text" id="lastName"  name="lastName" value=""  class="input"/></label> 
				
				<label class="label">Phone # :<input type="text" id="mobile" name="mobile" value=""  class="input"/></label> 
				
				<label class="label">Email:<input type="text" id="email"   name="email"  value=""   style="margin-left: 2.5%;" class="input"/></label> 
				
				<label class="label">User Name:<input type="text" id="userNameRegs"  name="userName" value=""  class="input"/></label> 
				  
				<label class="label">Password:<input type="password" id="passwordRegs" name="password"  value=""  style="margin-left: 1%;" class="input"/></label> 
				
				<label class="label"><input class="button"  type="submit" value="register"   onclick="userRegistration(1)"/></label>  
			</div>
			
			<br class="verticalSpace">
			<div id="barLogin">
				  <span style="pointer-events: none; opacity: 0.7; font-size: 18px;">Already a member?</span>
				  <br />
				 <input   type="submit" value = "Login"  name = "Login" style="background: none!important; border: none; padding: 0!important;font-family: arial, sans-serif;color: #069; text-decoration: underline; cursor: pointer; font-size: 18px;" onclick="redirectLoginPage(1)">
			</div>	
	
			<div id="barRegist" >
				 <!--<input   type="submit" value = "Register" name = "Register" style="background: none!important; border: none; padding: 0!important;font-family: arial, sans-serif;color: #069; text-decoration: underline; cursor: pointer; font-size: 18px; margin-right: 500px; margin-top: 50px; " onclick="ShowRegistDiv(1)"> -->
				 <input   type="submit" value = "New Account Registeration" id = "newAccountRegisterationId" name = "newAccountRegisterationId" style="background: none!important; border: none; padding: 0!important;font-family: arial, sans-serif;color: #069; text-decoration: underline; cursor: pointer; font-size: 18px; margin-right: 500px; margin-top: 50px; " onclick="newAccountRegisterationFun(1)">
				 <div id="newAccountRegisterationDiv" class="popupBox" > 
				 	<div style="margin-right: 100px;">
						<img style="width: 20px; height: 20px; cursor: pointer; margin-left: 315px;" src="<c:url value="/resources/images/crossMarkSymbols.jpg" />"  onclick="newAccountRegisterationFun_2()" />
						<br><b style="color: white; font-weight: bold; font-size: 20px;"> New User - Registration: </b><br>
						<h4 id="dispId" style= "color:green"> </h4>   
						<h4 id="errorId" style= "color:red"> </h4>    
						<input type="radio" id="candidateId" name="radioWeather"  value="candidate" >Candidate Registration<br>   
						<input type="radio" id="voterId" name="radioWeather" value="voter"><span style="margin-right: 26px;">Voter Registration</span><br>   
						<input type="radio" id="technicalId" name="radioWeather" value="technical">Technical Registration<br>  
						<input type="radio" id="adminId" name="radioWeather" value="admin"><span style="margin-right: 22px;">Admin Registration</span><br><br>
						<button type="button" onclick="checkButton()"  style="background:black; color:white; width:150px; height:30px;	border-radius: 10px; cursor: pointer; font-size: 15px;margin-top: 10px;"> Next</button>
					</div>
				 </div>
			</div>	 
			<br class="verticalSpace">
	</div><!----------------------------- end of div child-->


	<div class='child' style=" border : none !important;">
		<a href="#">Forgot User ID?</a><a href="#" style="margin-left: 20px;">Forgot Password?</a>
		
		<br class="verticalSpace">
		<a href="#">Report Registration Fraud</a>
		<br class="verticalSpace">
		<a href="#">Quick Access</a>
		<br class="verticalSpace">
		<a href="#">Need Help?</a>
		<br class="verticalSpace">
		<a href="#"></a>
		<a href="#"></a>
		<a href="#"></a>
	</div><!----------------------------- end of div child-->
</div><!----------------------------- end of div parent English Version-->
</body>




<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
    
    
    window.onload = function() {
    	$("#barLogin").hide();
    	$('#registDiv').hide();
    	$('#newAccountRegisterationDiv').hide();
    	
    	setTimeout(function() {
    		$('#errorLoginMessage').hide(); 
			}, 5000);    
    	
//     	$('#errorLoginMessage').hide();
		
// 	    $('#arabicDiv').show();
//     	$('#englishDiv').hide();

//     	$('#arabicDiv').hide();
//     	$('#englishDiv').show(); 
		
    }

    	  

    function newAccountRegisterationFun(areId){
    	$('#newAccountRegisterationDiv').show();
// 		setTimeout(function() {
// 			newAccountRegisterationFun_2();
// 			}, 20000);  
    	}
    
    function newAccountRegisterationFun_2(){
	    	$('#newAccountRegisterationDiv').hide();
    	}
    
    function checkButton() {
    	
        if(document.getElementById('candidateId').checked) {   
            //document.getElementById("dispId").innerHTML = document.getElementById("candidateId").value+" radio button is checked";
            window.location.href = "welcome"
        }   
        else if(document.getElementById('voterId').checked) {   
            //document.getElementById("dispId").innerHTML= document.getElementById("voterId").value+" radio button is checked";
        	window.location.href = "voterRegistration"
        }   
        else if(document.getElementById('technicalId').checked) {   
            //document.getElementById("dispId").innerHTML= document.getElementById("technicalId").value+" radio button is checked";     
        }   
        else if(document.getElementById('adminId').checked) {   
            //document.getElementById("dispId").innerHTML= document.getElementById("adminId").value+" radio button is checked";     
        }  
        else {
        	$('#errorId').show(); 
    		document.getElementById("errorId").innerHTML= "You have not selected any season";
    		setTimeout(function() {
    			$('#errorId').hide();	 
			}, 3000); 
               
        }   
    }
    
    
    
    function ShowRegistDiv(areId){
    	//alert("Registed clisked");
    	$('#registDiv').show();
    	$('#loginDiv').hide();
    	$('#barLogin').show();
    	$('#barRegist').hide();
    	$('#errorLoginMessage').hide();
    	
    	
    	document.getElementById('firstName').value = '';
    	document.getElementById('lastName').value = '';
    	document.getElementById('email').value = '';
    	document.getElementById('userNameRegs').value = '';
    	document.getElementById('passwordRegs').value = '';
     	//document.getElementById('mobile').value;
    	
    	
    };
    
    function redirectLoginPage(areId){
    	//alert("Login clicked");
    	$('#errorRegistMessage').hide();
    	$('#registDiv').hide();
    	$('#barRegist').show();
    	$('#barLogin').hide();
    	$('#loginDiv').show();
    	$('#newAccountRegisterationDiv').hide();
    	
    }
    
    
    
    function userRegistration(areId){
    	//alert("Register submit clicked");
    	
    	var firstName = document.getElementById('firstName').value;
    	var lastName = document.getElementById('lastName').value;
    	var email = document.getElementById('email').value;
    	var userName = document.getElementById('userNameRegs').value;
    	var password = document.getElementById('passwordRegs').value;
    	var mobile = document.getElementById('mobile').value;
//     	alert("firstName = " +  firstName);
    	
        $.ajax({
            type: "GET",
            url: "userRegistration",
            data: {"firstName":firstName, "lastName":lastName, "email":email, "password":password, "userName":userName, "mobile":mobile },
            contentType: "application/json",
            success: function(messageList){
            	alert(messageList[0]);
            	if(messageList[0]=="Failed_Registration"){
    				$('#errorLoginMessage').hide();
    				$('#errorRegistMessage').html(messageList[1]);
                	$('#loginDiv').hide();
                	$('#registDiv').show();            		
            	}else{
            		alert("else");
                	$('#loginDiv').show();
                	$('#registDiv').hide();
//                 	$('#errorRegistMessage').hide();
                	$('#userName').val(messageList[0]);
                    $('#password').val(messageList[1]);
//                     $('#loginMessage').show();
//                     $('#loginMessage2').show();
//                     $('#loginMessage').html(messageList[2]);
                    $('#loginMessage2').html(messageList[2]);
//                     $('#loginMessage').show();
//                     $('#loginMessage2').show();
//                     $('#errorRegistMessage').html(messageList[2]);
                	
            	}

            	
					//window.location.href="welcome"
					//window.location.href = '/JspControllerHandler?employee='+ JSON.stringify(emp); // redirect     //this would be GET
					// window.location(url);
				},
				error : function(XMLHttpRequest, textStatus,
						errorThrown) {
					alert("Status: " + textStatus);
					alert("Error: " + errorThrown);
				}

			});

		}

				$(document).ready(function() {
					$('#NextButton').click(function() {
							$.ajax({
									type : "GET",
									url : "welcome",
									data : {"candidateId" : 1},
									contentType : "application/json",
									success : function(msg) {
										//                     	alert("success");
										$('#output').append(msg);
										window.location.href = "welcome"
										//window.location.href = '/JspControllerHandler?employee='+ JSON.stringify(emp); // redirect     //this would be GET
										//window.location(url); 

									},
									error : function(
											XMLHttpRequest,
											textStatus,
											errorThrown) {
										alert("Status: "
												+ textStatus);
										alert("Error: "
												+ errorThrown);
									}

								});
							});

							});
				
				
				
				
				
				
				
				function dropDownSelect(selectedLanguage){
						window.location.href = '/languageChanged?selectedLanguage='+selectedLanguage;

					};					
				
				</script>
</html>