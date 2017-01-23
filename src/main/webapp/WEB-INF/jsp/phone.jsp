<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${phone.manufacturer}${phone.model}</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Nobile"
	rel="stylesheet">
	
<style>
	td {
		padding-top: 20px;
		margin-top: 20px;
	}
</style>
</head>
<body>

	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<div>
				<h3 class="text-center">${phone.manufacturer} ${phone.model}</h3>
			</div>
			<div class="col-md-4 col-sm-6">
				<img class="well img-responsive" src="${phone.picture}" />
			</div>
			<div class="col-md-offset-1 col-md-4 col-sm-offset-1 col-sm-5">
				<table class="table-phone">
					<tr>
						<td>Manufacturer:
						<td>${phone.manufacturer}
					<tr>
						<td>Model:
						<td>${phone.model}
					<tr>
						<td>RAM:
						<td>${phone.ram}
					<tr>
						<td>Display:
						<td>${phone.display}
				</table>
				
				<div>
					<ul class="list-inline">
						<li>
							<form action="AddToCartServlet">
								<button class="btn btn-success" name="id" value="${phone.id}">
									<span class="glyphicon glyphicon-shopping-cart"></span>Add to cart!
								</button>
							</form>
					</ul>
				</div>

			</div>
		</div>
				<p>
					Full specification: <a href="${phone.details}">GSM Arena</a>
		<div style="background-color: lightgrey; padding: 20px; box-shadow: 2p">
				<h4>Description</h4>
				<p>${phone.description}</p>
		</div>

	</div>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>