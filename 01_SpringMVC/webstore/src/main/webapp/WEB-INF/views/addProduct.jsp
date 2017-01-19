<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<section class="container">
	<form:form method="POST" modelAttribute="newProduct" class="form-horizontal" enctype="multipart/form-data">
		<form:errors path="*" cssClass="alert alert-danger" element="div"/>
		<fieldset>
			<legend>Add new product</legend>

			<div class="form-group">
				<label class="control-label col-sm-4" for="productId">
					<spring:message code="addProduct.form.productId.label" />
				</label>
				<div class="col-sm-8">
					<form:input id="productId" path="productId" type="text" class="form-control" />
					<form:errors path="productId" cssClass="text-danger"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="name">
					<spring:message code="addProduct.form.name.label" />
				</label>
				<div class="col-sm-8">
					<form:input id="name" path="name" type="text" class="form-control" />
					<form:errors path="name" cssClass="text-danger"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="unitPrice">
					<spring:message code="addProduct.form.unitPrice.label" />
				</label>
				<div class="col-sm-8">
					<form:input id="unitPrice" path="unitPrice" type="text" class="form-control" />
					<form:errors path="unitPrice" cssClass="text-danger"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="manufacturer">
					<spring:message code="addProduct.form.manufacturer.label" />
				</label>
				<div class="col-sm-8">
					<form:input id="manufacturer" path="manufacturer" type="text" class="form-control" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="category">
					<spring:message code="addProduct.form.category.label" />
				</label>
				<div class="col-sm-8">
					<form:input id="category" path="category" type="text" class="form-control" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="unitsInStock">
					<spring:message code="addProduct.form.unitsInStock.label" />
				</label>
				<div class="col-sm-8">
					<form:input id="unitsInStock" path="unitsInStock" type="text" class="form-control" />
					<form:errors path="unitsInStock" cssClass="text-danger"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="description">
					<spring:message code="addProduct.form.description.label" />
				</label>
				<div class="col-sm-8">
					<form:textarea id="description" path="description" rows="2" class="form-control" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="condition">
					<spring:message code="addProduct.form.condition.label" />
				</label>
				<div class="col-sm-8">
					<form:radiobutton path="condition" value="New" />New
					<form:radiobutton path="condition" value="Old" />Old
					<form:radiobutton path="condition" value="Refurbished" />Refurbished
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="productImage">
					<spring:message code="addProduct.form.productImage.label" />
				</label>
				<div class="col-sm-8">
					<form:input id="productImage" path="productImage" type="file" class="form-control" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-8">
					<input type="submit" id="btnAdd" class="btn btn-primary" value="Add" />
				</div>
			</div>
		</fieldset>
	</form:form>
</section>