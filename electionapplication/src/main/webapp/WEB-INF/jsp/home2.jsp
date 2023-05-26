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



</head>
<style>

.spacer{
  display:block;
  height:100px;
  width:100%;
  margin: 0 auto;
  content:""; 
}

</style>
<body>

<div align="center" style="background-color: #61892F; width: 100%; height: 100%">

<br \><br \><br \>	

Hello Election Application -- This is home page


<h1>Select Election Area</h1>

<select name="myselection" id="myselection" onchange="dropDownSelect(this.value)" > 
    <option value="Select" name ="Select"  id="0">--Select--</option>
    <c:forEach  items="${listAreaData}" var="areaData"> 
        <option value="${areaData.description}"  name="${areaData.id}" id= "${areaData.id}">${areaData.description}</option>
    </c:forEach>
</select>


<div class="spacer"></div>


<a href="/"  style="width: 30%; float:left;">
<button>back</button>
</a>




<input type="submit" value = "Next" id="Next" name = "Next">

<div class="spacer"></div><div class="spacer"></div>

<div class="spacer" id="spacer1" style="display:none">

		Lots of data.<br> Should be flushed to the browser every now
		and then.<br> This will take seconds...<br>
	<p id="depratmentDesc1"></p>
</div>



<div class="spacer" id="output">...</div>
</div>

</body>




    

    
    
</html>