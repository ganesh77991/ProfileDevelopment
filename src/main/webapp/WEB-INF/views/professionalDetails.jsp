<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	width: 50%;
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

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #4CAF50;
	color: white;
	float: right;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	padding: 16px 20px;
	opacity: 0.9;
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
</style>
</head>
<body>
    
    
    <b style='color:blue'>Please Enter The Professional Details</b>
    
    <form:form action="saveProfessionalDetails" modelAttribute="professionalDetails">
    
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
    <form:checkbox path="skills" value="Hibernate"/> Hibernate
    <form:checkbox path="skills" value="Angular"/> Angular
    
    
    <br><br>
       <button type="submit" class="registerbtn">Submit</button>
    
    </div>
    </form:form>
    
    

</body>
</html>