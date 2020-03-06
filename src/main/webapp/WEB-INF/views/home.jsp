<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
#form1, #form2,#form3,#formt {
	display: none;
}

/* button {
	margin-bottom: 10px;
}
 */

 button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  width: 10%;
}

/* Add padding to containers */
.container {
	width: 40%;
	padding: 16px;
	background-color: white;
	float: center;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #008CBA;
	color: white;
    float: right; 
	margin: 8px 0;
	border: none;
	cursor: pointer;
	padding: 16px 20px;
	opacity: 0.9;
	width: 20%;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}

.error {
	color: red;
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
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  
}

li a:hover {
  background-color: #111;
}
</style>

<script
  src="https://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#Personal").click(function() {
			$("#form1").toggle('slow');
		});
		
		$("#E1").click(function() {
			$("#form2").toggle('slow');
		});
		
		$("#pro").click(function() {
			$("#form3").toggle('slow');
		});
		
		
		$("#test").click(function() {
			$("#formt").toggle('slow');
		});
	});
</script>
</head>
<body>

<ul>
  <li><a id="Personal" href="#">Personal</a></li>
  <li><a id="E1">Educational</a></li>
  <li><a id="pro">Professional</a></li>
  <li><a href="#about">About</a></li>
</ul>

<!-- <button id="Personal">Personal</button>
<button id="E1">Educational</button>
<button id="pro">Professional</button> -->

	<div id="Personal">
		<!-- <button id="Personal">Personal</button> -->
		<form:form id="form1" action="savePerson" modelAttribute="perDetails">
		<div class="container">
			<p>Please fill The Personal Details</p>
			<hr>

			<label><b>FirstName</b></label>

			<form:input path="firstName" />
			<form:errors path="firstName" class="error" /> <br>

			<label><b>LastName</b></label>
			<form:input path="lastName" />
			<form:errors path="lastName" class="error" /> <br>
			
			<label><b>Employee No</b></label>
			<form:input path="empNo" />
			<form:errors path="empNo" class="error" /> <br>
			

			<label><b> Date Of Birth</b></label> <input type="date" name="dob" /> <br>
			<form:errors path="dob" class="error" /> <br>
			
			<br />
			<br /> <label><b>Aadhar No</b></label>
			<form:input path="aadhar" />
			<form:errors path="aadhar" class="error" /> <br>

			<label><b>Contact No</b></label>
			<form:input path="contact" />
			<form:errors path="contact" class="error" /> <br>


			<button type="submit" class="registerbtn">Submit</button>
		</div>


	</form:form>
	</div>
	
	
	<div id="E1">
		<!-- <button id="E1">Educational</button> -->
		<form:form id="form2" action="#" modelAttribute="educationDetails">
		<div class="container">
      <b> Enter B.Tech/BE/BSC/B.COM Details </b>  <br/><br/>
    
   <label> College  </label>
   <form:input path="gradCollegeName"/>
   <form:errors path="gradCollegeName" class="error"/> <br/>
    
   <label> Year Of Pass</label> 
   <form:input path="gradYop"/>
    <form:errors path="gradYop" class="error"/> <br/>
    
   <label> Percentage  </label>
   <form:input path="gradPercentage"/>
    <form:errors path="gradPercentage" class="error"/> <br/>
    
   <label> Address    </label> <br>
   <form:textarea path="gradAddress"/> <br>
    <form:errors path="gradAddress" class="error"/> <br/>
    
    <hr>
    <b> Enter Intermediate/+2 Details </b> <br/><br/>
    
   <label> College  </label> 
   <form:input path="plus2CollegeName"/>
    <form:errors path="plus2CollegeName" class="error"/> <br/>
    
   <label> Year Of Pass</label>
   <form:input path="plus2Yop"/>
    <form:errors path="plus2Yop" class="error"/> <br/>
    
   <label> Percentage  </label>
   <form:input path="plus2Percentage"/>
    <form:errors path="plus2Percentage" class="error"/> <br/>
    
  <label>Address</label>
  <br>
  <form:textarea path="plus2Address"/> <br>
   <form:errors path="plus2Address" class="error"/> <br/>
    
    <hr>
    <b> Enter 10th/SSC Details </b>  <br><br>
    
   <label> College  </label>
  <form:input path="SScCollegeName"/>
   <form:errors path="SScCollegeName" class="error"/> <br/>
    
   <label> Year Of Pass</label> 
   <form:input path="SScYop"/>
    <form:errors path="SScYop" class="error"/> <br/>
    
   <label> Percentage  </label>
   <form:input path="SScPercentage"/>
    <form:errors path="SScPercentage" class="error"/> <br/>
    
  <label>  Address   </label>
  <br>
  <form:textarea path="SScAddress"/>  <br>
   <form:errors path="SScAddress" class="error"/> <br/>
    
                                   <button type="submit" class="registerbtn">Submit</button>


      </div>
	</form:form>
	</div>
	
	<div id="pro">
		<!-- <button id="E1">Professional</button> -->
		<form:form id="form3" action="saveProfessionalDetails" modelAttribute="professionalDetails">
    
    <div class="container">
    
   <label><b> Total Experience </b></label>
    <form:input  path="totalExp"/>
    <form:errors path="totalExp" class="error"/> <br>
    
   <label> <b> CompanyName</b></label>
    <form:input path="companyName"/>
    <form:errors path="companyName" class="error"/> <br>
    
   <label><b>  Designation </b></label> 
   <form:input path="designation"/> 
   <form:errors path="designation" class="error"/> <br>
    
    <label><b> From Date </b> </label> 
    <input type="date" name="fromDate">
     
     <form:errors path="fromDate" class="error"/> <br><br><br>
     
    
    <label><b> End  Date &nbsp; </b> </label>
    <input type="date" name="toDate"> 
    <form:errors path="toDate" class="error"/> <br/><br/>
    
    <label><b> Skills </b> </label> <br> &nbsp;&nbsp;&nbsp;
    <form:checkbox path="skills" value="Java"/> Java
    <form:checkbox path="skills" value=".Net"/> .Net
    <form:checkbox path="skills" value="Php"/> Php
    <form:checkbox path="skills" value="Python"/> Python
    <form:checkbox path="skills" value="Spring"/> Spring
    <form:checkbox path="skills" value="Hibernate"/> Hibernate <br> &nbsp;&nbsp;&nbsp;
    <form:checkbox path="skills" value="Angular"/> Angular
    
    
    <br><br>
       <button type="submit" class="registerbtn">Submit</button>
    
    </div>
    </form:form>
	</div>
	
	<div id="test">
		<!-- <button id="E1">Testin</button> -->
		<form:form id="formt" action="#" modelAttribute="perDetails">
		<div class="container">
			<p>Please fill The Personal Details</p>
			<hr>

			<label><b>FirstName</b></label>

			<form:input path="firstName" />
			<form:errors path="firstName" class="error" /> <br>

			<label><b>LastName</b></label>
			<form:input path="lastName" />
			<form:errors path="lastName" class="error" /> <br>
			
			<label><b>Employee No</b></label>
			<form:input path="empNo" />
			<form:errors path="empNo" class="error" /> <br>
			

			<label><b> Date Of Birth</b></label> <input type="date" name="dob" /> <br>
			<form:errors path="dob" class="error" /> <br>
			
			<br />
			<br /> <label><b>Aadhar No</b></label>
			<form:input path="aadhar" />
			<form:errors path="aadhar" class="error" /> <br>

			<label><b>Contact No</b></label>
			<form:input path="contact" />
			<form:errors path="contact" class="error" /> <br>


			<button type="submit" class="registerbtn">Submit</button>
		</div>


	</form:form>
	</div>


</body>
</html>