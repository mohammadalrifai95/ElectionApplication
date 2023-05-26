<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<%-- <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%-- <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head> 
<meta charset="windows-1256">
<title>Welcome to Election System Application</title>
</head>
<style>

.spacer0{
  display:block;
  height:10px;
  width:100%;
  margin: 0 auto;
  content:""; 
}


.spacer{
  display:block;
  height:40px;
  width:100%;
  margin: 0 auto;
  content:""; 
}
.spacer2{
  display:block;
  height:290px;
  width:100%;
  margin: 0 auto;
  content:""; 
}


  

</style>
<body>

<div align="center" style="background-color: #3B8BEB; width: 100%; height: 100%">

<div class="spacer"></div>

Welcome to Election System Application -- This is home page

<div class="spacer0"></div>

<h4>Please login below if you already have an account or register if this is a first time.</h4>

<lable style="color:red;">${errorLoginMessage}</lable>
<form action="Login">


<label>User Name:</label> <input type="text" name="userName" value="" onclick="this.value=''"/><br/><br/>  
<label>Password:</label> <input type="password" name="password"  value="" onclick="this.value=''" style="margin-left: 1%;" /><br/><br/>
<input type="submit" value = "Login" id="Login" name = "Login"> <br/><br/>
</form>
<input type="submit" value = "Next" id="NextButton" name = "NextButton"> <br/><br/>

<div class="spacer">Or</div>

<form action="register">  

<label>First Name:</label> <input type="text" name="firstName" value="" onclick="this.value=''"/><br/><br/>
<label>Last Name:</label> <input type="text" name="lastName" value="" onclick="this.value=''"/><br/><br/>
<label>Email:</label> <input type="text" name="email"  value="" onclick="this.value=''"  style="margin-left: 2.5%;"/><br/><br/>
<label>User Name:</label> <input type="text" name="userName" value="" onclick="this.value=''"/><br/><br/>  
<label>Password:</label> <input type="password" name="password"  value="" onclick="this.value=''" style="margin-left: 1%;" /><br/><br/>
<input type="submit" value="register"/>  

</form>  

<div class="spacer" id="output"></div>
<div class="spacer"></div>

</div>






</body>




<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#NextButton').click(function ()
            {
                $.ajax({
                    type: "GET",
                    url: "welcome",
                    data: {"candidateId":1},
                    contentType: "application/json",
                    success: function(msg){
//                     	alert("success");
                        $('#output').append(msg);
                        window.location.href="welcome"
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