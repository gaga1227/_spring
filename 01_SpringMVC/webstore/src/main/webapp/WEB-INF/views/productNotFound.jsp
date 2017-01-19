<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<section>
	<div class="container">
		<p>${url}</p>
		<p>${exception}<br><br></p>
		<p>
			<a href="<spring:url value="/market/products" />" class="btn btn-primary">
				<span class="glyphicon-hand-left glyphicon"></span> Back to Products
			</a>
		</p>
	</div>
</section>