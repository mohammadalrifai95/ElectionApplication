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
  .circular_image {
  width: 300px;
  height: 300px;
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
.circular_image img{
  width:100%;
}

.imageContainer > img:hover {
  width: 400px;
  height: 400px;  
}

</style>
<body>
 
<header style="background-color: #9F2B00; width:100%;  color:black;">   
 
</header>
  
 

<div style="margin-left: 450px;"> 

	<table style="border-spacing: 50px; margin-bottom: 500px; color: #00008B;" >    
		<tr>		
			<td class="imageContainer" >
				<img src="<c:url value="/resources/images/wheat-and-diabetes.jpg" />" alt="image" class="circular_image"/>
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

 
    </script>

    
    
</html>