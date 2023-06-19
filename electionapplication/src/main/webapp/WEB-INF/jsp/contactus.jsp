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

/* .activelink{ */
/*  color: red; */
/*  background: yellow; */
/* } */


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
<ul style="width: 250px;">
  <li><a  class="active">Select one of below options</a></li>
  <li><a href="#home" onclick="addCandidate()" id="AddCandidateMenuLink">Add Candidate</a></li>
  <li><a href="#news" onclick="addVoter()" id="AddvoterMenuLink">Add voter</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
  <li style="margin-top: 400px;" ><a href="Login?alredyLoggedin=Yes" class="active" style="background-color: black">Back</a></li>
</ul>

<div >

<div   style="margin: auto;  border: 3px solid #73AD21; padding: 1px;background-color: #9F2B00; width: 100%; height: 10%; text-align: center;" >
  <h3 >Welcome, this screen to add candidate/voter</h3>
</div>


<div style="height: 100px;">
	
	
	<div style="margin-left:25%;padding:1px 16px;height:100px;  "  id="homeDive">
	  <h2>Select one option from left menu bar</h2>
	  <p>add Candidate or Voter..</p> 
	</div>
	
	

	<div style=" margin-left:25%;padding:1px 16px; width:700px;"   id="addCandidate"> 
	
		<div style=" margin-top:5%; background-color: 	#ffa07a; border-radius: 25px;   background-position: left top;   padding: 20px;">
		<span id="errorRegistMessage" style="color:blue;">${errorRegistMessage}</span>
			  <h2>Add Candidate</h2>
			  <br\><br\>
			  <table>
				  <tr >
				  	<td>First Name:<br \> <input type="text" id="firstName" name="firstName" value=""  class="input" /></td>
				  	<td>Last Name:<br \><input type="text" id="lastName"  name="lastName" value="" class="input" /></td>	
				  </tr>
				  <tr>
				  	<td>Phone # :<br \><input type="text" id="mobile" name="mobile" value=""  class="input"/></td>
				  	<td>Email:<br \><input type="text" id="email"   name="email"  value="" class="input"/></td>
				  </tr>
				  	  
				  <tr>
				  	<td>Location:<br \><input type="text" id="CandiLocation"  name="CandiLocation" value="" class="input" /></td>
					<td>SSN:<br \><input type="text" id="ssn" name="ssn"  value=""  class="input" style="margin-left: 1%;" /></td>
				  </tr>
				  <tr style="height: 80px;">
				  	<td>
				  	<input class="styled"  type="submit" value="Add Candidate" style="background-color: black; color: white; text-decoration: underline; cursor: pointer;"  onclick="addCandidateFunc(1)" id="addCandidateFunc"/>
				  	</td>
				  	<td>
						<input class="styled"  type="submit" value="Show Canidiate List" style="margin-left:60px; background-color: black; color: white; text-decoration: underline; cursor: pointer;"   onclick="showCanidiateList(1)" id="showCanidiateList"/>
						<input class="styled"  type="submit" value="Hide List" style="margin-left:150px ; background-color: black; color: white; text-decoration: underline; cursor: pointer;"   onclick="hideCanidiateList(1)" id="hideCanidiateList"/>						
				  	</td>
				  </tr>
			  </table>
				<table border="1" cellpadding="5" id="candidateDataListTable">
	            	<caption><h2>List of Candidate</h2></caption>
<%-- 	            	<caption><input class="styled"  type="submit" value="Hide List" style="background-color: black; color: white; text-decoration: underline; cursor: pointer;"   onclick="hideCanidiateList(1)"/></caption> --%>
	            	
		            <tr>
		                <th>ID</th>
		                <th>firsName</th>
		                <th>lastName</th>
		                <th>location</th>
		                <th>mobile</th>
		                <th>Email</th>
		            </tr>
		            <c:forEach  var="candidateData" items="${candidateDataList}" >
		                <tr >
		                    <td><c:out value="${candidateData.id}" /></td>
		                    <td><c:out value="${candidateData.firstName}" /></td>
		                    <td><c:out value="${candidateData.lastName}" /></td>
		                    <td><c:out value="${candidateData.location}" /></td>
		                    <td><c:out value="${candidateData.mobile}" /></td>
		                    <td><c:out value="${candidateData.email}" /></td>
		                </tr>
		            </c:forEach>
	       	 </table>
		</div>
	</div>

	<div style=" margin-left:25%;padding:1px 16px; width:550px;  height:50px; margin-bottom: 460px; "   id="addVoter">
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
				  	</td>
				  </tr>
			  </table>
			  
			  
		</div>
	</div>

	<div style=" margin-left: 360px;"   id="backbutton" >
	<form action="Login" method="get">
	    <input type="text" name="alredyLoggedin" value="Yes" style="display:none;"/><br>
	  <input type="submit" class="styled" value="Back" style="background-color: black; color: white;">
	</form>
	</div>	
	
</div>

</div>
</body>


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

window.onload = function() {

	document.getElementById("AddCandidateMenuLink").style.color = "red";
	document.getElementById("AddCandidateMenuLink").style.backgroundColor = "yellow";
	
	$("#addCandidate").show();
	$("#addVoter").hide();
	$("#homeDive").show();
	$('#candidateDataListTable').show();
	
	$('#showCanidiateList').hide();
}

function addCandidate(){
	$("#addCandidate").show();
	$("#addVoter").hide();
	
	document.getElementById("AddCandidateMenuLink").style.color = "red";
	document.getElementById("AddCandidateMenuLink").style.backgroundColor = "yellow";
	document.getElementById("AddvoterMenuLink").style.color = "black";
	document.getElementById("AddvoterMenuLink").style.backgroundColor = "white";
}



function addVoter(){
	$("#addCandidate").hide();
	$("#addVoter").show();
	$("#errorRegistMessage").show();
// 	$("#homeDive").hide();

	document.getElementById("AddvoterMenuLink").style.color = "red";
	document.getElementById("AddvoterMenuLink").style.backgroundColor = "yellow";
	document.getElementById("AddCandidateMenuLink").style.color = "black";
	document.getElementById("AddCandidateMenuLink").style.backgroundColor = "white";


}


function hideCanidiateList(param){

	$('#candidateDataListTable').hide();
	$('#showCanidiateList').show();
	$('#hideCanidiateList').hide();
	
}

function showCanidiateList(param){

	$('#candidateDataListTable').show();
	$('#showCanidiateList').hide();
	$('#hideCanidiateList').show();
	
}



function addCandidateFunc(param){
	//alert(userRegistration);
	var firstName = document.getElementById('firstName').value;
	var lastName = document.getElementById('lastName').value;
	var mobile = document.getElementById('mobile').value;
	var email = document.getElementById('email').value;
	var location = document.getElementById('CandiLocation').value;
	var ssn = document.getElementById('ssn').value;
	
	//var password = document.getElementById('passwordCandi').value;
// 	alert("firstName = " +  firstName);
	
    $.ajax({
        type: "GET",
        url: "addCandidateFromContactusScreen",
        data: {"firstName":firstName, "lastName":lastName, "email":email, "location":location, "mobile":mobile, "ssn":ssn },
        contentType: "application/json",
        
        success: function(messageList){
        	
        	alert("Registration Failed"); 
		        	if(messageList[0]=="Failed_Registration"){
						$('#errorLoginMessage').hide();
						$('#errorRegistMessage').html(messageList[1]);
		            	$('#loginDiv').hide();
		            	$('#registDiv').show();            		
		        	}else{
		        		alert("else");
		        		$('#errorRegistMessage').html("Successfully added candidate");
		        		//$('#loginDiv').show();
		             	//$('#registDiv').hide();
		             	//$('#userName').val(messageList[0]);
		    	        //$('#password').val(messageList[1]);
			            //$('#loginMessage2').html(messageList[2]);
				        $('#candidateDataListTable').hide();
						window.location.href="contactUs"
		        	}
		        	

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
	
	
// 	function canidiateList(param){
// 		var firstName = document.getElementById('firstName').value;
// 		var lastName = document.getElementById('lastName').value;
// 		var mobile = document.getElementById('mobile').value;
// 		var email = document.getElementById('email').value;
// 		var location = document.getElementById('CandiLocation').value;
		
// 	    $.ajax({
// 	        type: "GET",
// 	        url: "canidiateList",
// 	        data: {"firstName":firstName, "lastName":lastName, "email":email, "location":location, "mobile":mobile },
// 	        contentType: "application/json",
// 	        success: function(messageList){
// 	        	alert(messageList[0]);
// 	        	if(messageList[0]=="Failed_Registration"){
// 					$('#errorLoginMessage').hide();
// 					$('#errorRegistMessage').html(messageList[1]);
// 	            	$('#loginDiv').hide();
// 	            	$('#registDiv').show();            		
// 	        	}else{
// 	        		alert("else");
// 	        		$('#errorRegistMessage').html("Successfully added candidate");
// 	        	}

// 				},
// 				error : function(XMLHttpRequest, textStatus,
// 						errorThrown) {
// 					alert("Status: " + textStatus);
// 					alert("Error: " + errorThrown);
// 				}

// 			});

// 		}// end of canidiateList



</script>

</html>