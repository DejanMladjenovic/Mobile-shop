<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css" >
<link href="https://fonts.googleapis.com/css?family=Nobile" rel="stylesheet">
</head>
<body>

	<h3>${screen}</h3>

	<div class="container">
		
		<div id="index-button">
			<p><a href="index.html">Back to index!</a>
		</div>

		<div class="login-form">
			<h3 class="text-center">Please log in!</h3>
			<form:form class="form-horizontal" modelAttribute="user">
				<div class="form-group">
					<label for="username">Username:</label>
					<form:input class="form-control" id="username" path="username" autofocus="true" />
					<form:errors path="username" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="lastName">Password:</label>
					<form:password class="form-control" id="password" path="password" />
					<form:errors path="password" cssClass="error" />
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Log in!</button>
					<br />
					<br />
					<p>You don't have an account? <a href="register.html">Click here!</a>
				</div>
			</form:form>
		</div>
	</div>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>