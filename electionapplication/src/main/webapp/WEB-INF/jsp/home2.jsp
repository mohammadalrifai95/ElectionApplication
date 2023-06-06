<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %> --%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>




</head>
<style>

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
/*   padding: 15px 32px; */
  text-align: center;
/*   text-decoration: none; */
/*   display: inline-block; */
/*   font-size: 16px; */
/*   margin: 4px 2px; */
  cursor: pointer;
  width: 110px; 
/*   margin-left: 190px; */
	}




ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #9F2B00;
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

<ul>
  <li><a class="active" href="/home2">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="/contactUs">Contact</a></li>
  <li style="float:right"><a href="#about">About</a></li>
  <li style="float:right"><a href="/">Logout</a></li>
</ul>

<header 
	style="background-color: white; color:blue; text-align: center; vertical-align: middle; line-height: 90px;">
	 Hello Election Application  
	
</header>


<div><!-- ----------------------------------MAIN DIV STARTS---------------------------------- -->
	<div>
		<h2>Election</h2>


			<div class="box" style="width: 400px;">
				<h2><label style="padding-right: 5px; color:black;">Select City:</label></h2>
				<div id="display2letter" style="background-color: white; margin-top: 1px;">
					<select id="div_parent_child1_select1" style="width:200px; " class="input">
						<option>Amman </option>
						<option>Irbid</option>
						<option>Zarqa</option>
						<option>Mafraq</option>
						<option>Ajloun</option>
						<option>Jerash</option>
						<option> Madaba</option>
						<option>Balqa</option>
						<option>Karak </option>
						<option>Tafileh </option>
						<option>Maan</option>
						<option>Aqaba</option>
						 
					</select>
				</div>
				<div id="one">
				</div>
			</div>
    
      
		<div class="box" style="width: 400px;">
			<h2><label style="padding-right: 5px; color:black;">Select Area:</label></h2>
			<div id="display2letter" style="background-color: white; margin-top: 1px;">
				<select id="div_parent_child1_select1" style="width:200px; " class="input">
					<option>علي  الرفاعي</option>
					<option>محمد علي الرفاعي</option>
					<option>عبد الله علي الرفاعي</option>
					<option>ابراهيم علي الرفاعي</option>
					<option>عمر علي الرفاعي</option>
				</select>
			</div>
			<div id="one">
			</div>
		</div>
    
      
		<div class="box" style="width: 200px;">
			<h2><label style="padding-right: 5px; color:black;">Select Candidate:</label></h2>
			<div id="display2letter" style="background-color: white; margin-top: 1px;">
				<select id="div_parent_child1_select1" style="width:200px; " class="input">
					<option>علي  الرفاعي</option>
					<option>محمد علي الرفاعي</option>
					<option>عبد الله علي الرفاعي</option>
					<option>ابراهيم علي الرفاعي</option>
					<option>عمر علي الرفاعي</option>
				</select>
			</div>
			<div id="one">
			</div>
		</div>
	</div>
	
	

	<div  style="width: 200px; height: 50px; margin-top: 400px;">
		<div class="box" >
			 <a href="/"> <button class="inputButton" >back</button> </a>
		</div>
		          
		<div   style="width: 400px; margin-left: 900px">
			<input type="submit" value = "Next" id="Next" name = "Next" class="inputButton" >
		</div>	
	</div>

</div><!-- ----------------------------------MAIN DIV ENDS---------------------------------- -->





<!-- <h1>Select Election Area</h1> -->

<!-- <select name="myselection" id="myselection" onchange="dropDownSelect(this.value)" >  -->
<!--     <option value="Select" name ="Select"  id="0">--Select--</option> -->
<%--     <c:forEach  items="${listAreaData}" var="areaData">  --%>
<%--         <option value="${areaData.description}"  name="${areaData.id}" id= "${areaData.id}">${areaData.description}</option> --%>
<%--     </c:forEach> --%>
<!-- </select> -->


<!-- <div class="spacer"></div> -->


<!-- <a href="/"  style="width: 30%; float:left;"> -->
<!-- <button>back</button> -->
<!-- </a> -->




<!-- <input type="submit" value = "Next" id="Next" name = "Next"> -->

<!-- <div class="spacer"></div><div class="spacer"></div> -->

 




</body>




<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
 
	function dropDownSelect(areaData){
		alert(areaData);
		$('#spacer1').show();
		document.getElementById('spacer1').innerHTML = areaData;
 		//document.getElementById("spacer1").style.visibility = 'visible';
		};
    
        $(document).ready(function() {
        	        	
            $('#Next').click(function ()
            {
                $.ajax({
                    type: "GET",
                    url: "welcome",
                    data: {"candidateId":1},
                    contentType: "application/json",
                    success: function(msg){
                    	alert("success");
                        $('#output').append(msg);
                        window.location.href="home3";
//                      window.location.href="home3";
//                         window.location.href="/";
//                         window.location.href="welcome";
//                         window.location.href = '/JspControllerHandler?employee='+ JSON.stringify(emp); // redirect     //this would be GET
//                         window.location(url); 
                    },
                    error: function(XMLHttpRequest, textStatus, errorThrown) { 
                        alert("Status: " + textStatus); alert("Error: " + errorThrown); 
                    } 
                });
            });
        });
    </script>


    

    
    
</html>