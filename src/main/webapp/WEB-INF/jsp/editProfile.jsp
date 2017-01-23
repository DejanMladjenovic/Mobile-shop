<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<div class="profile-info">
		<form:form modelAttribute="user">
			<table class="table table-hover">
				<tr>
					<td>First name:</td>
					<td><form:input class="form-control" path="firstName" /></td>
					<td><form:errors path="firstName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Last name:</td>
					<td><form:input class="form-control" path="lastName" /></td>
					<td><form:errors path="lastName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Email address:</td>
					<td><form:input class="form-control" path="email" /></td>
					<td><form:errors path="email" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Phone number:</td>
					<td><form:input class="form-control" path="number" onfocus="this.select()" /></td>
					<td><form:errors path="number" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><form:input class="form-control" path="username" /></td>
					<td><form:errors path="username" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:input class="form-control" path="password" /></td>
					<td><form:errors path="username" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Country:</td>
					<td><form:select class="form-control" id="country"
						path="address.country">
						<form:option value="">Country...</form:option>
						<form:option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</form:option>
						<form:option value="Croatia">Croatia</form:option>
						<form:option value="Macedonia">Macedonia</form:option>
						<form:option value="Republic of Montenegro">Montenegro</form:option>
						<form:option value="Serbia">Serbia</form:option>
						<form:option value="Slovenia">Slovenia</form:option>
					</form:select></td>
					<td><form:errors path="address.country" cssClass="error" /></td>
				</tr>
				<tr>
					<td>City:</td>
					<td><form:input class="form-control" path="address.city" /></td>
					<td><form:errors path="address.city" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Street:</td>
					<td><form:input class="form-control" path="address.street" /></td>
					<td><form:errors path="address.street" cssClass="error" /></td>
				</tr>
				<tr>
					<td>House number:</td>
					<td><form:input class="form-control" path="address.houseNumber" /></td>
					<td><form:errors path="address.houseNumber" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Postal code:</td>
					<td><form:input class="form-control" path="address.zip" /></td>
					<td><form:errors path="address.zip" cssClass="error" /></td>
				</tr>
			</table>
			<button type="submit" class="btn btn-primary">Edit profile</button>
		</form:form>	
		</div>
	</div>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>