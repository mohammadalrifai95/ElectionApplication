<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<head> 
<meta charset="windows-1256">
<title>Welcome to Election System Application</title>
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

.parentInterior {
  border: 1px solid black;
  margin: 1rem;
  padding: 2rem 2rem;
  text-align: center;
}
.childInterior {
  display: inline-block;
  border: 1px solid red;
  padding: 1rem 1rem;
  vertical-align: middle;
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

 
 



	
   .circle {
  background: lightblue;
    border-radius: 50%;
    width: 200px;
    height: 200px;
    }	
    
    
    .circular_image {
  width: 400px;
  height: 400px; 
  border-radius: 50%;
  overflow: hidden;
  background-color: blue;
  /* commented for demo
  float: left;
  margin-left: 125px;
  margin-top: 20px;
  */
  
  /*for demo*/
  display:inline-block;
  vertical-align:middle;
}



.circular_image_header { 
  width: 100px;
  height: 100px;
  border-radius: 25%; 
  overflow: hidden;
  background-color: blue;
  /* commented for demo
  float: left;
  margin-left: 125px;
  margin-top: 20px;
  */
  
  /*for demo*/
  display:inline-block;
  vertical-align:middle;
}


.circular_image img{
  width:100%;
}

.imageContainer > img:hover {
  width: 300px;
  height: 300px;   
}

.center {
  margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;
}


 .arrow {
  border: solid black;
  border-width: 0 3px 3px 0;
  display: inline-block;
  padding: 3px;
}

.right {
  transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
}

 
    
/* body { */
/*   background-color:white; */
  
/* } */

/* ul { */
/*   list-style-type: none; */
/*   margin: 0; */
/*   padding: 0; */
/*   overflow: hidden; */
/*   background-color: white;  */
/* } */

/* li { */
/*   float: left; */
/* } */


/* li a, .dropbtn { */
/*   display: inline-block; */
/*   color: #00008B;     */
/*   text-align: center; */
/*   padding: 14px 33px;     */
/*   text-decoration: none; */
/* } */

/* li a:hover, .dropdown:hover .dropbtn { */
/*   background-color: red; */
/* } */

/* li.dropdown { */
/*   display: inline-block; */
/* } */

/* .dropdown-content { */
/*   display: none; */
/*   position: absolute; */
/*   background-color: #f9f9f9; */
/*   min-width: 160px; */
/*   box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); */
/*   z-index: 1; */
/* } */

/* .dropdown-content a { */
/*   color: black; */
/*   padding: 12px 16px; */
/*   text-decoration: none; */
/*   display: block; */
/*   text-align: left; */
/* } */

/* .dropdown-content a:hover {background-color: #f1f1f1;} */

/* .dropdown:hover .dropdown-content { */
/*   display: block; */
/* } */
 
 
/* .float-parent-element {   */
/*      width: 100%;    */
/*      background-color: #f1f1f1;    */
/*  }   */

/* .lvl3 { position: absolute; top:0px; left: 50px; } */

 
 
 
html, body {
	height: 100%;
} 

*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;

}

ul {
	list-style: none;
}

body {
	font-size: 1rem;
	line-height: 1.6;
	background-color: #ecf0f1;
	color: #666;
	font-family:  'Roboto Condensed', sans-serif;
} 

/* Nav Style */

header{

	background-color: #2c3e50;
	padding: 2rem 0;

}

nav{
	max-width: 1100px;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
	align-items: center;
}


.logo{
	font-size: 1.5rem;
	color: #fff; 
	font-weight: 700;
}

 
.menu > li, .menu > a {
	display: inline-block;
}


.menu li {
	position: relative;
	

}

.menu a {
	text-decoration: none;
	color: blue;  
	display: block;
	padding: 10px 1.5rem; 
	/* 	changehere  */
	padding-right: 1px;        
	transition: background-color .22s ease, color .22s ease; 

}

.menu a:hover {
	background-color: #f34949;
	color: #fff;
}


/* Submenu level1 */

.submenu {
	position: absolute;
	background-color: #2c3e50;
	width: 140px;
	left: 0;
	display: none;
/* 	changehere  */
	width: 300px; 
}



/* Submenu level2 style */ 


.submenu2 {
	position: absolute;
	left: 100%;
	width: 140px;
	top: 0;
	background-color: #2c3e50;
	display: none;
	/* 	changehere  */
	width: 320px;  
	
}


/* Show menu on hover */

.menu li:hover > .submenu {  
	display:block; 
	
}

.submenu li:hover .submenu2 {
	display:block;
}
 


.arrow {
  border: solid black;
  border-width: 0 3px 3px 0;
  display: inline-block;
  padding: 3px;
}

.right {
  transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
}

.left {
  transform: rotate(135deg);
  -webkit-transform: rotate(135deg);
}

.up {
  transform: rotate(-135deg);
  -webkit-transform: rotate(-135deg);
}

.down {
  transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
}


</style>
<body>



<div   style=" background-color: #00008B; width: 100%; height: 100px; color: white;" >  
	<table style="margin-left: 100px;">            
		<tr>
			<td>            
				<p style=" margin-top: 20px;">  
					<a href="/FreshLogo">  
				  	<img src="<c:url value="/resources/images/FreshLogo.jpg" />" alt="image" class="circular_image_header"   style="width: 80px; height: 50px; "/>
					</a>
				</p>
			</td>
			<td style="width: 50px;">
			</td>
			<td style="width: 500px;">        
				<h2 style=" margin-top: 40px;"> 
					FRESH TABLE GREENS...!  
				</h2>
			</td>
			<td style="width: 350px;"></td>   
			<td>  
				<h3 style=" margin-top: 40px;"> 
					English.
				</h3>  
			</td>   
			
		</tr>
	</table>
</div>


	<div style="border:1px solid gray; width: 100%; height:70px; background-color: white">        
		<h3 style="margin-left: 30px;">
		
				<ul class="menu">
								
					<li>
						<a href="#">About Us &#9660</a>
						<ul class="submenu">
							<li><a href="/aboutus">About Us</a></li> 
							<li><a href="/corporatesustainability">Corporate Sustainability</a></li>  
							<li><a href="/awards">Awards</a></li>  
						</ul>
					</li>


					<li><a href="#">Sustainability &#9660</a>
						<ul class="submenu">
							<li><a href="/sustainability">Sustainability</a></li>
							<li><a href="/alliances">Alliances</a></li>  
							<li><a href="/certifications">Certifications</a></li>  
							<li><a href="/healthandsafety">Health and safety during covid-19</a></li>   
						</ul>
					</li>
	
					
					<li>
						<a href="#">Products and Services &#9660</a>
						<ul class="submenu">
							<li>
								<a href="#">Premium Bananas <i class="arrow right" style="margin-left: 45px;'"></i></a> 
								<ul class="submenu2"> 
									<li><a href="/premiumbananas">Premium Bananas</a></li>
									<li><a href="/agroindustrialsustainability">Agroindustrial Sustainability of Our Bananas</a></li>								
								</ul>
							</li>
							<li><a href="/premiumpineapples"> Premium Pineapples</a></li>
							<li>
								<a href="#">Tropical Oil <i class="arrow right" style="margin-left: 105px;'"></i> </a>
								<ul class="submenu2">
									<li><a href="/tropicaloil">Tropical Oil</a></li>
									<li><a href="/agro-industrialsustainability">Agro-industrial Sustainability of Tropical Oil</a></li>
									<li><a href="/identitypreservedmodel">Identity Preserved Model</a></li>
								</ul>					
							</li>
							<li><a href="/naturalingredients"> Natural Ingredients</a></li>  
							<li><a href="/logisticsandtransportation"> Logistics and Transportation</a></li>  
						</ul>
					</li>
					
					<li><a href="/news&blogs"> News & Blogs</a></li>
					
					<li><a href="#">Our Offices &#9660</a>
						<ul class="submenu">
							<li><a href="/ouroffices">Our Offices</a></li>
							<li><a href="/ethicsline">Ethics Line</a></li>  
						</ul>
					</li>
				
					  <input id="textId" type="text" placeholder="Search.." name="search2" style="height: 30px; width: 200px;" >
					  <button id="searchButtonId" type="submit" style="width: 40px; height: 30px; background-color:  #00008B;" onclick="searchFunction()"><i class="fa fa-search" style="color: white; "></i></button>
					
				</ul>
		</h3>
	</div>			


<div  id="englishDiv" style=" background-color: lightgray; padding-top: 1px;">   

<!-- 	<div style="border:1px solid gray; width: 100%; height:auto; "> 	 -->
<!-- 		<a href="/nuts" style="margin: auto;">         -->
<%-- 	  		<img src="<c:url value="/resources/images/wheat-and-diabetes.jpg" />" alt="image"    border="0" style="margin-right:200px; width:50%; height: 300px;"/>  --%>
<!-- 		<!-- Read more-->
<!-- 		</a> -->
<!-- 	</div>		 -->
	
	<div style="width: 100%; height:300px; margin-top: 20px;"> 
		<table style="">     
			<tr>
				<td >
						<a href="/wheat-and-diabetes" style="padding: .09px;"> 
					  			<img src="<c:url value="/resources/images/wheat-and-diabetes.jpg" />" alt="image"    border="0" style=" width: 700px; height: 300px; "/>
						</a>
				</td>
				<td style="width: 50px;"></td>    
				<td> 
								<p style="color: #00008B; font-size: 25px; padding-top: 2px;" > 	
									FRESH TABLE GREENS 
								</p>
								<p style="color: #00008B; font-size: 20px;" >  
									<br />
									Doing Well by doing good
									<br />
									We contribute to a better future
									<br /> 
									for Our People and the Environment
									<br /> 
					  			</p>
				</td>
			</tr>
		</table>
	</div>		
	
	
	
	
	<div style="border:1px solid gray; width: 100%; height:auto; "> 	
		<h1 style="color: #00008B; margin-left: 50px;" >ABOUT US</h1>  
		<div class="parent"  style="border: none">  
			<div class="child" style="border: none; margin-right: 50px;" >
				<table>
					<tr>
						<td>
							<img src="<c:url value="/resources/images/Edificios.png" />" alt="image"border="0" />
						</td>
						<td>
							We implement environmentally respectful agro-<p style="margin-left: 50px;">industrial practices to guarantee sustainable production</p>
						</td>
					</tr> 
				</table>					
			</div>
			<div class="child" style="border: none;">
				<table>
					<tr>
						<td>
							<img src="<c:url value="/resources/images/Localizacion.png" />" alt="image"border="0"/>
						</td>
						<td>
							We implement environmentally respectful agro-<p style="margin-left: 50px;">industrial practices to guarantee sustainable production</p>
						</td>
					</tr> 
				</table>
			</div>
		</div>

	</div>	
	

	<div style="width: 100%; height:300px; background-color: #191970;"> 
		<table style="">     
			<tr>
				<td >
						<a href="/agrecaltureProducts" style="padding: .09px;">  
					  			<img src="<c:url value="/resources/images/agrecaltureProducts.jpg" />" alt="image"    border="0" style=" width: 400px; height: 300px; "/>
				  			 
						</a>
				</td>
				<td style="width: 50px;"></td>    
				<td>
					<p style="color: white; font-size: 30px; padding-top: 2px;" > 	
						Fresh Table Greens
					</p>				
					<p style="color: white; font-size: 20px;" > 
						Our employees contribute to the development of the areas in which they work and live.				
					</p>
				</td>
			</tr>
		</table>
	</div>			
	
	
	<div style="border:1px solid gray; width: 100%; height:auto; "> 	
		<h1 style="color: #00008B; margin-left: 50px;" >OUR PURPOSE</h1>   
		<div class="parent"  style="border: none">  
			<div class="child" style="border: none; margin-right: 50px;" >
				 		At AgroAmerica, we strive every day to contribute to the socio-economic development of the countries and regions where we produce world-class food and agro-industrial products.

						Thanks to the teachings of our founder, we have been part of the development of our communities since the end of the 1950s.
			</div>
		</div>
	</div>	
	
	<div style="border:1px solid gray; width: 100%;">   
 
		<table style="margin-left: 45px;"> 
			<tr>
				<td><h2 style="color: #00008B;">Vision <img src="<c:url value="/resources/images/Recurso1.png" />" alt="image"border="0"/></h2></td>
				<td>To be a world-class agro-industrial Corporation in quality, productivity, profitability and Corporate Sustainability Strategy.</td>
				<td><h2 style="color: #00008B;">Mission <img src="<c:url value="/resources/images/Recurso.png" />" alt="image"border="0"/></h1></td> 
				<td>To be a world-class agro-industrial Corporation dedicated to providing its clients and the world, high quality food with the highest international standards while contributing to the socio-economic development of the region.</td>
			</tr>
		</table>
	
	</div>
	
	
	<div style="border:1px solid gray; width: 100%;">   
 
		<table style="width: 100%; margin-left: 45px; color: #00008B;">    
			<tr>
				<td>
					<table>
						<tr>
							<td><img src="<c:url value="/resources/images/1.png" />" alt="image"border="0"/></td>
							<td>
								<span style="margin-left: 20px; font-size: 25px; ">Diligence<br \></span>
								<span style="margin-left: 20px;">We seek discipline, effort and dedication in our work</span>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table>
						<tr>
							<td><img src="<c:url value="/resources/images/2.png" />" alt="image"border="0"/></td>
							<td>
								<span style="margin-left: 20px; font-size: 25px; ">Team Work<br \></span>
								<span style="margin-left: 20px;">Our team is fully committed to the </span><br />
								<span style="margin-left: 20px;">company’s objectives.</span>
							</td>
						</tr>
					</table>
				</td>
			</tr>
 
 
			<tr>
				<td>
					<table>
						<tr>
							<td>
								<img src="<c:url value="/resources/images/3.png" />" alt="image"border="0"/>
							</td>
							<td>
								<span style="margin-left: 20px; font-size: 25px; ">Honesty<br \></span>
								<span style="margin-left: 20px;">We behave with integrity, transparency and ethics.</span>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table>
						<tr>
							<td>
								<img src="<c:url value="/resources/images/4.png" />" alt="image"border="0"/>
							</td>
							<td>
								<span style="margin-left: 20px; font-size: 25px; ">Perseverance<br \></span> 
								<span style="margin-left: 20px;">Determination in what we are committed to accomplish.</span>
							</td>
						</tr>
					</table>
				</td>
			</tr>
 
 
			<tr>
				<td>
					<table>
						<tr>
							<td>
								<img src="<c:url value="/resources/images/5.png" />" alt="image"border="0"/>
							</td>
							<td>
								<span style="margin-left: 20px; font-size: 25px; ">Responsability<br \></span>
								<span style="margin-left: 20px;">We engage to fulfill our obligations and promote a responsible</span><br \>
								<span style="margin-left: 20px;">production based on a Corporate Sustainability Strategy</span><br \>
								<span style="margin-left: 20px;">towards our people, our communities and the environment.</span>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table>
						<tr>
							<td>
								<img src="<c:url value="/resources/images/6.png" />" alt="image"border="0"/>
							</td>
							<td>
								<span style="margin-left: 20px; font-size: 25px; ">Generosity<br \></span>  
								<span style="margin-left: 20px;">We seek for socio-economic development in the regions</span><br />  
								<span style="margin-left: 20px;">where we operate and benefit our stakeholders.</span>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>	
	</div>
	
	
	<div style="border:1px solid gray; width: 100%;" >    
		<table style="  color: #00008B;" >     
			<tr>
				<td class="imageContainer" id="2017Td">
					<a href="/wheats"> 
						<p style="margin-left: 80px; font-size: 70px; color: green;">2017 &nbsp;&nbsp;&nbsp;&nbsp;
						<img src="<c:url value="/resources/images/Wheat.jpg" />" alt="image" class="circular_image"/> 
<!-- 						<p style="font-size: 80px; id="tdDotId0"> -->
						&nbsp;&nbsp;&nbsp;<span style="font-size: 200px;">.</span>......
						</p>
<!-- 						</p>	 -->
					</a>	
				</td>
				<td class="imageContainer" id="2018Td">
					<a href="/walnuts">
						<p style="margin-left: 80px; font-size: 70px; color: blue;">2018 &nbsp;&nbsp;&nbsp;&nbsp; 
						<img src="<c:url value="/resources/images/walnuts.jpg" />" alt="image" class="circular_image"/> 
<!-- 						<p style="font-size: 80px;" id="tdDotId1"> -->
						&nbsp;&nbsp;&nbsp;.<span style="font-size: 200px;">.</span>..... 
<!-- 						</p> -->
						</p>	
					</a>
					 		
				</td>
				<td  class="imageContainer" id="2019Td">
					<a href="/almonds">
						<p style="margin-left: 80px; font-size: 70px; color: red">2019 &nbsp;&nbsp;&nbsp;&nbsp; 
						<img src="<c:url value="/resources/images/almonds.jpg" />" alt="image"    class="circular_image"/>
<!-- 						<p style="font-size: 80px;" id="tdDotId2"> -->
						&nbsp;&nbsp;&nbsp;..<span style="font-size: 200px;">.</span>.... 
<!-- 						</p> -->
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2020Td">
					<a href="/little-of-us">
						<p style="margin-left: 80px; font-size: 70px; color: yellow">2020 &nbsp;&nbsp;&nbsp;&nbsp;
						<img src="<c:url value="/resources/images/differentTypeOfnuts.jpg" />" alt="image"    class="circular_image"/>
<!-- 						<p style="font-size: 80px;" id="tdDotId2"> -->
						&nbsp;&nbsp;&nbsp;...<span style="font-size: 200px;">.</span>... 
<!-- 						</p> -->
						</p>
					</a>
				</td>
				 
				<td  class="imageContainer" id="2021Td">
					<a href="/little-of-us">
						<p style="margin-left: 80px; font-size: 70px; color: brown;">2021 &nbsp;&nbsp;&nbsp;&nbsp;
						<img src="<c:url value="/resources/images/agriculture-products.jpg" />" alt="image"    class="circular_image"/>
<!-- 						<p style="font-size: 80px;" id="tdDotId2"> -->
						&nbsp;&nbsp;&nbsp;....<span style="font-size: 200px;">.</span>.. 
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2022Td">
					<a href="/little-of-us">
						<p style="margin-left: 80px; font-size: 70px; color: orange;">2022 &nbsp;&nbsp;&nbsp;&nbsp;
						<img src="<c:url value="/resources/images/farm.jpg" />" alt="image"    class="circular_image"/>
<!-- 						<p style="font-size: 80px;" id="tdDotId2"> -->
						&nbsp;&nbsp;&nbsp;.....<span style="font-size: 200px;">.</span>.
						</p>
					</a>
				</td>
				<td  class="imageContainer" id="2023Td">
					<a href="/little-of-us">
						<p style="margin-left: 80px; font-size: 70px; color: black;">2023 &nbsp;&nbsp;&nbsp;&nbsp;
						<img src="<c:url value="/resources/images/agriculture-vegetables.jpg" />" alt="image"    class="circular_image"/>
<!-- 						<p style="font-size: 80px;" id="tdDotId2"> -->
						&nbsp;&nbsp;&nbsp;......<span style="font-size: 200px;">.</span>
						</p>
					</a>
				</td>
				 
			</tr>
		</table>
	</div>
	
	
</div> 
</body>



<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">



    
    
    window.onload = function() {
		
    	onOfFunction();
    	
    	
//     	setTimeout(function() {
// 			showRedDivId();
// 			}, 500);   	
    	
    }
    
    
	function showRedDivId(){
		$('#redDivId').show();
		$('#blueDivId').hide();
		$('#greenDivId').hide();
		setTimeout(function() {
			showBlueDivId();
			}, 1000);
	}
	
	function showBlueDivId(){
		
		$('#redDivId').hide();
		$('#blueDivId').show();
		$('#greenDivId').hide();
		
		setTimeout(function() {
			showGreenDivId();
			}, 1000);
	}
	
	
	function showGreenDivId(){
		
		$('#redDivId').hide();
		$('#blueDivId').hide();
		$('#greenDivId').show();
		
		setTimeout(function() {
			showRedDivId5Sec();
			}, 1000);
	}
	
	
	
	
	function showRedDivId5Sec(){
		$('#redDivId').show();
		$('#blueDivId').hide();
		$('#greenDivId').hide();
		setTimeout(function() {
			showBlueDivId5Sec();
			}, 5000);
	}
	
	function showBlueDivId5Sec(){
		
		$('#redDivId').hide();
		$('#blueDivId').show();
		$('#greenDivId').hide();
		
		setTimeout(function() {
			showGreenDivId5Sec();
			}, 5000);
	}
	
	
	function showGreenDivId5Sec(){
		
		$('#redDivId').hide();
		$('#blueDivId').hide();
		$('#greenDivId').show();
		
		setTimeout(function() {
			showRedDivId();
			}, 5000); 
	}
	
    
	
	
    function searchFunction() {
    	
    	var searchableWord = document.getElementById('textId').value;
    	if(!searchableWord==null || !searchableWord==''){ 
    		window.location.href = '/searchScreen?searchableWord='+searchableWord;
    	}	
    }
    
    



    function onOfFunction(){

    	$('#tdDotId0').show(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#2017Td' ).show();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide(); 
    	
    		
   		setTimeout(function() {
   			showHideSection();
   			}, 3000);	  
   	
    	
    }
        
        

    function showHideSection(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').show(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#2017Td' ).hide(); 
    	$('#2018Td').show();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide(); 
    	
		setTimeout(function() {
			showHideSection1();
			}, 3000);
    	
    }

    function showHideSection1(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').show(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).show();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide(); 
    	
		setTimeout(function() {
			showHideSection2();
			}, 3000);
    	
    }

    function showHideSection2(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').show(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).show();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide(); 
    	
		setTimeout(function() {
			showHideSection3();
			}, 3000);
    	
    }

    function showHideSection3(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').show(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').show();
    	$('#2022Td' ).hide();
    	$('#2023Td').hide(); 
    	
		setTimeout(function() {
			showHideSection4();
			}, 3000);
    	
    }

    function showHideSection4(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').show(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').hide();  

    	
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).show();
    	$('#2023Td').hide(); 
    	
		setTimeout(function() {
			showHideSection5();
			}, 3000);
    	
    }

    function showHideSection5(){
 
    	$('#tdDotId0').hide(); 
    	$('#tdDotId1').hide(); 
    	$('#tdDotId2').hide(); 
    	$('#tdDotId3').hide(); 
    	$('#tdDotId4').hide(); 
    	$('#tdDotId5').hide(); 
    	$('#tdDotId6').hide(); 
    	$('#tdDotId7').show();  

    	
    	$('#2017Td' ).hide();
    	$('#2018Td').hide();
    	$('#2019Td' ).hide();
    	$('#2020Td' ).hide();
    	$('#2021Td').hide();
    	$('#2022Td' ).hide();
    	$('#2023Td').show(); 
    	
		setTimeout(function() {
			onOfFunction(); 
			}, 3000);  
    	
    }
	
</script>
</html>