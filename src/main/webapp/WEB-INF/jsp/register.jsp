<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css" >
<link href="https://fonts.googleapis.com/css?family=Nobile" rel="stylesheet">
</head>
<body>

	<div class="container">
	
		<h3 class="text-center">${screen}</h3>
		
		<div id="index-button">
			<p><a href="index.html">Back to index!</a>
		</div>

		<div class="register-form">
			<h3 class="text-center">Please register!</h3>
			<form:form class="form" modelAttribute="user">
				<div class="form-group">
					<label for="firstName">First name :</label>
					<form:input class="form-control" id="firstName" path="firstName" autofocus="true" />
					<form:errors path="firstName" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="lastName">Last name:</label>
					<form:input class="form-control" id="lastName" path="lastName" />
					<form:errors path="lastName" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="username">Username:</label>
					<form:input class="form-control" id="username" path="username" />
					<form:errors path="username" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="lastName">Password:</label>
					<form:password class="form-control" id="password" path="password" />
					<form:errors path="password" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="email">Email:</label>
					<form:input class="form-control" id="email" path="email" />
					<form:errors path="email" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="lastName">Country:</label>
					<form:select class="form-control" id="country"
						path="address.country">
						<form:option value="">Country...</form:option>
						<form:option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</form:option>
						<form:option value="Croatia">Croatia</form:option>
						<form:option value="Macedonia">Macedonia</form:option>
						<form:option value="Republic of Montenegro">Montenegro</form:option>
						<form:option value="Serbia">Serbia</form:option>
						<form:option value="Slovenia">Slovenia</form:option>
					</form:select>
					<form:errors path="address.country" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="lastName">City:</label>
					<form:input class="form-control" id="city"
						path="address.city" />
					<form:errors path="address.city" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="lastName">Street:</label>
					<form:input class="form-control" id="street"
						path="address.street" />
					<form:errors path="address.street" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="lastName">House number:</label>
					<form:input class="form-control" id="houseNumber"
						path="address.houseNumber" />
					<form:errors path="address.city" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="lastName">Post code:</label>
					<form:input class="form-control" id="zip"
						path="address.zip" />
					<form:errors path="address.zip" cssClass="error" />
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Register</button>
					<br />
					<br />
					<p>Already have an account? <a href="login">Please log in!</a>
				</div>
			</form:form>
		</div>
	</div>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>