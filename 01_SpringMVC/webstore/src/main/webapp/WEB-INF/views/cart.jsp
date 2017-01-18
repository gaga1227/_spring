<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Cart</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.1/angular.min.js"></script>
<script src="/webstore/resources/js/controllers.js"></script>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Cart</h1>
				<p>All the selected products in your cart</p>
			</div>
		</div>
	</section>

	<section class="container" ng-app="cartApp">
		<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
			<p class="clearfix">
				<a class="btn btn-danger pull-left" ng-click="clearCart()">
					<span class="glyphicon glyphicon-remove-sign"></span> Clear Cart
				</a>
				<a href="<spring:url value="/checkout?cartId=${cartId}"/>" class="btn btn-success pull-right">
					<span class="glyphicon-shopping-cart glyphicon"></span> Checkout
				</a>
			</p>
			<table class="table table-hover">
				<tr>
					<th>Product</th>
					<th>Unit price</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
				<tr ng-repeat="item in cart.cartItems">
					<td>{{item.product.productId}}-{{item.product.name}}</td>
					<td>{{item.product.unitPrice}}</td>
					<td>{{item.quantity}}</td>
					<td>{{item.totalPrice}}</td>
					<td>
						<a href="" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
							<span class="glyphicon glyphicon-remove" /></span> Remove
						</a>
					</td>
				</tr>
				<tr>
					<th></th>
					<th></th>
					<th>Grand Total</th>
					<th>{{cart.grandTotal}}</th>
					<th></th>
				</tr>
			</table>

			<p>
				<a href="<spring:url value="/market/products" />" class="btn btn-default">
					<span class="glyphicon-hand-left glyphicon"></span> Continue shopping
				</a>
			</p>
		</div>
	</section>
</body>
</html>
