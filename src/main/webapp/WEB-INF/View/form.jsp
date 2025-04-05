<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Registration Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
}

form {
	max-width: 500px;
	margin: auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 8px;
}

label {
	display: block;
	margin-top: 10px;
}

input[type="text"], input[type="email"], input[type="date"], select {
	width: 100%;
	padding: 8px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="submit"] {
	margin-top: 20px;
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<form action="handle" method="post">
	<h2>Student Registration Form</h2>
	
	<div class="alert alert-primary" role="alert">
	<form:errors path="student.*"></form:errors>  <!-- for allert  -->
	
  </div>
	<label for="first_name">Id:</label> <input type="text"
			id="firstname" name="id" required>
		<label for="first_name">Name:</label> <input type="text"
			id="firstname" name="name" required>
			 <label for="last_name">Age:</label>
		<input type="text" id="last_name" name="age" required> <label
			for="email">Email Address:</label> <input type="email" id="email"
			name="email" required> 
			<label for="dob">Date of
			Birth:</label> <input type="date" id="dob" name="dob" required> <label
			for="gender">Gender:</label> <select id="gender" name="gender"
			required>
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="other">Other</option>
		</select>
		<label for="address">Address:</label> <input type="text" id="address"
			name="address" required> <button type="submit" class="btn btn-primary">Submit</button>
	</form>
</body>
</html>
