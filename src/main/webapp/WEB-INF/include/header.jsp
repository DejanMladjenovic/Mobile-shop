<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">Mobile-shop</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="index.html"><span class="glyphicon glyphicon-home"></span>Home<span class="sr-only">(current)</span></a></li>
			</ul>
			<form action="/phonesList" class="navbar-form navbar-left">
				<div class="form-group">
					<input type="text" size="25" name="search" class="form-control" placeholder="Manufacturer or model">
				</div>
				<button type="submit" class="btn btn-default">Search</button>
			</form>
			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
				<c:choose>
				
				<c:when test="${sessionUser.username == null}">
					<li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span>Log in</a></li>
					<li><a href="register.html"><span class="glyphicon glyphicon-user"></span>Sign up</a></li>
				</c:when>
				
				<c:when test="${sessionUser.username.equals(\"admin\")}">
				
				<!-- Admin -->
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">${sessionUser.username}<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="phonesList.jsp">Articles</a></li>
							<li><a href="addPhone.html">Add new</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="logout.html">Log out</a></li>
					</ul></li>
				</c:when>
				
				<c:otherwise>
				
				<!--User -->
				<li class="dropdown"><a data-target="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">${sessionUser.username}<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">My transactions</a></li>
						<li><a href="userProfile.html">My profile</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="logout.html">Log out</a></li>
					
					</ul>
				</li>
				</c:otherwise>
			</c:choose>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>

<br>
<br>
<br>