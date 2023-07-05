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

.spacer{
  display:block;
  height:100px;
  width:100%;
  margin: 0 auto;
  content:""; 
}



body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}













.search_categories{
  font-size: 13px;
  padding: 10px 8px 10px 14px;
  background: #fff;
  border: 1px solid #ccc;
  border-radius: 6px;
  overflow: hidden;
  position: relative;
}

.search_categories .select{
  width: 120%;
  background:url('arrow.png') no-repeat;
  background-position:80% center;
}

.search_categories .select select{
  background: transparent;
  line-height: 1;
  border: 0;
  padding: 0;
  border-radius: 0;
  width: 120%;
  position: relative;
  z-index: 10;
  font-size: 1em;
}
</style>
<body>
<div class="navbar">
  <a href="#home">Home</a>
  <a href="#news">News</a>
	  <div class="dropdown">
	<!--   arrow   &#9660 -->
	    <button class="dropbtn">Dropdown &#9660
	      <i class="fa fa-caret-down"></i>
	    </button>
	    <div class="dropdown-content">
	      <a href="#">Link 1</a>
	      <a href="#">Link 2</a>
	      <a href="#">Link 3</a>
	    </div>
	  </div> 
	  <div class="dropdown">
	    <button class="dropbtn">Dropdown &#9660
	      <i class="fa fa-caret-down"></i>
	    </button>
	    <div class="dropdown-content">
	      <a href="#">Link 1</a>
	      <a href="#">Link 2</a>
	      <a href="#">Link 3</a>
	    </div>
	  </div> 
	  <div class="dropdown">
	    <button class="dropbtn">Dropdown &#9660
	      <i class="fa fa-caret-down"></i>
	    </button>
	    <div class="dropdown-content">
	      <a href="#">Link 1</a>
	      <a href="#">Link 2</a>
	      <a href="#">Link 3</a>
	    </div>
	  </div> 
</div>
<div align="center" style="background-color: #EDEADE; width: 100%; height: 100%">

<div class="spacer"></div>

<h2>Hello Election Application -- This is home page</h2> 
<h2>مرحبًا بتطبيق الانتخابات - هذه هي الصفحة الرئيسية الثالثة</h2>
<div class="spacer"></div>

<h1>Select Election Area</h1>
<div style="width:250px; height:20px; font-size: 13px; padding: 5px 4px 5px 5px; background: #fff; border: 1px solid #ccc; border-radius: 6px; overflow: hidden; position: relative;">
	<select name="myselection" id="myselection" onchange="dropDownSelect(this.value)"  style="width: 240px; height:25px; border: 5px solid #ccc; border-color : green ; border-style : solid ; border : 0"> 
	    <option value="Select" name ="Select"  id="0">--Select--</option>
	    <c:forEach  items="${listAreaData}" var="areaData"> 
	        <option value="${areaData.id}"  name="${areaData.id}" id= "${areaData.id}">${areaData.description}</option>
	    </c:forEach>
	</select>
	</div>

<div id="candidatechangedependsonarea">

</div>

<div class="spacer"></div>

<div class="spacer" id="spacer1" style="display:none">

		Lots of data.<br> Should be flushed to the browser every now
		and then.<br> This will take seconds...<br>
	<p id="depratmentDesc1"></p>
</div>

<!-- <a href="login?id=17&name=fred"  style="width: 30%; float:left;"> -->
<a href="home2"  style="width: 30%; float:left;">
<button>back</button>
</a>
<!-- <a href="/myapp/somecontroller.php?id=17&name=fred">Save</a> -->

<input type="submit" value = "Home" id="home" name = "home">
<input type="submit" value = "Next" id="Next" name = "Next" onclick="NextButtonClicked(1)">  
<!-- <input type="submit" value = "Candidates" id="Candidates" name = "Candidates"> -->

<div class="spacer"></div>
<div class="spacer"></div>



<!-- <select name="myselection" id="myselection" onchange="dropDownSelect(this.value)" >  -->
<!--     <option value="Select" name ="Select"  id="0">--Select--</option> -->
<%--     <c:forEach  items="${candidatewithvoterList}" var="candidatewithvoter">  --%>
<%--         <option value="${candidatewithvoter}"  name="${candidatewithvoter}" id= "${candidatewithvoter}">${candidatewithvoter}</option> --%>
<%--     </c:forEach> --%>
<!-- </select> -->


<div class="search_categories" style="width: 250px;">
    <div class="select" style="width: 200px; margin-left: -40px"> 
       <select name="search_categories" id="search_categories">
          <option value="1" selected="selected">Happy</option>
          <option value="2">Great</option>
          <option value="3">Nice Solution</option>
          <option value="4">Awesome</option>
        </select>
     </div>
 </div>


<div class="spacer"></div>
<div class="spacer" id="output">...</div>
</div>

</body>




    

    


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
 
	function dropDownSelect(areId){

		alert("areId = "+ areId);
		$('#spacer1').show();
		document.getElementById('spacer1').innerHTML = areId;
    	$.ajax({
            type: "GET",
            url: "getCandidateByAre", 
            data: {"areId":areId},
            contentType: "application/json",
            success: function(msg){
            	alert("success 123");
            	alert(msg);
//             	document.getElementById('depratmentDesc1').innerHTML = msg;
					document.getElementById('spacer1').innerHTML = msg;
//                 $("#spacer1").html(msg);
//                 $('#output').append(msg);
// 					window.location.href="getCandidateByAreaId";
					window.location.href = '/getCandidateByAreaId?areId='+ areId; // redirect     //this would be GET
// 					window.location.href = "candidate.jsp";
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) { 
                alert("Status: " + textStatus); alert("Error: " + errorThrown); 
            } 
        });

		};
    
        $(document).ready(function() {
        	        	
            $('#home').click(function ()
            {
            	$.ajax({
                    type: "GET",
                    url: "welcome",
                    data: {"candidateId":1},
                    contentType: "application/json",
                    success: function(msg){
                    	alert("success");
                        $('#output').append(msg);
//                      window.location.href="home3";
                        window.location.href="/";
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
        
        
        
        
        
        
        
        
        
        
        
    	function NextButtonClicked(areId){
		alert(areId +" " +areId +" " +areId +" " );
    		$('#spacer1').show();
    		document.getElementById('spacer1').innerHTML = areId;
        	$.ajax({
                type: "GET",
                url: "getCandidateByAreaId", 
                data: {"areId":areId},
                contentType: "application/json",
                success: function(msg){
                	alert("success 123");
                	//alert(msg); 
//                 	document.getElementById('depratmentDesc1').innerHTML = msg;
    					//document.getElementById('spacer1').innerHTML = msg;
//                     $("#spacer1").html(msg);
//                     $('#output').append(msg);
//     					window.location.href="getCandidateByAreaId";
    					window.location.href = '/getCandidateByAreaId?areId='+ areId; // redirect     //this would be GET
//     					window.location.href = "candidate.jsp";
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) { 
                    alert("Status: " + textStatus); alert("Error: " + errorThrown); 
                } 
            });

    		};
    </script>    
</html>