<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css" >
<link href="https://fonts.googleapis.com/css?family=Nobile" rel="stylesheet">
</head>
<body>

	<jsp:include page="../include/header.jsp"></jsp:include>
	
	<div class="container">
		<div>
			<h3>My profile</h3>
		</div>
		<div>
			<table class="table table-hover">
				<tr>
					<td>First name:</td>
					<td>${sessionUser.firstName}</td>
				</tr>
				<tr>
					<td>Last name:</td>
					<td>${sessionUser.lastName}</td>
				</tr>
				<tr>
					<td>Email address:</td>
					<td>${sessionUser.email}</td>
				</tr>
				<tr>
					<td>Phone number:</td>
					<td>${sessionUser.number}</td>
				</tr>
				<tr>
					<td>Username:</td>
					<td>${sessionUser.username}</td>
				</tr>
				<tr>
					<td>Password:</td>
					<td>${sessionUser.password}</td>
				</tr>
				<tr>
					<td>Country:</td>
					<td>${sessionUser.address.country}</td>
				</tr>
				<tr>
					<td>City:</td>
					<td>${sessionUser.address.city}</td>
				</tr>
				<tr>
					<td>Street:</td>
					<td>${sessionUser.address.street}</td>
				</tr>
				<tr>
					<td>House number:</td>
					<td>${sessionUser.address.houseNumber}</td>
				</tr>
				<tr>
					<td>Postal code:</td>
					<td>${sessionUser.address.zip}</td>
				</tr>
			</table>
			<a href="editProfile.html"><button class="btn btn-primary">Edit profile</button></a>
		</div>
	</div>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>