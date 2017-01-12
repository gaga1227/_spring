<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Product Details</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>

<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Product Details</h1>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">
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
				<p>
					<a href="<spring:url value="/market/products" />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span> back
					</a>
					<a href="#" class="btn btn-warning btn-large">
						<span class="glyphicon-shopping-cart glyphicon"></span> Order Now
					</a>
				</p>
			</div>
		</div>
	</section>
</body>
</html>
