<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.election.mainapp.constant.GlobalMessage_AR" %>
<%@ page import="com.election.mainapp.constant.GlobalConstant" %>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
<style type="text/css">
.centerDiv {
  border: 5px solid;
  margin: auto;
  width: 50%;
  padding: 10px;
}



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

</style>
</head>
<body>
<ul style="width: 200px;">
	<li style="margin-bottom: 50px; ">
		<a class="active" style="" href="/login?alredyLoggedin=Yes" >
			Home
		</a>
	</li>
	 <li style="width: 200px; height: 30px; margin-top: 490px; background-color: black;">   	 
			<c:choose>
					<c:when test="${PreviousPage == 'home2'}"> 
			 		<a href="/login?alredyLoggedin=Yes" class="active" style="background-color: black" class="active">Back</a> 
	   			 </c:when>
	   			 <c:otherwise>
			 		<a href="/login?alredyLoggedin=Yes" class="active" style="background-color: black">Back</a>
	   			 </c:otherwise> 
			</c:choose>
	</li>
</ul>
<header style="background-color: #9F2B00; width:100%;  color:black;">   
    <h2 style="margin-left: 600px;"> ${ GlobalMessage_AR.WELCOME_MESG_AR}</h2>    
    <br />
 	<h2 style="margin-left: 600px;">Current News</h2>           
</header>

<div style="background: red; width: 600px; height: 300px; " id="redDivId" class="centerDiv" > 

	<span style="float: right">الأردن: خفض سن الترشح لمجلس النواب إلى 25 عامًا</span>   
	<br />
	  
	<span style="float: right">عمان العربي الجديد 04 يناير 2022</span>   
	<br /><br /><br />
	<span style="float: right">
	خفض مجلس النواب الأردني سن الترشح إلى مجلس النواب إلى 25 عامًا بدلًا من 30 عامًا، بعد تعديل المادة (70) من الدستور الحالي. ووافق المجلس، خلال مناقشة مشروع تعديل الدستور الأردني، اليوم الثلاثاء، على تحديد مدة رئاسة مجلس النواب بسنة واحدة بدلا عن سنتين، بالإضافة إلى منح النواب حق إقالة رئيسهم بقرار يصدر عن ثلثي الأعضاء، ومعالجة حالات شغور منصب رئيس المجلس، سواء أكان ذلك بالاستقالة أم الموت أم الإقالة، أم لأي سبب آخر. وبموجب التعديل، "يتولى نائب الرئيس رئاسة المجلس لحين انتخاب رئيس جديد خلال مدة أسبوعين من تاريخ شغور المنصب، أما إذا كان المجلس غير منعقد فيدعى للانعقاد في دورة استثنائية ينتخب فيها رئيسا له، لاستكمال المدة المتبقية لرئاسة المجلس، فضلا عن اعتبار استقالة رئيس مجلس النواب من منصبه نافذة من تاريخ إيداعها لدى الأمانة العامة للمجلس 
	</span>

</div>


<div style="background: lightgray; width: 600px; height: 300px; " id="blueDivId" class="centerDiv" > 

	<span style="float: left">Jordan: Lowering the age to run for parliament to 25</span>
	<br />
	
	<span style="float: left">The New Arab Amman January 04, 2022</span>
	<br /><br /><br />
	<span style="float: left">
	The Jordanian Parliament lowered the age for candidacy for Parliament to 25 years instead of 30 years, after amending Article (70) of the current constitution. During the discussion of the draft amendment to the Jordanian constitution, today, Tuesday, the parliament agreed to limit the term of the presidency of the parliament to one year instead of two years, in addition to granting the deputies the right to dismiss their speaker by a decision issued by two-thirds of the members, and to deal with cases of vacancy in the position of the speaker of the parliament, whether by resignation or Death, dismissal, or any other reason. According to the amendment, “the vice-president assumes the presidency of the Council until a new speaker is elected within a period of two weeks from the date of the position becoming vacant, but if the Council is not in session, then he is called to convene in an extraordinary session in which he elects a speaker for it, to complete the remaining term of the presidency of the Council, in addition to considering the resignation of the Speaker of the House of Representatives.” From his position, it is effective from the date of its deposit with the General Secretariat of the Council
	</span>

</div>
 
<div style="background: gray; width: 600px; height: 300px; " id="greenDivId" class="centerDiv" > 

	<span style="float: left">Jordan: Lowering the age to run for parliament to 25</span>
	<br />
	
	<span style="float: left">The New Arab Amman January 04, 2022</span>
	<br /><br /><br />
	<span style="float: left">
	The Jordanian Parliament lowered the age for candidacy for Parliament to 25 years instead of 30 years, after amending Article (70) of the current constitution. During the discussion of the draft amendment to the Jordanian constitution, today, Tuesday, the parliament agreed to limit the term of the presidency of the parliament to one year instead of two years, in addition to granting the deputies the right to dismiss their speaker by a decision issued by two-thirds of the members, and to deal with cases of vacancy in the position of the speaker of the parliament, whether by resignation or Death, dismissal, or any other reason. According to the amendment, “the vice-president assumes the presidency of the Council until a new speaker is elected within a period of two weeks from the date of the position becoming vacant, but if the Council is not in session, then he is called to convene in an extraordinary session in which he elects a speaker for it, to complete the remaining term of the presidency of the Council, in addition to considering the resignation of the Speaker of the House of Representatives.” From his position, it is effective from the date of its deposit with the General Secretariat of the Council
	</span>

</div>


</body>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">

	window.onload = function() {
		
// 		$('#redDivId').hide();
		$('#blueDivId').hide();
		$('#greenDivId').hide();
		
		setTimeout(function() {
			showRedDivId();
			}, 500);   		
	}
	
	
	function showRedDivId(){
		$('#redDivId').show();
		$('#blueDivId').hide();
		$('#greenDivId').hide();
		setTimeout(function() {
			showBlueDivId();
			}, 500);
	}
	
	function showBlueDivId(){
		
		$('#redDivId').hide();
		$('#blueDivId').show();
		$('#greenDivId').hide();
		
		setTimeout(function() {
			showGreenDivId();
			}, 500);
	}
	
	
	function showGreenDivId(){
		
		$('#redDivId').hide();
		$('#blueDivId').hide();
		$('#greenDivId').show();
		
		setTimeout(function() {
			showRedDivId5Sec();
			}, 500);
	}
	
	
	
	
	function showRedDivId5Sec(){
		$('#redDivId').show();
		$('#blueDivId').hide();
		$('#greenDivId').hide();
		setTimeout(function() {
			showBlueDivId5Sec();
			}, 5000);
	}
	
	function showBlueDivId5Sec(){
		
		$('#redDivId').hide();
		$('#blueDivId').show();
		$('#greenDivId').hide();
		
		setTimeout(function() {
			showGreenDivId5Sec();
			}, 5000);
	}
	
	
	function showGreenDivId5Sec(){
		
		$('#redDivId').hide();
		$('#blueDivId').hide();
		$('#greenDivId').show();
		
		setTimeout(function() {
			showRedDivId();
			}, 5000); 
	}
	
	
	
	
</script>
</html>