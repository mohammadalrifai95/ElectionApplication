<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>

<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<style>

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




body {
  margin: 0;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #04AA6D;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>


<body>
<ul>
  <li><a  class="active">Select one of below options</a></li>
  <li><a href="#home" onclick="addCandidate()">Add Candidate</a></li>
  <li><a href="#news" onclick="addVoter()">Add voter</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
</ul>
<div>

	
	<div style="margin-left:25%;padding:1px 16px;height:100px;  "  id="homeDive">
	  <h2>Select one option from left menu bar</h2>
	  <h3>Try to scroll this area, and see how the sidenav sticks to the page</h3>
	  <p>addVoter..</p>
	</div>
	
	

	<div style=" margin-left:25%;padding:1px 16px; width:800px;  height:500px;"   id="addCandidate">
	
		<div style=" margin-top:5%; background-color: 	#ffa07a; border-radius: 25px;   background-position: left top;   padding: 20px;">
		<span id="errorRegistMessage" style="color:blue;">${errorRegistMessage}</span>
			  <h2>Add Candidate</h2>
			  <br\><br\>
			  <table style="width:100%">
				  <tr >
				  	<td>First Name:<br \> <input type="text" id="firstName" name="firstName" value=""  class="input" /></td>
				  	<td>Last Name:<br \><input type="text" id="lastName"  name="lastName" value="" class="input" /></td>	
				  </tr>
				  <tr style="height: 80px;">
				  	<td>Phone # :<br \><input type="text" id="mobile" name="mobile" value=""  class="input"/></td>
				  	<td>Email:<br \><input type="text" id="email"   name="email"  value="" class="input"/></td>
				  </tr>
				  	  
				  <tr>
				  	<td>Location:<br \><input type="text" id="CandiLocation"  name="CandiLocation" value="" class="input" /></td>
					<td>SSN:<br \><input type="text" id="ssn" name="ssn"  value=""  class="input" style="margin-left: 1%;" /></td>
				  </tr>
				  <tr style="height: 180px;">
				  	<td>
				  	<input class="styled"  type="submit" value="Add Candidate" style="background-color: #679FAB; cursor: pointer;"   onclick="addCandidateFunc(1)"/>
					<!-- <input class="styled"  type="submit" value="register" style="background-color: #679FAB;"   onclick="userRegistration(1)"/> -->
				  	</td>
				  	<td>
						<input class="styled"  type="submit" value="See All Candidate in Irbid location" style="  border: none; padding: 0!important; font-family: arial, sans-serif; color: #069; text-decoration: underline; cursor: pointer;"   onclick="canidiateList(1)"/>
				  	</td>
				  </tr>
<!-- 				  <tr> -->
<!-- 				  <td> -->
<!-- 				  <input type="submit" value="Back" style="width: 50px; background-color: black; color: white;"> -->
<!-- 				  </td> -->
<!-- 				  </tr> -->
			  </table>
		</div>
	</div>

	<div style=" margin-left:25%;padding:1px 16px; width:800px;  height:500px;"   id="addVoter">
		<div style=" margin-top:5%; background-color: 	#20b2aa; border-radius: 25px;   background-position: left top;   padding: 20px;">
			  <h2>Add Voter</h2>
			  <br\><br\>
			  <table>
				  <tr >
				  	<td>First Name:<br \> <input type="text" id="firstName" name="firstName" value=""  class="input" /></td>
				  	<td>Last Name:<br \><input type="text" id="lastName"  name="lastName" value="" class="input" /></td>	
				  </tr>
				  <tr style="height: 80px;">
				  	<td>Phone # :<br \><input type="text" id="mobile" name="mobile" value=""  class="input"/></td>
				  	<td>Email:<br \><input type="text" id="email"   name="email"  value=""   style="margin-left: 2.5%;" class="input"/></td>
				  </tr>
				  	  
				  <tr>
				  	<td>User Name:<br \><input type="text" id="userNameRegs"  name="userName" value="" class="input" /></td>
				  	<td>Password:<br \><input type="password" id="passwordRegs" name="password"  value=""  class="input" style="margin-left: 1%;" /></td>
				  </tr>
				  <tr style="height: 180px;">
				  	<td>
				  	<input class="styled"  type="submit" value="register" style="background-color: #679FAB;"   onclick="userRegistration(1)"/>
				  	<input class="styled"  type="submit" value="register" style="background-color: #679FAB;"   onclick="userRegistration(1)"/>
				  	<input class="styled"  type="submit" value="register" style="background-color: #679FAB;"   onclick="userRegistration(1)"/>
				  	</td>
				  </tr>
			  </table>
			  
			  
		</div>
	</div>
			

	<div style="margin-left:25%;padding:1px 16px;height:100px; margin-top: 440px;"  id="backbutton" >
	  <input type="submit" value="Back" style="width: 50px; background-color: black; color: white;">
	</div>

</div>
</body>


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

window.onload = function() {

	$("#addCandidate").hide();
	$("#addVoter").hide();
	$("#homeDive").show();
}

function addCandidate(){
	$("#addCandidate").show();
	$("#addVoter").hide();
// 	$("#homeDive").hide();
}
function addVoter(){
	$("#addCandidate").hide();
	$("#addVoter").show();
// 	$("#homeDive").hide();
}



function addCandidateFunc(param){
	//alert(userRegistration);
	var firstName = document.getElementById('firstName').value;
	var lastName = document.getElementById('lastName').value;
	var mobile = document.getElementById('mobile').value;
	var email = document.getElementById('email').value;
	var location = document.getElementById('CandiLocation').value;
	//var password = document.getElementById('passwordCandi').value;
// 	alert("firstName = " +  firstName);
	
    $.ajax({
        type: "GET",
        url: "addCandidateFromContactusScreen",
        data: {"firstName":firstName, "lastName":lastName, "email":email, "location":location, "mobile":mobile },
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
        		$('#errorRegistMessage').html("Successfully added candidate");
//             	$('#loginDiv').show();
//             	$('#registDiv').hide();
//             	$('#userName').val(messageList[0]);
//                 $('#password').val(messageList[1]);
//                 $('#loginMessage2').html(messageList[2]);
            	
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

	}//end of addCandidateFunc 
	
	
	function canidiateList(param){
		var firstName = document.getElementById('firstName').value;
		var lastName = document.getElementById('lastName').value;
		var mobile = document.getElementById('mobile').value;
		var email = document.getElementById('email').value;
		var location = document.getElementById('CandiLocation').value;
		
	    $.ajax({
	        type: "GET",
	        url: "canidiateList",
	        data: {"firstName":firstName, "lastName":lastName, "email":email, "location":location, "mobile":mobile },
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
	        		$('#errorRegistMessage').html("Successfully added candidate");
//	             	$('#loginDiv').show();
//	             	$('#registDiv').hide();
//	             	$('#userName').val(messageList[0]);
//	                 $('#password').val(messageList[1]);
//	                 $('#loginMessage2').html(messageList[2]);
	            	
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

		}// end of canidiateList



</script>

</html>