<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
</head>
<body>
<ul>
  <li><a id="Personal" href="#">Personal</a></li>
  <li><a id="E1">Educational</a></li>
  <li><a id="pro">Professional</a></li>
  <li><a href="#about">About</a></li>
</ul>
	<form:form action="savePerson" modelAttribute="perDetails">
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


			<button type="submit" class="registerbtn">Next</button>
		</div>


	</form:form>

</body>
</html>