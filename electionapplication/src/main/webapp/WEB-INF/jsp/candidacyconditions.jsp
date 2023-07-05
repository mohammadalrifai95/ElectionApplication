<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
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


sameLine {
    /* Other styling... */
    text-align: right;
    clear: both;
    float:left;
    margin-right:15px;
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

.active {
  background-color: #04AA6D;
  
}


.inputButton {
		position:relative;
		font-size: 1.2em;
		padding: 3px;
		display: inline-block;
		border-radius: 9999em;
		background-color: #4CAF50;
		border: none;
		color: white;
		text-align: center;
		cursor: pointer;
		width: 110px; 
	}

</style>



<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>


<ul style="width: 200px;">
	<li style="margin-bottom: 50px; ">
		<a class="active" style="" href="/login?alredyLoggedin=Yes" >
			Home
		</a>
	</li>
<!-- 	<li> -->
		<a href="/candidateinformation?viewName=candidacyconditions" id="selectCityLi">
			Read Candidate Information
		</a>
<!-- 	</li> -->
	 <li style="width: 200px; height: 50px; margin-top: 420px;">  	 
		<a href="/login?alredyLoggedin=Yes" class="active" style="background-color: black">  
			back 
		</a>
	</li>
</ul>
<div   style="margin: auto;  border: 3px solid #73AD21; padding: 1px;background-color: #9F2B00; width: 100%; height: 10%; text-align: center;" >
  <h3 >This is Candidacy Conditions By Law Screen.</h3>
</div>





<h3><span  id="notEligableDueToAge" style="text-align: center; width: 100% ; margin-left: 200px;" ></span></h3>   
<div class='parent' style="margin-left: 10px;">   
  <div class='child'>
  	<table>
<!--   		<tr style="height: 10px;"><td ><span id="notEligableDueToAge" ></span> </td></tr>   -->
  		<tr id="areYou30YearsOrOlderTrId"  style="height: 25px;">    
			<td>
				<p class="sameLine" style=" margin-top: 50px; float: left"> 
					Will you be 30 years old or older on polling day <br \> 
					<input type="radio" name="ageRadio" value="yes"  onclick="thirtyYearsOrOlderFun(this.value)" /> Yes  
					<input type="radio" name="ageRadio" value="no" onclick="thirtyYearsOrOlderFun(this.value)"/> No
				</p>
			</td>
		</tr>
		<tr id="birthdayDateTrId">
			<td>
				<p class="sameLine" style=" margin-top: 50px;">
				Please select Birthday Date  
				<input type="text" id="datepickerId">
				</p> 
			</td>
		</tr>	
			
		
  	</table>
  	
		<table id="CandidacyRequirementsBylawTableId">
			<tr> 
				<td>  
					<p class="sameLine" style=" margin-top: 50px; float: left"> 
						Do you have a Jordanian citizen 
						<input type="radio" name="JordanianCitizenRadio" value="yes"  onclick="JordanianCitizenQ(this.value)"> Yes </input> 
						<input type="radio" name="JordanianCitizenRadio" value="no" onclick="JordanianCitizenQ(this.value)"/> No </input>
					</p>
				</td>
			</tr>
			<tr > 
				<td>
					<p class="sameLine" style=" margin-top: 50px; float: left"> 
						Have  you ever been convicted of bankruptcy?
						<input type="radio" name="bankruptcyRadio" value="yes"  onclick="bankruptcyConvictedFun(this.value)"> Yes </input> 
						<input type="radio" name="bankruptcyRadio" value="no" onclick="bankruptcyConvictedFun(this.value)"/> No </input>
					</p>
				</td>
			</tr>
			<tr id="HaveYouRegainedYourLegalStatusTrId">
				<td>
					<p class="sameLine" style=" margin-top: 50px; float: left"> 
						Have you regained your legal status ?
						<input type="radio" name="regainedYourLegalStatusRadio" value="yes"  onclick="regainedYourLegalStatusFun(this.value)"> Yes </input> 
						<input type="radio" name="regainedYourLegalStatusRadio" value="no" onclick="regainedYourLegalStatusFun(this.value)"/> No </input>
					</p> 
				</td>
			</tr>
			<tr id="DateBecameJoCitizenTr">
				<td>
					<p class="sameLine">
						Select date when you became a Jordanian Citizen
						Date: <input type="text" id="datepickerId">
					</p>
				</td>
			</tr>
	
<!-- 			<tr> -->
<!-- 				<td><input type="radio" name="attendance[1]" value="present" onclick="radioselected(this.value)"/>present </td>  -->
<!-- 				<td><input type="radio" name="attendance[1]" value="absent" onclick="radioselected(this.value)" />absent</td> -->
<!-- 				<td><input type="radio" name="attendance[1]" value="halfday" onclick="radioselected(this.value)" />halfday</td> -->
<!-- 			</tr> -->
			
<!-- 			<tr> -->
<!-- 				<td><input type="radio" name="attendance[2]" value="present" />present</td> -->
<!-- 				<td><input type="radio" name="attendance[2]" value="absent" />absent</td> -->
<!-- 				<td><input type="radio" name="attendance[2]" value="halfday" />halfday</td> -->
<!-- 			</tr> -->
 
		</table>
  </div><!-- end of child div ---------------------------------------- -->
  
  
  
  <div class='child' style="position: absolute; top: 160px; right: 60px;"> 
<!--   		<ul style="width: 200px;"> -->
<!--   				<li> -->
  					<a href="/candidateinformation?viewName=candidacyconditions" id="selectCityLi">
  						Read Candidate Information
					</a>
<!-- 				</li> -->
<!-- 		</ul> -->
		<br /><br />
  		 <span id="JordanianCitizenSpan1">Are you a Jordanian Citizen? </span> 
  		 <span id="JordanianCitizenSpan2"></span> 
  </div><!-- end of child div ---------------------------------------- -->
</div><!-- end of parent div ---------------------------------------- -->


</body>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 
<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script> -->
<script type="text/javascript">


window.onload = function() {
	
	$('#birthdayDateTrId').hide();
 	$('#CandidacyRequirementsBylawTableId').hide();
//  	document.getElementbyId('CandidacyRequirementsBylawTableId') = 'disabled' ; 
//     document.getElementById('trytodisablethisinputtexttagId').disabled = true;
//     document.getElementById('CandidacyRequirementsBylawDivId').disabled = true;

	
	$('#JordanianCitizenSpan1').hide();
	$('#JordanianCitizenSpan2').hide();
	$('#DateBecameJoCitizenTr').hide();
	$('#HaveYouRegainedYourLegalStatusTrId').hide();
	
}


$( function() {
    $( "#datepickerId").datepicker();
  } );



function radioselected(selectedRadioItem){
	alert("selectedRadioItem = " + selectedRadioItem);
}

function JordanianCitizenQ(radio){
// 	alert("Are you a Jordanian Citizen = " + answer); 
	
	if(radio == 'yes'){
		$('#DateBecameJoCitizenTr').show();
	}else{
		$('#DateBecameJoCitizenTr').hide();
	}
	
	$('#JordanianCitizenSpan1').show();
	$('#JordanianCitizenSpan2').show();
	document.getElementById('JordanianCitizenSpan2').innerHTML = answer; 

}

function thirtyYearsOrOlderFun(radio){
	
	if(radio == 'yes'){
		$('#CandidacyRequirementsBylawTableId').show();
		$('#birthdayDateTrId').show();
		document.getElementById('notEligableDueToAge').innerHTML = '' ;
	}else{
		$('#CandidacyRequirementsBylawTableId').hide();
		$('#birthdayDateTrId').hide();
		var  message = "You are not eligible to nominate yourself, Candidate should be 30 years old or older on polling day"; 
		alert(message );
		document.getElementById('notEligableDueToAge').innerHTML = message ;
		document.getElementById("notEligableDueToAge").style.color = "red";
		document.getElementById("notEligableDueToAge").style.backgroundColor = "yellow"; 
	}
}
	
	
	function bankruptcyConvictedFun(radio){
		
		if(radio == 'yes'){
			
			$('#HaveYouRegainedYourLegalStatusTrId').show();
		}else{
			$('#HaveYouRegainedYourLegalStatusTrId').hide();
		}
		
	}
	
	function regainedYourLegalStatusFun(radio){
		
		if(radio == 'yes'){
			
// 			$('#HaveYouRegainedYourLegalStatusTrId').show();
		}else{
// 			$('#HaveYouRegainedYourLegalStatusTrId').hide();
			var  message = "You are not eligible to nominate as a candidate, candidate should be 30 years old or older on polling day";
			alert(message );
			document.getElementById('notEligableDueToAge').innerHTML = message ;
			document.getElementById("notEligableDueToAge").style.color = "red";
			document.getElementById("notEligableDueToAge").style.backgroundColor = "yellow"; 
		}
		
	}
	

</script>


</html>