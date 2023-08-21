<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %> --%>


<%@ page import="com.election.mainapp.constant.GlobalMessage_AR" %>
<%@ page import="com.election.mainapp.constant.GlobalConstant" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>




</head>
<style>

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
    margin:45px;
}



#display2letter
{
width:150px;
height:50px;
background-color:grey;
box: 10px 10px 5px #888888;    
}
#display3letter
{
width:150px;
height:50px;
background-color:blue;
box: 10px 10px 5px #888888;
}
#display4letter
{
width:150px;
height:50px;
background-color:grey;
box: 10px 10px 5px #888888;
}

#one
{
position:relative;
left:23%;
}
#two
{
position:relative;
left:23%;
}
#three
{
position:relative;
left:23%;
}
.box {
    float: left;
    width: 270px;
}


.spacer{
  display:block;
  height:250px;
  width:100%;
  margin: 0 auto;
  content:""; 
};

 .box {
   width: 120px;
   height: 30px;
   border: 1px solid #999;
   font-size: 18px;
   color: #1c87c9;
   background-color: #eee;
   border-radius: 5px;
   box-shadow: 4px 4px #ccc;
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
</style>
<body>

<ul style="width: 220px;">
	<li><a class="active" href="/home2">Home</a></li>
	<li><a href="/candidateinformation?viewName=home2" id="selectCityLi">How to become a Candidate</a></li>
	<li><a href="/candidacyconditions">Add New Candidate</a></li>
	<li><a href="/contactUs">Candidate/Voter</a></li>
	<li><a href="/news">News</a></li>
	<li style="margin-top: 350px; background-color: black;" ><a href="/" style="color: white;">Logout</a></li>
	<li style="background-color: #04AA6D;" ><a  style="color: white;" id="Next">Next</a></li>
</ul>
<header style="background-color: #679FAB; width:100%;  color:black;">   
	<c:choose>
    <c:when test="${Language=='Arabic'}"> 
        <h2 style="margin-left: 600px;"> ${ GlobalMessage_AR.WELCOME_MESG_AR}</h2>    
        <br />
    </c:when>    
    <c:otherwise>
	 <h2 style="margin-left: 600px;">Hello Election Application This is Admin page</h2>           
        <br />
    </c:otherwise>
</c:choose>
</header>
  
<header style="float:right;">
	<c:choose>
	    <c:when test="${Language=='Arabic'}"> 
			&nbsp&nbsp
		 	<a href="#about">About</a>&nbsp&nbsp 
			<!--<a href="/">تسجيل خروج</a>         -->
  			<a href="/"><c:out value="${GlobalMessage_AR.LOGOUT_AR}"/></a> 
	    </c:when>    
	    <c:otherwise>
	    	    <a href="#about">About</a>&nbsp&nbsp 
  				<a href="/">Logout</a>
	    </c:otherwise>
	</c:choose> 
 </header> 

 
<div class='parent' id="englishDiv" style="margin-left: 210px; margin-top:1px; margin-bottom:1px; width: 80%;"><!-- ----------------------------------PARENT DIV STARTS---------------------------------- -->   
	
	  
	<span style="visibility: hidden; " id="changeGovernorateAlreadyHappen"> </span> 
	<div id="childDropLists" class='child' style="margin-right: 200px; margin-bottom: 980px; border: none;">
			<h2>Select one option from below fields for candidate information.</h2>          
			<span id="countryDropListMsgId" style="color: red; background-color: #dbfcd7;"></span>
			<div id="selectCountryDropListDiv" style="width: 400px; margin-top: 10px;">	    
				<c:choose>
				    <c:when test="${Language=='Arabic'}">
				    Select Country
						 <select name="country" id="countryAR" style="width:300px; height:80px; margin-top: 50px; text-align: center; font-size: 25px; background-color: #679FAB"> 
				    		<c:forEach items="${mapCountries}" var="country">
				   		      	<c:if test = "${country.value == 'Jordan'}">
									<option value="${country.key}" selected>الأردن </option>
								</c:if>
								<%-- <option value="${country.key}" disabled>${country.value}</option>  --%>
				    		</c:forEach>
				   		 </select>&nbsp&nbsp
				    </c:when>    
				    <c:otherwise>
				   		 <span style="margin-top: 50px; ">Select Country <br /> 
							 <select name="country" id="countryENG" style="width:300px; height:80px;  text-align: center; font-size: 25px; color:black; background-Color:lightgray;" onclick="countryDropListFun()">  
					    		<c:forEach items="${mapCountries}" var="country">
									<c:if test = "${country.value == 'Jordan'}">
										<option value="${country.key}" selected>Jordan </option>
									</c:if>
									<%--<option value="${country.key}" disabled>${country.value}</option>  --%>
					    		</c:forEach>
						    </select>
					    </span>
				    </c:otherwise>
				</c:choose><br \>
			</div>
	    
			<div id="selectGovernorateDropListDiv" style="width: 400px; margin-top: 10px;">   
		    		<c:choose>
				   	 <c:when test="${Language=='Arabic'}">
				   	 		<span style="margin-top: 50px; ">Select Governorate 					
								<select id="selectGovernorateDropListAR" style="width:300px; height:80px; margin-top: 50px; text-align: center; font-size: 25px; background-color: lightgray"> 			
									    <option value="Select" name ="Select"  id="0">--اختر المدينة--</option>
									    <c:forEach  items="${governorateDataList}" var="governorateData"> 
									        <option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}">${governorateData.arabicName}</option>
									    </c:forEach>
								</select>
		 					</span>
				        <br />
				    	</c:when>   
				   		<c:otherwise>	
				   			<span >Select Governorate <br \>								 
								<select id="selectGovernorateDropListENG" style="width:300px; height:80px;  font-size: 25px; text-align: center; background-color: lightgray; " onchange="changeGovernorate(this.value)" >      			 
									    <option value="Select" name ="Select"  id="0">--Select Governorate:--</option>
									    <c:forEach  items="${governorateDataList}" var="governorateData">  
											    <c:choose>
													  <c:when test="${governorateData.selectedItem == GlobalConstant.TRUE_FIRST_CAPITAL}">
													  	<option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}" selected>${governorateData.name}</option>
													  </c:when>
				
													  <c:otherwise>
													  	<option value="${governorateData.id}"  name="${governorateData.id}" id= "${governorateData.id}">${governorateData.name}</option>
													  </c:otherwise>
												</c:choose>
									    </c:forEach>
								</select>
							</span><br />
				  	  </c:otherwise>
					</c:choose>
			</div>
	      
			<div id="selectConstituencyDropListDiv" style="width: 400px; margin-top: 10px;">   
				<span style="margin-top: 50px; ">Select Constituency
					<select id="selectConstituencyDropList" style="width:300px; height:80px;  font-size: 25px; text-align: center; background-color: lightgray;" onchange="changeConstituency(this.value)" >      			 
						    <option value="Select" name ="Select"  id="0">--Select Constituency:--</option> 
						    <c:forEach  items="${constituencyDataList}" var="constituencyData">   
						        <option value="${constituencyData.name}"  name="${constituencyData.id}" id= "${constituencyData.id}">${constituencyData.name}</option>    
						    </c:forEach>
					</select><br />
				</span>
			</div>

			<div id="selectRegionDropListDiv" style="width: 400px; margin-top: 10px;">   
					<span style="margin-top: 50px; ">Select Region <br \>
						<select id="selectRegionDropList" style="width:300px; height:80px;  font-size: 25px; text-align: center; background-color: lightgray; " onchange="changeRegion(this.value)" >      			 
						    <option value="Select" name ="Select"  id="0">--Select Region:--</option> 
						    <c:forEach  items="${governorateDataList}" var="governorateData">  
						        <option value="${governorateData.name}"  name="${governorateData.id}" id= "${governorateData.id}">${governorateData.name}</option>    
						    </c:forEach>
						</select><br />
					</span>
			</div>
	</div>

	
	<div id="childDropLists2" class='child' style=" border : none !important; margin-bottom: 1100px; position: absolute; top: 160px; right: 60px;">    
<!-- 		<a href="#">Forgot User ID?</a><a href="#" style="margin-left: 20px;">Forgot Password?</a> -->
			<h1> Selected Item:</h1>  
			<div style="  display: flex;">
			  	<div style="flex: 1; background: lightgreen;">
				  	<label style="font-size: 30px; margin-right : 5px;">Country:</label>
				  	<br class="verticalSpace">
				  	<label id="cityLabel" style="font-size: 30px; margin-right : 5px;">City:</label>
				  	<label id="cityLabelByMV" style="font-size: 30px; margin-right : 5px;">${CityLable}</label> 
				  	<br class="verticalSpace">
				  	<label id="constituencyLabel" style="font-size: 30px; margin-right : 5px;">Constituency:</label>
				  	<br class="verticalSpace">
				  	<label id="regionLable" style="font-size: 30px; margin-right : 5px;">Region:</label>
				  	<br class="verticalSpace">			  
<!-- 				  	<label id="candidatesLable" style="font-size: 30px; margin-right : 5px;">Candidates:</label>  -->
<!-- 				  	<br class="verticalSpace"> -->
			  	</div>
			  	<div style="width: auto; height: auto; background: lightblue;">  
					<label style="font-size: 30px; color: red; font-weight: bold">Jordan</label>   
					<br class="verticalSpace">
					<label style="font-size: 30px; color: red" id="showSelectedCity">${selectedGovernorate}</label>      
<!-- 					<input type="text" style="font-size: 15px; color: red" id="showSelectedCity"> --> 
					<br class="verticalSpace">
					<label style="font-size: 30px; color: red" id="showSelectedConstituency"></label>
					<br class="verticalSpace">
					<label style="font-size: 30px; color: red" id="showSelectedRegion"></label>
					<br class="verticalSpace">
					<label style="font-size: 30px; color: red" id="showSelectedCandidates"></label>
					<br class="verticalSpace">
				</div>
			</div>
			<div style="margin-top: 30px;">
				<span id="newScreenWillPopupAfter5Sec"></span>
			</div> 
	</div><!----------------------------- end of div child--> 
	
	



	
	<div id="resultOfSelectedOption" class='child' style=" border : border; margin-bottom: 800px;">  
			<h1> Selected Item:</h1>  
			<table style="width: 100% ;   border: 1px solid black; ">   
				<tr style="  border: 1px solid black;"> 
					<td style="  border: 1px solid black;"><label style="font-size: 30px; margin-right : 5px; font-weight: bold">Country:</label> &nbsp&nbsp</td>
					<td style="  border: 1px solid black;"><label style="font-size: 30px; margin-right : 5px; font-weight: bold">City:</label>&nbsp&nbsp</td>
					<td style="  border: 1px solid black;"><label style="font-size: 30px; margin-right : 5px; font-weight: bold">Constituency:</label>&nbsp&nbsp</td>
					<td style="  border: 1px solid black;"><label style="font-size: 30px; margin-right : 5px; font-weight: bold">Region:</label>	&nbsp&nbsp</td>							  	 
					<!--<td><label style="font-size: 30px; margin-right : 5px;">Candidates:</label></td> -->
				</tr>	 
				<tr>	
					<td style="  border: 1px solid black;"><label style="font-size: 30px; color: red; font-weight: bold">Jordan</label>&nbsp&nbsp</td>
					<td style="  border: 1px solid black;"><label style="font-size: 30px; color: red" id="showSelectedGovernorate2"></label>&nbsp&nbsp</td>
					<td style="  border: 1px solid black;"><label style="font-size: 30px; color: red" id="showSelectedConstituency2"></label>&nbsp&nbsp</td>
					<td style="  border: 1px solid black;"><label style="font-size: 30px; color: red" id="showSelectedRegion2"></label>&nbsp&nbsp</td>
					<td style="  border: 1px solid black;"><label style="font-size: 30px; color: red" id="showSelectedCandidates2"></label></td>
				</tr>
			</table>
			<br class="verticalSpace">
			<br class="verticalSpace"> 
			<br class="verticalSpace">   
			<br /><br /><br /><br />  
			<table>
				<tr> 
					<td>
					<button style="margin-right: 200px; width: 200px; height: 75px;">         
						<a href="welcome" style="font-size: 20px;">Search Candidate</a>     
					</button>      
					<td>
					<button style="margin-left: 100px; width: 200px; height: 75px;">         
						<a href="/login?alredyLoggedin=Yes" style="font-size: 20px;">Edit Selection</a>     
					</button>      
					</td>
					<td>  
						    
					</td>
				</tr>
			</table>
	</div><!----------------------------- end of div child--> 

</div><!----------------------------- end of div parent English Version-->




<button class="md-trigger" id="modal" data-modal="modal" style="visibility: hidden;"></button>









</body>




<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

	window.onload = function() {
		
		// 		alert("window.onload"); 
				
				$('#selectRegionDropListDiv').hide();
				$('#childDropLists').show();
				
				$('#resultOfSelectedOption').hide();  
		// 		$('#searchCandidateDiv').hide();
		
				$('#cityLabel').hide();
				$('#constituencyLabel').hide();
				$('#regionLable').hide();
				$('#candidatesLable').hide();
				
				var  cityLable = '${CityLable}' ;// CityLable from modelandview object 
				var  selectedGovernorate = '${selectedGovernorate}' ;
		// 		alert("cityLable ="  + cityLable ); 
		// 		alert(cityLable !=null);
		// 		alert(cityLable !='');
		 		if(cityLable !=null && cityLable !=''){  
					document.getElementById("selectGovernorateDropListENG").style.color = "black";
					document.getElementById("selectGovernorateDropListENG").style.backgroundColor = "#679FAB";		
					
					
		 		   	$("#showSelectedGovernorate2").html(selectedGovernorate);  
		 		   	document.getElementById("showSelectedGovernorate2").value   = selectedGovernorate;  
					
		 		   	
		 			document.getElementById("countryENG").style.color = "black"; 
		 			document.getElementById("countryENG").style.backgroundColor = "#679FAB";
					
		// 			document.getElementById("selectConstituencyDropList").style.color = "blue";
		// 			document.getElementById("selectConstituencyDropList").style.backgroundColor = "pink";			
				}
	}// end of window.onload ---------------------------------------------------------------


	
 
	 
	
	function countryDropListFun(){
		document.getElementById("countryENG").style.color = "black"; 
		document.getElementById("countryENG").style.backgroundColor = "#679FAB";
		$("#countryDropListMsgId").html("Currently only Jordan anabled as country.");
	}// end of countryDropListFun ----------------------------------------------------------


	
	
	function  changeGovernorate(governorateId){
			
// 		alert(governorateId);
			var governorateName = setGovernorateName(governorateId);
			var showSelectedCity = document.getElementById('showSelectedCity').value;
	// 		alert(showSelectedCity); 
			if(showSelectedCity!=null){      
				alert("window will reload"); 
				window.location.href="login?alredyLoggedin=Yes";
			}
			document.getElementById("selectGovernorateDropListENG").style.color = "blue";
			document.getElementById("selectGovernorateDropListENG").style.backgroundColor = "pink";
			//document.getElementById('spacer1').innerHTML = msg;
			//document.getElementById("selectGovernorateDropListENG").style.width = "100px";      
			//document.getElementById("selectGovernorateDropListDiv").style.width = "100px";       
	

			
// 			$('#cityLabel').show();
// 			$("#showSelectedCity").html(governorateName);    
// 		   	document.getElementById("showSelectedCity").value   = governorateName;

		   	
// 		   	alert("governorateName = " + governorateName);   
// 		   	$("#showSelectedConstituency2").html(governorateName);
// 		   	alert("governorateName = " + governorateName);  
// 		   	document.getElementById("showSelectedConstituency2").value   = governorateName;  
		   	
			 $('#selectConstituencyDropListDiv').show(); 
			 $('#selectRegionDropListDiv').hide();
			 $('#showSelectedRegion').hide();
			 $('#showSelectedRegion2').hide();
			 $("#countryDropListMsgId").html(""); 
			 
			 
			 if(governorateId!='Select'){
				 window.location.href="findAllConstituencyByGovId?governorateId="+governorateId;	 
			 }
			 	 
	}// end of changeGovernorate--------------------------------------


	
	
	
	function  changeConstituency(ConstituencyName){
		
// 		alert(ConstituencyName);
		$('#constituencyLabel').show();
		$("#showSelectedConstituency").html(ConstituencyName);
		$("#showSelectedConstituency2").html(ConstituencyName);
		
		$('#selectRegionDropListDiv').show();   
		document.getElementById("selectConstituencyDropList").style.color = "black";
		document.getElementById("selectConstituencyDropList").style.backgroundColor = "#679FAB"; 
		//$("#changeGovernorateAlreadyHappen").html("YES");	
		//login?alredyLoggedin=Yes
	}// end of changeConstituency--------------------------------------
	


	function  changeRegion(regionName){ 
		
// 		alert(regionName);  
		$('#regionLable').show();
		$("#showSelectedRegion").html(regionName);
		$('#showSelectedRegion').show();
		$("#showSelectedRegion2").html(regionName);
		$('#showSelectedRegion2').show();

		$('#candidatesLable').show();
		
		document.getElementById("selectRegionDropList").style.color = "black";
		document.getElementById("selectRegionDropList").style.backgroundColor = "#679FAB";   
		
		var messageIn5Sec = "You will be directed to new pop up windows in 5 seconds.";
		$("#countryDropListMsgId").html(messageIn5Sec); 
		$("#newScreenWillPopupAfter5Sec").html(messageIn5Sec);
		document.getElementById("newScreenWillPopupAfter5Sec").style.backgroundColor = "#679FAB";
		document.getElementById("newScreenWillPopupAfter5Sec").style.color = "black";
		 
		
// 		var delayInMilliseconds = 9000; //1 second 
		setTimeout(function() {
		  //your code to be executed after 1 second
// 			$('#searchCandidateDiv').show(); 
			$('#childDropLists').hide(); 
			$('#childDropLists2').hide(); 
			$('#resultOfSelectedOption').show(); 
			$('#').hide(); 
			
		}, 5000);    
			
			

		
		
		
	}// end of changeRegion--------------------------------------------
	
	    
	    

	function setGovernorateName(governorateId){
		
			if (governorateId == 1){
				return "Amman";				
			} else if (governorateId == 2){
				return "Irbid";
			} else if (governorateId == 3){
				return "Balqa";			
			} else if (governorateId == 4){
				return "Karak";			
			} else if (governorateId == 5){
				return "Ma'an";			
			} else if (governorateId == 6){
				return "Zarqa";			
			} else if (governorateId == 7){
				return "Al-Mafraq";			
			} else if (governorateId == 8){
				return "At-Tafilah";			
			} else if (governorateId == 9){
				return "Madaba";
			} else if (governorateId == 10){
				return "Jerash";			
			} else if (governorateId == 11){
				return "Ajloun";			
			} else if (governorateId == 12){
				return "Aqaba";			
			} else if (governorateId == 13){
				return "Badia"; 
			}
	}//end of setGovernorateName------------------------------------------

	
	
	    
    
        $(document).ready(function() {
        	        	
            $('#Next').click(function ()
            {
//             	Alert("Next clicked");
                $.ajax({
                    type: "GET",
                    url: "welcome",
                    data: {"candidateId":1},
                    contentType: "application/json",
                    success: function(msg){
                    	alert("success");
                        $('#output').append(msg);
                        window.location.href="home3";
                    },
                    error: function(XMLHttpRequest, textStatus, errorThrown) { 
                        alert("Status: " + textStatus); alert("Error: " + errorThrown); 
                    } 
                });
            });
        });
    </script>

    
    
</html>