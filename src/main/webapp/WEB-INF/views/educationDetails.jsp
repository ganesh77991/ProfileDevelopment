<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

textarea{
 width: 50%;
  padding: 15px;
  display: inline-block;
   margin: 5px 0 22px 0;
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

#b{
  color:blue;
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
    
   <b style="color:blue">Please Enter Your Educational Details </b> <br/><br/>
	<form:form action="saveEducationDetails" modelAttribute="educationDetails">
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
    
                                   <button type="submit" class="registerbtn">Next</button>


      </div>
	</form:form>

</body>
</html>