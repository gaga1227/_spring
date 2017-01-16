<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Product Details</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.1/angular.min.js"></script>
<script src="/webstore/resources/js/controllers.js"></script>
</head>

<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Product Details</h1>
			</div>
		</div>
	</section>
	<section class="container" ng-app="cartApp">
		<div class="row">
			<div class="col-md-5">
				<img 
					src="<c:url value="/img/${product.productId}.png"></c:url>" 
					alt="${product.name}" style="width: 100%" />
			</div>
			<div class="col-md-5">
				<h3>${product.name}</h3>
				<p>${product.description}</p>
				<p>
					<b>Item Code : </b><span class="label label-warning">${product.productId}</span>
				</p>
				<p>
					<b>manufacturer</b> : ${product.manufacturer}
				</p>
				<p>
					<b>category</b> : ${product.category}
				</p>
				<p>
					<b>Available units in stock </b> : ${product.unitsInStock}
				</p>
				<h4>${product.unitPrice} USD</h4>
				<p ng-controller="cartCtrl">
					<a href="<spring:url value="/market/products" />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span> back
					</a>
					<a href="" class="btn btn-warning btn-large"
						ng-click="addToCart('${product.productId}')">
						<span class="glyphicon-shopping-cart glyphicon"></span> Order Now
					</a>
					<a href="<spring:url value="/cart" />" class="btn btn-default">
						<span class="glyphicon-hand-right glyphicon"></span> View Cart
					</a>
				</p>
			</div>
		</div>
	</section>
</body>
</html>
