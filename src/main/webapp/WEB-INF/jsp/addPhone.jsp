<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Phone</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css" >
<link href="https://fonts.googleapis.com/css?family=Nobile" rel="stylesheet">
</head>
<body>

	<div class="container">

		<jsp:include page="../include/header.jsp"></jsp:include>
		
		<h3 class="text-center">New phone:</h3>

		<form:form class="form-horizontal" modelAttribute="phone">
			<div class="form-group">
				<label for="manufacturer" class="col-sm-2 control-label">Manufacturer:</label>
				<div class="col-sm-8">
					<form:input class="form-control" id="manufacturer" path="manufacturer" autofocus="true" />
					<form:errors path="manufacturer" cssClass="error" />
				</div>
			</div>
			<div class="form-group">
				<label for="model" class="col-sm-2 control-label">Model:</label>
				<div class="col-sm-8">
					<form:input class="form-control" id="model" path="model" />
					<form:errors path="model" cssClass="error" />
				</div>
			</div>
			<div class="form-group">
				<label for="ram" class="col-sm-2 control-label">RAM memory:</label>
				<div class="col-sm-8">
					<form:input class="form-control" id="ram" path="ram" />
					<form:errors path="ram" cssClass="error" />
				</div>
			</div>
			<div class="form-group">
				<label for="display" class="col-sm-2 control-label">Display(inch):</label>
				<div class="col-sm-8">
					<form:input class="form-control" id="display" path="display" />
					<form:errors path="manufacturer" cssClass="error" />
				</div>
			</div>
			<div class="form-group">
				<label for="description" class="col-sm-2 control-label">Description:</label>
				<div class="col-sm-8">
					<form:textarea class="form-control" id="description" path="description" />
					<form:errors path="description" cssClass="error" />
				</div>
			</div>
			<div class="form-group">
				<label for="details" class="col-sm-2 control-label">Details(url):</label>
				<div class="col-sm-8">
					<form:input class="form-control" type="url" id="details" path="details" />
					<form:errors path="details" cssClass="error" />
				</div>
			</div>
			<div class="form-group">
				<label for="picture" class="col-sm-2 control-label">Picture path:</label>
				<div class="col-sm-8">
					<form:input class="form-control" id="picture" path="picture" />
					<form:errors path="picture" cssClass="error" />
				</div>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Add phone!</button>
			</div>
		</form:form>


	</div>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>