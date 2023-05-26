<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>



<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
 
	function dropDownSelect(areId){

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
					
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) { 
                alert("Status: " + textStatus); alert("Error: " + errorThrown); 
            } 
        });

		};
    
        $(document).ready(function() {
        	        	
            $('#Home').click(function ()
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
    </script>



</head>
<style>

.spacer{
  display:block;
  height:40px;
  width:100%;
  margin: 0 auto;
  content:""; 
}

.spacer2{
  display:block;
  height:100px;
  width:100%;
  margin: 0 auto;
  content:""; 
}

</style>
<body>

<div align="center" style="background-color: white; width: 100%; height: 100%">

<div class="spacer2" style="background-color:#314455">
<div class="spacer"> </div>
Hello Election Application -- This is home page

</div>


<div class="spacer2" style="background-color:#644E5B">
<div class="spacer"> </div>
Select Election Area
</div>


<!-- <div align="center" style="background-color: grey; width: 100%; height: 100%"> -->



<div class="spacer2" style="background-color:#9E5A63">
<div class="spacer"> </div>

<a href="home3"  style="width: 30%; float:left;">
<button>back</button>
</a>

<input type="submit" value = "Home" id="Home" name = "Home">
</div>

 
<div class="spacer2" style="background-color:#C96567">
<div class="spacer"> </div>
<label> All Candidates of selected area is in drop down list</label>
</div>
 
 <div class="spacer2" style="background-color:#97AABD">
<div class="spacer"> </div>
<label> Please select a candidate to see all current voters</label>
</div>


<div class="spacer" id="spacer1" style="display:none">
		Lots of data.<br> Should be flushed to the browser every now
		and then.<br> This will take seconds...<br>
	<p id="depratmentDesc1"></p>
</div>


 <div class="spacer2" style="background-color:#314455">
<div class="spacer"> </div>

<select name="myselection" id="myselection" onchange="dropDownSelect(this.value)" > 
    <option value="Select" name ="Select"  id="0">--Select--</option>
    <c:forEach  items="${candidatewithvoterList}" var="candidatewithvoter"> 
        <option value="${candidatewithvoter}"  name="${candidatewithvoter}" id= "${candidatewithvoter}">${candidatewithvoter}</option>
    </c:forEach>
</select>


</div>






<div class="spacer"></div>
<div class="spacer" id="output">...</div>
</div>

</body>


    

    
    
</html>