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


.spacer{
  display:block;
  height:40px;
  width:100%;
  margin: 0 auto;
  content:""; 
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
	
   #circle {
      width: 75px;
      height: 30px;
      webkit-border-radius: 25px;
      moz-border-radius: 25px;
      border-radius: 25px;
background: #b9f2ff; 
      background: black;
text-decoration: underline overline;
	  border-bottom: 1px solid #000;
	  color: white;
    }	
	
   .circle {
      width: 75px;
      height: 30px;
      webkit-border-radius: 25px;
      moz-border-radius: 25px;
      border-radius: 25px;
background: #b9f2ff;
      background: black;
text-decoration: underline overline;         
	  border-bottom: 1px solid #000;
	  color: white;
	  margin-left: 20px;
    }	
	
  
  
  

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
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
    margin:60px;
}




input{
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
  text-align: right;
  width: 400px;
  line-height: 26px;
  margin-bottom: 10px;
}

label  {
  height: 20px;
  flex: 0 0 200px;
  margin-left: 10px;
}
</style>
<body>

<!-- <div   style="background-color: #6CC417; width: 100%; height: 80%" > -->
<div   style="margin: auto;  border: 3px solid #73AD21; padding: 1px;background-color: #9F2B00; width: 100%; height: 5%; text-align: center;" >
  <h3>مرحبًا بك في تطبيق نظام الانتخابات - هذه هي صفحة تسجيل الدخول</h3>
		<label  style="margin-left: 1150px;">  
			<select name="language" id="language"  onchange="dropDownSelect(this.value)" style=" width: 180px; font-size: 18px;">
			  <option value="">اختر اللغة</option>
			  <option value="Arabic">العربية</option>
			  <option value="English">English</option>
			</select>
		</label>
</div>




<div class='parent' id="englishDiv" style="height:auto;"> 

	<div class='child' style=" border : none !important; margin-right: 200px;" >
		<a href="#"> هل نسيت اسم المستخدم؟</a> <a href="#" style="margin-left: 20px;">هل نسيت كلمة السر؟</a>
		
		<br class="verticalSpace">
		<a href="#">الإبلاغ عن الاحتيال في التسجيل</a>
		<br class="verticalSpace">
		<a href="#">الوصول السريع</a>
		<br class="verticalSpace">
		<a href="#">تحتاج مساعدة؟</a>
		<br class="verticalSpace">
		<a href="#"></a>
		<a href="#"></a>
		<a href="#"></a>
	</div><!----------------------------- end of div child-->



	<div class='child'>
	
	<span id="errorLoginMessage" style="color:red;">${errorLoginMessage}</span>
	<span id="loginMessage" style="color:red;"></span>
	<div id="loginMessage2" style="color:blue;"><h2></h2></div>
	
	<!-- -----------------------------------------Login Part------------------------------------------------------------------------------------------------------------------- -->
	
		<div id="loginDiv" style="margin-top: 20px;">
			<form action="Login">
				<label class="label">اسم المستخدم:</label>
				 <label class="label"><input class="input" type="text" name="userName"  id="userName" value="" /></label>
				 <label class="label"> كلمة المرور:</label> 
				 <label class="label"><input class="input" type="password" name="password"  id="password" value=""  style="margin-left: 1%;" dir="rtl"/></label> 
				 <label class="label"><button  type="submit"  id="Login" name="Login" class="button" dir="rtl" >تسجيل الدخول</button></label> 
			</form>
			<br class="verticalSpace">
		</div>
	
		<span id="errorRegistMessage" style="color:blue;">${errorRegistMessage}</span>
	<!-- -----------------------------------------Registration Part------------------------------------------------------------------------------------------------------------------- -->
		<div id="registDiv" style="display:none">
		
				<h2>يرجى ملء الحقول أدناه للتسجيل.</h2>
				<label class="label">الاسم الأول:</label>
				<label class="label"><input type="text" id="firstName" name="firstName" value=""  class="input"/></label> 
				<label class="label">اسم العائلة:</label>
				<label class="label"><input type="text" id="lastName"  name="lastName" value=""  class="input"/></label> 
				<label class="label">رقم الهاتف:</label>
				<label class="label"><input type="text" id="mobile" name="mobile" value=""  class="input"/></label> 
				<label class="label">البريد الإلكتروني:</label>
				<label class="label"><input type="text" id="email"   name="email"  value=""    class="input"/></label> 
				<label class="label">اسم المستخدم:</label>
				<label class="label"><input type="text" id="userNameRegs"  name="userName" value=""  class="input"/></label> 
				  <label class="label">كلمة المرور:</label>
				<label class="label"><input type="password" id="passwordRegs" name="password"  value=""   class="input"/></label> 
				<label class="label"><button class="button"  type="submit"  onclick="userRegistration(1)">تسجيل</button></label>  
			</div>
			
			<br class="verticalSpace">
			<div id="barLogin">
				  <span style="pointer-events: none; opacity: 0.7; font-size: 18px;">هل أنت عضو بالفعل؟</span>
				  <br />
				 <button type="submit" name = "Login" style="background: none!important; border: none; padding: 0!important;font-family: arial, sans-serif;color: #069; text-decoration: underline; cursor: pointer; font-size: 18px;" onclick="redirectLoginPage(1)">تسجيل الدخول</button>
			</div>	
	
			<div id="barRegist" >
				 <input   type="submit" value = "أفتح حساب الأن" name = "Register" style="background: none!important; border: none; padding: 0!important;font-family: arial, sans-serif;color: #069; text-decoration: underline; cursor: pointer; font-size: 18px;" onclick="ShowRegistDiv(1)">
			</div>	 
			<br class="verticalSpace">
	</div><!----------------------------- end of div child-->


</div><!----------------------------- end of div parent English Version-->
</body>




<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
    
    window.onload = function() {
    	$("#barLogin").hide();
    	$('#registDiv').hide();
//     	$('#errorLoginMessage').hide();
		
// 	    $('#arabicDiv').show();
//     	$('#englishDiv').hide();

//     	$('#arabicDiv').hide();
//     	$('#englishDiv').show(); 
		
    }

    
    
    
    function ShowRegistDiv(areId){
    	//alert("Registed clisked");
    	$('#registDiv').show();
    	$('#loginDiv').hide();
    	$('#barLogin').show();
    	$('#barRegist').hide();
    	$('#errorLoginMessage').hide();
    	
    	
    	document.getElementById('firstName').value = '';
    	document.getElementById('lastName').value = '';
    	document.getElementById('email').value = '';
    	document.getElementById('userNameRegs').value = '';
    	document.getElementById('passwordRegs').value = '';
     	//document.getElementById('mobile').value;
    	
    	
    };
    
    function redirectLoginPage(areId){
    	//alert("Login clicked");
    	$('#errorRegistMessage').hide();
    	$('#registDiv').hide();
    	$('#barRegist').show();
    	$('#barLogin').hide();
    	$('#loginDiv').show();
    	
    }
    
    
    
    function userRegistration(areId){
    	//alert("Register submit clicked");
    	
    	var firstName = document.getElementById('firstName').value;
    	var lastName = document.getElementById('lastName').value;
    	var email = document.getElementById('email').value;
    	var userName = document.getElementById('userNameRegs').value;
    	var password = document.getElementById('passwordRegs').value;
    	var mobile = document.getElementById('mobile').value;
//     	alert("firstName = " +  firstName);
    	
        $.ajax({
            type: "GET",
            url: "userRegistration",
            data: {"firstName":firstName, "lastName":lastName, "email":email, "password":password, "userName":userName, "mobile":mobile },
            contentType: "application/json",
            success: function(messageList){
            	alert(messageList[0]);
            	if(messageList[0]=="Failed_Registration"){
    				$('#errorLoginMessage').hide();
    				$('#errorRegistMessage').html(messageList[1]);
                	$('#loginDiv').hide();
                	$('#registDiv').show();            		
            	}else{
            		alert("else");
                	$('#loginDiv').show();
                	$('#registDiv').hide();
//                 	$('#errorRegistMessage').hide();
                	$('#userName').val(messageList[0]);
                    $('#password').val(messageList[1]);
//                     $('#loginMessage').show();
//                     $('#loginMessage2').show();
//                     $('#loginMessage').html(messageList[2]);
                    $('#loginMessage2').html(messageList[2]);
//                     $('#loginMessage').show();
//                     $('#loginMessage2').show();
//                     $('#errorRegistMessage').html(messageList[2]);
                	
            	}

            	
					//window.location.href="welcome"
					//window.location.href = '/JspControllerHandler?employee='+ JSON.stringify(emp); // redirect     //this would be GET
					// window.location(url);
				},
				error : function(XMLHttpRequest, textStatus,
						errorThrown) {
					alert("Status: " + textStatus);
					alert("Error: " + errorThrown);
				}

			});

		}

				$(document).ready(function() {
					$('#NextButton').click(function() {
							$.ajax({
									type : "GET",
									url : "welcome",
									data : {"candidateId" : 1},
									contentType : "application/json",
									success : function(msg) {
										//                     	alert("success");
										$('#output').append(msg);
										window.location.href = "welcome"
										//window.location.href = '/JspControllerHandler?employee='+ JSON.stringify(emp); // redirect     //this would be GET
										//window.location(url); 

									},
									error : function(
											XMLHttpRequest,
											textStatus,
											errorThrown) {
										alert("Status: "
												+ textStatus);
										alert("Error: "
												+ errorThrown);
									}

								});
							});

							});
				
				
				
				
				
				function dropDownSelect(selectedLanguage){
						window.location.href = '/languageChanged?selectedLanguage='+selectedLanguage;	
					};				
				
				</script>
</html>