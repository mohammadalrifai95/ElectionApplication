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






ul { padding:0; margin:0; list-style-type: none; margin: 0; padding: 0; background-color: white; width: 1500px; }
li { list-style:none; float: left; padding-right: 100px; padding-bottom:50px; font-size: 30px;     
display: none; list-style-type: none; /* position: absolute; left: 0; right: 0; */ margin-left: auto; margin-right: auto; text-align: center; z-index: 99; opacity: 0.8; background-color: #000;
}
li > ul { display: none; }
li:hover > ul { display: block; }
.lvl1 li { margin-right: 30px; display: inline; position:relative; }
.lvl2 {   position: relative; }
.lvl2 li { position: relative;  padding-right: 500px;}
.lvl3 { position: absolute; top:0px; left: 100px; }
 

 
</style>
<body> 
<div id="nav"  style="width: 1500px;  background-color: lightgray; height: 200px; border:10px solid black;" >   
   <ul class='lvl1' >
        <li ><a href="#">About Us</a>
              <ul class='lvl2'>
                  <li><a href="#">About Us</a></li> 
                  <li><a href="#">Corporate Sustainability</a></li>
                  <li><a href="#">Awards</a></li> 
             </ul>
        </li>
        <li ><a href="#">About Us</a>
              <ul class='lvl2'>
                  <li><a href="#">aaaaa</a></li>
                  <li><a href="#">bbbbb</a>
                       <ul class='lvl3'>
                           <li>xxxxx</li>
                           <li>yyyyy</li>
                       </ul>
                  </li>
             </ul>
        </li>
        <li><a href="#">ttttt</a></li>
<!--         <li><a href="#">uuuuu</a></li>    -->
<!--         <li><a href="#">uuuuu</a></li>    -->
<!--         <li><a href="#">uuuuu</a></li>    -->
        
         <li ><a href="#">ssss</a>
              <ul class='lvl2'>
                  <li><a href="#">aaaaa</a></li>
                  <li><a href="#">bbbbb</a>
                       <ul class='lvl3'>
                           <li>xxxxx</li>
                           <li>yyyyy</li>
                       </ul>
                  </li>
             </ul>
        </li>        
     </ul>                                                           
</div>


 
</body>



<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
    
    window.onload = function() {
//     	alert("Business home");    
 
		
    }
				
</script>
</html>