<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="windows-1256">
<title>Insert title here</title>

<style type="text/css">

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #04AA6D;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}

.active {
  background-color: #04AA6D;
  
}
.dotstyle{
    content: "\00B7";
}



</style>
</head>

<body>
<ul style="width: 250px;">
	<li style="margin-bottom: 20px; ">
		<a class="active" style="" href="/login?alredyLoggedin=Yes" >
			Home
		</a>
	</li>

	<li><a href="/candidateinformation?viewName=home2" id="selectCityLi">How to become a Candidate</a></li>
	<li><a href="/candidacyconditions">Add New Candidate</a></li>
	<li><a href="/contactUs">Candidate/Voter</a></li>
	<li><a href="/news">News</a></li>
	<c:if test="${role == 'ROLE_ADMIN'}">
        <li><a href="/admin">Admin</a></li> 
    </c:if>	
	
	 <li style="width: 200px; height: 30px; margin-top: 430px; background-color: black;">   	 
			<c:choose>
					<c:when test="${PreviousPage == 'home2'}"> 
			 		<a href="/login?alredyLoggedin=Yes" class="active" style="background-color: black" class="active">Back</a> 
	   			 </c:when>
	   			 <c:otherwise>
			 		<a href="/previousPage" class="active" style="background-color: black">Back</a>
	   			 </c:otherwise> 
			</c:choose>
	</li>
</ul>
<div   style="margin: auto;  border: 3px solid #73AD21; padding: 1px;background-color: #679FAB; width: 100%; height: 10%; text-align: center;" >
  <h3 >Welcome to the Election System app - this is the login page</h3>
<!--   		<select name="language" id="language" style="margin-right: 1100px;  width: 180px; font-size: 18px;" onchange="dropDownSelect(this.value)" > -->
<!-- 		  <option value="">Select Language</option> -->
<!-- 		  <option value="English">English</option> -->
<!-- 		  <option value="Arabic">العربية</option> -->
<!-- 		</select>   -->
</div>



<div id="parantDiv" style="margin-left: 300px; margin-top: 50px;"> 
		<c:choose>
   			 <c:when test="${Language=='Arabic'}"> 
				<div>
						شروط الترشح التي نص عليها القانون:
						<br />
						يشترط فيمن يترشح لعضوية مجلس النواب  حسب المادة  (10)  ما يلي :
						<br /><br /><br /><br />
						أن يكون أردنيا منذ عشر سنوات على الاقل
						<br />
						أن يكون قد اتم ثلاثين سنة شمسية من عمره في يوم الاقتراع
						<br />
						أن لا يكون محكوما عليه بالإفلاس ولم يستعد اعتباره قانونيا
						<br />
						أن لا يكون محجورا عليه ولم يرفع الحجر عنه
						<br />
						أن لا يكون محكوما عليه بالسجن مدة تزيد على سنة واحدة بجريمة غير سياسية ولم يعف عنه
						<br />
						أن لا يكون مجنونا او معتوها
						<br />
						أن لا يكون من اقارب الملك في الدرجة التي تعين بقانون خاص
						<br />
						أن لا يكون متعاقدا مع الحكومة او المؤسسات الرسمية العامة او الشركات التي تملكها او تسيطر عليها الحكومة او اي مؤسسة رسمية عامة سواء كان هذا التعاقد بطريقة مباشرة او غير مباشرة باستثناء ما كان من عقود استئجار الاراضي والاملاك ومن كان مساهما في شركة اعضاؤها اكثر من عشرة اشخاص
						<br />
				</div>
    	</c:when>    
   		 <c:otherwise>
				<div>
<!-- 				• • = alt key + 0149 -->
					<h1>Candidacy requirements stipulated by law:</h1>   
					
					<h3>A candidate for membership in the House of Representatives, according to Article (10), shall meet the following:</h3> 
					<br />
					<span style="font-size: 22px; margin-right: 10px;">•</span> To be Jordanian for at least ten years
					<br />
					<span style="font-size: 22px; margin-right: 10px;">•</span> He must have completed thirty solar years of his age on polling day
					<br />
					<span style="font-size: 22px; margin-right: 10px;">•</span>He must not have been convicted of bankruptcy and has not regained his legal status
					<br />
					<span style="font-size: 22px; margin-right: 10px;">•</span>That he is not interdicted and the interdiction has not been lifted from him
					<br />
					<span style="font-size: 22px; margin-right: 10px;">•</span>He must not have been sentenced to imprisonment for a period exceeding one year for a non-political crime and has not been pardoned
					<br />
					<span style="font-size: 22px; margin-right: 10px;">•</span>Not to be crazy or imbecile
					<br />
					<span style="font-size: 22px; margin-right: 10px;">•</span>He should not be a relative of the King to the degree specified by a special law
					<br />
					<span style="font-size: 22px; margin-right: 10px;">•</span>He should not be contracting with the government, public official institutions, companies owned or controlled by the government, or any public official
					<span style="margin-left: 20px;">institution, whether this contract is direct or indirect, with the exception of land and property lease contracts and whoever is a shareholder</span><br />     
					<span style="margin-left: 20px;">in a company whose members are more than ten people.</span>  
					<br />
 
				</div>
	    </c:otherwise>
	</c:choose>
</div>



</body>
</html>