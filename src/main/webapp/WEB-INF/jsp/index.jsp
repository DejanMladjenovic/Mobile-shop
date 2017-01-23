<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Nobile"
	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
</head>
<body>

	<div class="container">
		
		<jsp:include page="../include/header.jsp"></jsp:include>
		<c:import url="/phones.html" />

		<c:if test="${fn:length(phones) == 0}">
			<h3 class="text-center">No phones to show!</h3>
		</c:if>
		
		<div class="text-center">
			<h4><span class="screen"><c:out value="${screen}" /></span></h4>
		</div>
		
		<div class="row">
			<c:forEach items="${phones}" var="phone">
				<div class="col-sm-4 col-md-3" >
					<div class="thumbnail well phone-index">
						<img src="${phone.picture}" alt="${phone.model}" class="img-responsive" />
						<div>
							<h4>${phone.manufacturer} ${phone.model}</h4>
							<h5>Price: €</h5>
							 <div class="row">
								<a href="phone.html?id=${phone.id}" class="btn btn-primary btn-block animation shake">
									<span class="glyphicon glyphicon-phone"></span>Details!
								</a>
								<a href="add?id=${phone.id}" class="btn btn-success btn-block" >
									<span class="glyphicon glyphicon-shopping-cart"></span>Add to cart!
								</a>
							</div>
							<div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>