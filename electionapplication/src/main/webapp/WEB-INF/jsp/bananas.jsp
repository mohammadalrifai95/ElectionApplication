<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %> --%>


<%@ page import="com.election.mainapp.constant.GlobalMessage_AR" %>
<%@ page import="com.election.mainapp.constant.GlobalConstant" %>
    
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/style.css" rel="stylesheet" type="text/css"></link>     

<head>
<meta charset="windows-1256">
<title>Insert title here</title>




</head>
<style>

/* body { */
/* 	background-color: black; */
/* } */


</style>
<body>
 
<!-- <header style="background-color: #9F2B00; width:100%;  color:black;">    -->
 
<!-- </header> -->
<div   style=" background-color: #00008B; width: 100%; height: 100px; " >  
	<table style="margin-left: 400px;">          
		<tr>
			<td>            
				<a href="/FreshLogo"> 
				  <img src="<c:url value="/resources/images/hLogo.jpg" />" alt="image" class="circular_image_header"/>
				</a>
			</td>
			<td>        
				<h2 style="color: white; margin-top: 20px;">
					Fresh Table Greens 
				</h2>
			</td>
		</tr>
	</table>
</div>  
  
  	<div style="border:1px solid gray; width: 100%; height:70px; background-color: white">        
		<h3 style="margin-left: 30px;">
				<ul class="menu">				
					<li><a href="#">About Us &#9660</a>
						<ul class="submenu">
							<li><a href="#">About Us</a></li>
							<li><a href="#">Corporate Sustainability</a></li>  
							<li><a href="#">Awards</a></li>  
						</ul>
					</li>


					<li><a href="#">Sustainability &#9660</a>
						<ul class="submenu">
							<li><a href="#">Sustainability</a></li>
							<li><a href="#">Alliances</a></li>  
							<li><a href="#">Certifications</a></li>  
							<li><a href="#">Health and safety during covid-19</a></li>   
						</ul>
					</li>
	
					
					<li>
						<a href="#">Products and Services &#9660</a>
						<ul class="submenu">
							<li>
								<a href="#">Premium Bananas <i class="arrow right" style="margin-left: 45px;'"></i></a> 
								<ul class="submenu2"> 
									<li><a href="#">Premium Bananas</a></li>
									<li><a href="#">Agroindustrial Sustainability of Our Bananas</a></li>								
								</ul>
							</li>
							<li><a href="#"> Premium Pineapples</a></li>
							<li>
								<a href="#">Tropical Oil <i class="arrow right" style="margin-left: 105px;'"></i> </a>
								<ul class="submenu2">
									<li><a href="#">Tropical Oil</a></li>
									<li><a href="#">Agro-industrial Sustainability of Tropical Oil</a></li>
									<li><a href="#">Identity Preserved Model</a></li>
								</ul>					
							</li>
							<li><a href="#"> Natural Ingredients</a></li>  
							<li><a href="#"> Logistics and Transportation</a></li>  
						</ul>
					</li>
					
					<li><a href="#"> News & Blogs</a></li>
					
					<li><a href="#">Our Offices &#9660</a>
						<ul class="submenu">
							<li><a href="#">Our Offices</a></li>
							<li><a href="#">Ethics Line</a></li>  
						</ul>
					</li>
				  <input id="textId" type="text" placeholder="Search.." name="search2" style="height: 30px; width: 200px;" >
				  <button id="searchButtonId" type="submit" style="width: 40px; height: 30px; background-color:  #00008B;" onclick="searchFunction()"><i class="fa fa-search" style="color: white; "></i></button>
			</ul>
		</h3>
		
	</div>			
  

<div style="margin-left: 150px;">  

<h1 style="color: red"> 
The World Banana Forum: A Venue For Improvement


</h1>

<h1>
We are

A CERTIFIED SUSTAINABLE

FOOD AND INGREDIENTS CORPORATION

</h1>



	<table style="color: #00008B;" >     
		<tr>		
			<td class="imageContainer" >
				<img src="<c:url value="/resources/images/bananas.jpg" />" alt="image" style="width: 900px; height: 350px;"/>   
			</td>
		</tr>
		<tr>
			<td>
					<p>
					The World Banana Forum: A Venue For Improvement
					The World Banana Forum has become an assembly dedicated to the improvement of the industry and the promotion of better sustainable production practices. Different stakeholders (retailers, importers, producers, exporters, associations and governments, among others) of the global banana supply chain work together based on the idea that collaboration is the key to achieving advancement.
					
					Banana Forum Mission
					The Forum’s main mission is to foster collaboration among all stakeholders for industry improvement and to build a consensus on the implementation of good practices in labor, equity, environmental impact, sustainable production and economics.
					
					Banana Forum Commissions
					The Forum consists of 3 commissions:
					
					Sustainable Production Systems with Environmental Impact (CT01): This commission addresses the main challenges of banana production in order to develop a path to improvement in the environmental sustainability of production systems. The four specific issues on which this commission works are tropical Fusarium Race 4, agroecological practices and water management, the carbon footprint, and sustainable agricultural practices.
					Work Commission on Value Distribution (CT02): This group works to achieve a fair value distribution in the supply chain through the development of a basic study, based on the Anker model, of the methodologies available to implement living wages. 
					Labor Rights (CT03): This advisory body focuses on the rights of employees and works together with the FAO and the International Labor Organization. Its work concentrates on three main areas: freedom of association and collective bargaining, health and safety, and gender equality.
					Commitment to employees
					AgroAmerica is committed to the fair treatment of our employees and contributing to their well-being and thus are part of the Working Commission on Value Distribution of the World Banana Forum. The Living Wages for Life initiative seeks to provide economic sustainability by establishing benchmarks for living wages in the industry.
				</p>
			</td>
		</tr>
		<tr>
			<td class="imageContainer" >
				<a href="/"> 
					<img src="<c:url value="/resources/images/backbuttonimage.jpg" />" alt="image" />
				</a>
			</td>
	</tr>
	</table>
	

</div>





</body>




<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

	window.onload = function() {
 	
// 		alert("little of us screen");
 
	}// end of window.onload ---------------------------------------------------------------


    function searchFunction() {
//     	alert("little of us screen");
//     	alert("searchFunction");
    	var searchableWord = document.getElementById('textId').value;
//     	alert(searchableWord ); 
    	if(!searchableWord==null || !searchableWord==''){ 
    		window.location.href = '/searchScreen?searchableWord='+searchableWord;
    	}
    	
    }
    </script>

    
    
</html>