<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Nobile"
	rel="stylesheet">
</head>
<body>

	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="container">
		<div>
			<h3>My cart</h3>
		</div>


		<div class="well">
			<table class="table table-bordered table-hover">
				<c:choose>
					<c:when test="${fn:length(cart) == 0}">
						<td>Cart is empty! Add some <a href="index.html">articles!</a>
					</c:when>
					
					<c:otherwise>
						<thead>
							<tr>
								<th>Product</th>
								<th>Price</th>
								<th class="th-width">Amount</th>
								<th class="th-width">Remove</th>
							</tr>
						</thead>
						<tbody class="tbody-user">
							<c:set var="total" value="${0}" />
							<c:forEach items="${cart}" var="phone">
								<tr>
									<td><c:out value="${phone.key.manufacturer } ${phone.key.model}" /></td>
		 							<td><c:out value="${phone.key.price} KM" /></td> 
		 							<td><c:out value="${phone.value}" /></td> 
									<td>
										<a href="remove?id=${phone.key.id}" class="btn btn-success btn-block" >
											<span class="glyphicon glyphicon-remove"></span>
										</a>
									</td>
								</tr>
								<c:set var="total" value="${total + (phone.key.price * phone.value)}" />
							</c:forEach>
							<tr class="success">
								<td colspan="1">Total:</td>
								<td>${total}KM</td>
							</tr>

						</tbody>
					</c:otherwise>
				</c:choose>
			</table>
						<div class="text-center">
							<button class="btn btn-primary">Check</button>
						</div>

		</div>
	</div>

</body>
</html>