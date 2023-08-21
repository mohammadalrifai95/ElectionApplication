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
	padding-right: 15px;  
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
									<li><a href="#">HTML</a></li>
									<li><a href="#">CSS</a></li>
									<li><a href="#">JS</a></li>
								
								</ul>
							</li>
							<li><a href="#"> Premium Pineapples</a></li>
							<li>
								<a href="#">Tropical Oil <i class="arrow right" style="margin-left: 105px;'"></i> </a>
								<ul class="submenu2">
									<li><a href="#">HTML2</a></li>
									<li><a href="#">CSS2</a></li>
									<li><a href="#">JS2</a></li>
									<li><a href="#">JQuery</a></li>
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
					
					
					
				</ul>
		</h3>
	</div>			
 
</body>



<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
    
    window.onload = function() {
//     	alert("Business home");    
 
		
    }
				
</script>
</html>