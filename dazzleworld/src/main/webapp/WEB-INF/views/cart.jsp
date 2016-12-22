<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>cart</title>
</head>

<body>


 <c:set var="total_cost" value="0" scope="page" />
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				
							<table class="table ">
								<thead>
									<tr>
										<th>Product</th>
										<th>Quantity</th>
										<th class="text-center">Price</th>
										<th class="text-center">Total</th>
										<th> </th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${cartList}" var="cart">
										<tr>
										<%-- <c:set var="total_cost"
												value="${total_cost + cart.totalPrice}" scope="page" />
												<c:choose>
													<c:when test="${total_cost >'0' }">
										 --%>	<td class="col-sm-8 col-md-6">
												<div class="media">
													<a class="thumbnail pull-left"> <img
														class="media-object"
														src="<c:url value="resources/images/${cart.product.imagename}.jpg"/>"
														style="width: 72px; height: 72px;">
													</a>
													<div class="media-body">
														<h4 class="media-heading" style="color: white">${cart.product.productname}</h4>

													</div>
												</div>
											</td>

											<td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber
														value="${cart.quantity}" /></strong></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber
														value="${cart.product.productprice}" type="currency"
														pattern="#,##,##,##,###.00" /></strong></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber
														value="${cart.total}" type="currency"
														pattern="#,##,##,##,###.00" /></strong></td>
											 <td class="col-sm-1 col-md-1"><a
												href="">
													<button type="button" class="btn btn-danger">
											 		<span class="glyphicon glyphicon-remove"></span> Remove
													</button>
											</a></td>

											
											<%-- <c:otherwise>
											<hr><hr>
											<center><h1>YOUR CART IS EMPTY</h1></center>
											</c:otherwise>
											 --%>
										</tr>
									</c:forEach>
									<%-- <c:choose>
										<c:when test="${total_cost == '0' }">
											<center><h1>Your cart is empty</h1></center>
										</c:when>
									</c:choose>
									<c:choose>
										<c:when test="${total_cost > '0' }">
 --%>									<tr>
										<td> </td>
										<td> </td>
										<td> </td>
										<td><h3>Total</h3></td>

									<%-- 	<td class="text-right"><h3>
												<strong><i class="fa fa-inr" style="color: white"><fmt:formatNumber
															value="${total_cost}" type="currency"
															pattern="#,##,##,##,###.00" /></i></strong>
											</h3></td>
									</tr>
					 --%>				<tr>
										<td> </td>
										<td> </td>
										<td> </td>
										<td><a href="<c:url value="/viewall"/>"><button
													type="button" class="btn btn-default">
													<span class="glyphicon glyphicon-shopping-cart"></span>
													Continue Shopping
												</button></a></td>

										<td><sec:authorize access="hasRole('ROLE_USER')">
												<a href="<c:url value="/checkout.obj"/>">
													<button type="button" class="btn btn-success">
														Checkout <span class="glyphicon glyphicon-play"></span>
													</button>
												</a>
											</sec:authorize></td>
										</tr>
<%-- 										</c:when></c:choose> --%>
									</tbody>
								</table>
							
					</div>
			</div>
		</div>
</body>
</html>








































<%-- 

	<c:set var="total_cost" value="0" scope="page" />							

<div class="container">

	<div class="row">
		
<div class="col-xs-8">
	
		<div class="panel panel-info">

				<div class="panel-heading">					
<div class="panel-title">
						
<div class="row">
							
<div class="col-xs-6">
							
	<h5><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h5>
							
</div>
							
<div class="col-xs-6">
								
<button type="button" class="btn btn-primary btn-sm btn-block">
									
<span class="glyphicon glyphicon-share-alt"></span> Continue shopping
						
		</button>
							</div>
				
		</div>
					</div>
				</div>
				<c:forEach items="${cartList}" var="cart">
	<div class="panel-body">
					<div class="row"><div class="col-xs-2"><a class="thumbnail pull-left"> <img
														class="media-object"
														src="<c:url value="resources/images/${cart.product.imagename}.jpg"/>"
														style="width: 72px; height: 72px;">
													</a>
						
						</div>
						<div class="col-xs-4">
							<h4 class="product-name"><strong>${cart.product.productname}</strong></h4><h4><small>Product description</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h6><strong>"${cart.product.productprice}" <span class="text-muted">x</span></strong></h6>
							</div>
							<div class="col-xs-4">
								
<input type="text" class="form-control input-sm" value="1">
							

</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-link btn-xs">
									<span class="glyphicon glyphicon-trash"> </span>
								</button>
							</div>
						</div>
					</div>
					<hr>
				<!-- 	<div class="row">
						<div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
						</div>
						<div class="col-xs-4">
							<h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
							</div>
							<div class="col-xs-4">
								<input type="text" class="form-control input-sm" value="1">
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-link btn-xs">
									<span class="glyphicon glyphicon-trash"> </span>
								</button>
							</div>
						</div>
				 	</div>
				 -->	<hr>
					
<div class="row">
						
<div class="text-center">
		
					<div class="col-xs-9">
					<h6 class="text-right">Added items?</h6>
							</div>
							<div class="col-xs-3">
								<button type="button" class="btn btn-default btn-sm btn-block">
									Update cart
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right">Total <strong><form:formatNumber
															value="${total_cost}" type="currency"
															pattern="#,##,##,##,###.00" /></strong></h4>
						</div>
						<div class="col-xs-3">
						<a href="<c:url value="/checkout.obj"/>">
							<button type="button" class="btn btn-success btn-block">
								Checkout
							</button></a>
						</div>
					</div>
				</div></c:forEach>
			</div>
		</div>
	</div>
</div>
	
 --%>
</body>
</html>   