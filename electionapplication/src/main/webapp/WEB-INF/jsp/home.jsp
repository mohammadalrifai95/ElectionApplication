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
 

.styled {
    border: 0;
    line-height: 3;
    padding: 0 20px;
    font-size: 1rem;
    text-align: center;
    color: #fff;
    text-shadow: 1px 1px 1px #000;
    border-radius: 10px;
/*     background-color: rgba(220, 0, 0, 1); */
	background-color: white; 
	color: blue;
    background-image: linear-gradient(to top left, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2) 30%, rgba(0, 0, 0, 0));
    box-shadow: inset 2px 2px 3px rgba(255, 255, 255, 0.6), inset -2px -2px 3px rgba(0, 0, 0, 0.6);
}


.input {
/* 	// needs to be relative so the :focus span is positioned correctly */
	position:relative;
	
/* 	// bigger font size for demo purposes */
	font-size: 1.2em;
	
/* 	the border gradient */
/* 	background: linear-gradient(21deg, #10abff, #1beabd); */
	
/* 	// the width of the input border */
	padding: 3px;
	
/* 	// we want inline fields by default */
	display: inline-block;
	
/* 	// we want rounded corners no matter the size of the field */
	border-radius: 9999em;
	}
	
.label1 {
  color: black;
  font-weight: bold;
}	
	
.label2 {
  color: black;
  font-weight: bold;
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

</style>
<body>

<!-- <div   style="background-color: #6CC417; width: 100%; height: 80%" > -->
<ul style="background-color: #9F2B00;">
  <li><a class="active" href="#">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#">Contact</a></li>
  <li style="float:right"><input id="barRegist"  class="styled" type="submit" value = "Register" name = "NextButton" style="background-color: #B9F2FF;" onclick="ShowRegistDiv(1)"></li>
  <li style="float:right"><input id="barLogin" class="styled" type="submit" value = "Login"  name = "NextButton" style="background-color: #B9F2FF;" onclick="redirectLoginPage(1)"></li>  
  
  
</ul>

<!-- </div> -->
<!-- background-image: url('https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77701424346-optimized.jpg'); -->
<div   style="background-color: white; width: 100%; height: 80%" >



<!-- 				<span id="decoration" style="color: white; word-spacing: 70px;"> -->
<!-- 					<h3 class="circle">Innovation Creative Intellectual Revolutionary Thinking ابتكار  إبداعي  فكري  تفكير ثوري</h3> -->
<!-- 					<span class="circle" style="margin-left: 1px;">Innovation </span> -->
<!-- 					<span class="circle">Creative </span> -->
<!-- 					<span class="circle">Intellectual </span> -->
<!-- 					<span class="circle">Thinking</span> -->
<!-- 					<span class="circle"> ا ثوري</span> -->
<!-- 					<span class="circle">  تفكير </span> -->
<!-- 					<span class="circle"> فكري   </span> -->
<!-- 					<span class="circle">   إبداعي     </span> -->
<!-- 					<span class="circle"> ابتكار       </span> -->
<!-- 				</span> -->

<div align="center"  style="width: 60%; height: 100%">
<!-- <div class="spacer" style="color:black;"><h3>Welcome to Election System Application -- This is home page</h3></div> -->
<div class="spacer" style="color:black;"><h3>مرحبًا بك في تطبيق نظام الانتخابات - هذه هي الصفحة الرئيسية</h3></div>


<span id="errorLoginMessage" style="color:red;">${errorLoginMessage}</span>
<span id="loginMessage" style="color:red;"></span>
<div id="loginMessage2" style="color:blue;"><h2></h2></div>
<!-- <div id="circle" style=" text-align: center; margin-left: 155%">Innovation</div> -->
<!-- -----------------------------------------Login Part------------------------------------------------------------------------------------------------------------------- -->
<!-- <div class="spacer"></div> -->

<!-- <div > -->
<!-- <ul style="background-color: gray; width:2000px; height: 50px;"> -->
<!--   <li><a class="active" href="#">Election</a></li> -->
<!--   <li><a href="#news">News</a></li> -->
<!--   <li><a href="/contactUs">Contact</a></li> -->
<!--   <li style="float:right"><a href="#about">About</a></li> -->
<!--   <li style="float:right"><a href="/">Logout</a></li>   -->
<!-- </ul> -->
<!-- </div> -->



<!-- 	Please select a country: -->
<!--     <select name="country" id="country"> -->
<%--     <c:forEach items="${mapCountries}" var="country"> --%>
    
<%--         <option value="${country.key}">${country.value}</option> --%>
        
        
<%--     </c:forEach> --%>
<!--     </select> -->

App Currently available for Jordan only.
<br \>
<label style="pointer-events: none; opacity: 0.5;">Please select country</label>
<br \>
<select name="country" id="country">
    <c:forEach items="${mapCountries}" var="country">
    	
    	<c:choose>
		    <c:when test="${country.value=='Jordan'}">
		        <option value="${country.key}" selected>${country.value}</option> 
		        <br />
		    </c:when>    
		    <c:otherwise>
		        <option value="${country.key}" disabled="disabled">${country.value}</option>
		        <br />
		    </c:otherwise>
		</c:choose>
    	
        
        
        
    </c:forEach>
    </select>




<div id="loginDiv">
<!-- <div class="spacer" style="color:black;height:80px;"><h2>Please login below if you already have an account.</h2></div> -->
<div class="spacer" style="color:black;height:80px;"><h2>الرجاء تسجيل الدخول أدناه إذا كان لديك حساب بالفعل.</h2></div>
	<form action="Login">
		<label  class="label1">User Name:</label> <input class="input" type="text" name="userName"  id="userName" value=""  />
		<br /><br />
		 <label class="label1">Password:</label> <input class="input" type="password" name="password"  id="password" value=""  style="margin-left: 1%;" />
		 <br /><br />
		 <input class="styled" type="submit" value="Login" id="Login" name="Login" style="color: black;"> 
	</form>
	
		<br /><br />
		<div class="spacer" style="color:black;"><h2>For Register please click this button	
			<input class="styled" type="submit" value = "Register" name = "NextButton" style="background-color: #B9F2FF;" onclick="ShowRegistDiv(1)">
			</h2>
		</div>
<div id="circle" style=" text-align: center; margin-left: 155%">Creative </div>		 
		<!-- <input class="styled" type="submit" value = "Register" id="NextButton" name = "NextButton" style="background-color: #B9F2FF;" onclick="Register(1)">  -->
</div>
<!-- <div id="circle" style=" text-align: center; margin-left: 155%">Intellectual </div> -->




<span id="errorRegistMessage" style="color:blue;">${errorRegistMessage}</span>
<!-- -----------------------------------------Registration Part------------------------------------------------------------------------------------------------------------------- -->
<div id="registDiv" style="display:none">
<div class="spacer" style="color:black;"><h2>Please fill below fields to register.</h2></div>
<!-- 	<form action="userRegisteration"> -->
		<label class="label2">First Name:</label> <input type="text" id="firstName" name="firstName" value=""  class="input"/>
		<br /><br />
		<label class="label2">Last Name:</label> <input type="text" id="lastName"  name="lastName" value=""  class="input"/>
		<br /><br />
		<label class="label2">Phone # :</label> <input type="text" id="mobile" name="mobile" value=""  class="input"/>
		<br /><br />
		<label class="label2">Email:</label> <input type="text" id="email"   name="email"  value=""   style="margin-left: 2.5%;" class="input"/>
		<br /><br />
		<label class="label2">User Name:</label> <input type="text" id="userNameRegs"  name="userName" value=""  class="input"/>
		<br /><br />  
		<label class="label2">Password:</label> <input type="password" id="passwordRegs" name="password"  value=""  style="margin-left: 1%;" class="input"/>
		<br /><br />
		<input class="styled"  type="submit" value="register" style="background-color: #679FAB;"   onclick="userRegistration(1)"/>  
<!-- 	</form> -->
<div id="circle" style=" text-align: center; margin-left: 155%">Creative </div>
	<div class="spacer" style="color:black;"><h2>Click Login button go to login page
	<input class="styled" type="submit" value = "Login"  name = "NextButton" style="background-color: #B9F2FF;" onclick="redirectLoginPage(1)">
	</h2>
	</div>
	
</div>

			<div class="spacer"></div>
			<div class="spacer"></div>

</div>

					
		 
  
				<span id="decoration" style="color: black; word-spacing: 200px;">
					<h3>Innovation Creative Intellectual Revolutionary Thinking</h3>
				</span>
</div>






</body>




<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
    <script type="text/javascript">
    
    
    function ShowRegistDiv(areId){
    	//alert(areId);
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
    	//alert(areId);
    	$('#errorRegistMessage').hide();
    	$('#registDiv').hide();
    	$('#barRegist').show();
    	$('#barLogin').hide();
    	$('#loginDiv').show();
    	
    }
    
    
    
    function userRegistration(areId){
    	//alert(userRegistration);
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
									success : function(
											msg) {
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
				</script>
</html>