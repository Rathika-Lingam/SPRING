<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<meta name="viewport" content="width= device-width,initial-scale= 1.0">
<style>
/*********************************************
    			Call Bootstrap
*********************************************/

 @import url("bootstrap/bootstrap.min.css");
@import url("bootstrap-override.css");
@import url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");


.gold{
	color: #FFBF00;
}

.product{
	border: 1px solid #dddddd;
	height: 321px;
}

.product>img{
	max-width: 230px;
}

.product-rating{
	font-size: 20px;
	margin-bottom: 25px;
}

.product-title{
	font-size: 20px;
}

.product-desc{
	font-size: 14px;
}

.product-price{
	font-size: 22px;
}

.product-stock{
	color: #74DF00;
	font-size: 20px;
	margin-top: 10px;
}

.product-info{
		margin-top: 50px;
}

/*********************************************
					VIEW
*********************************************/

.content-wrapper {
	max-width: 1140px;
	background: #fff;
	margin: 0 auto;
	margin-top: 25px;
	margin-bottom: 10px;
	border: 0px;
	border-radius: 0px;
}

.container-fluid{
	max-width: 1140px;
	margin: 0 auto;
}

.view-wrapper {
	float: right;
	max-width: 70%;
	margin-top: 25px;
}

.container {
	padding-left: 0px;
	padding-right: 0px;
	max-width: 100%;
}

/*********************************************
				ITEM 
*********************************************/

.service1-items {
	padding: 0px 0 0px 0;
	float: left;
	position: relative;
	overflow: hidden;
	max-width: 100%;
	height: 321px;
	width: 130px;
}

.service1-item {
	height: 107px;
	width: 120px;
	display: block;
	float: left;
	position: relative;
	padding-right: 20px;
	border-right: 1px solid #DDD;
	border-top: 1px solid #DDD;
	border-bottom: 1px solid #DDD;
}

.service1-item > img {
	max-height: 110px;
	max-width: 110px;
	opacity: 0.6;
	transition: all .2s ease-in;
	-o-transition: all .2s ease-in;
	-moz-transition: all .2s ease-in;
	-webkit-transition: all .2s ease-in;
}

.service1-item > img:hover {
	cursor: pointer;
	opacity: 1;
}

.service-image-left {
	padding-right: 50px;
}

.service-image-right {
	padding-left: 50px;
}

.service-image-left > center > img,.service-image-right > center > img{
	max-height: 155px;
}
	


</style>
 </head>
<body>




<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-14">
					<div class="product col-md-3 service-image-left">
                    
						<center>
							<img id="item-display" src="<c:url value="/resources/images/${product.imagename}.jpg"/>" class="img-responsive" alt="" ></img>
						</center>
					</div>
					
					<div class="container service1-items col-sm-2 col-md-2 pull-left">
						<center>
							<a id="item-1" class="service1-item">
														<img id="item-display" src="<c:url value="/resources/images/${product.imagename}.jpg"/>" alt=""></img>
							</a>
							<a id="item-2" class="service1-item">
														<img id="item-display" src="<c:url value="/resources/images/${product.imagename}.jpg"/>" alt=""></img>
							</a>
							<a id="item-3" class="service1-item">
														<img id="item-display" src="<c:url value="/resources/images/${product.imagename}.jpg"/>" alt=""></img>
							</a>
						</center>
					</div>
				
					
				<div class="col-md-7">
					<div class="product-title">${product.productname}</div>
					<div class="product-desc">${product.productdescription }</div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
					<div class="product-price">${product.productprice}</div>
					<div class="product-stock">In Stock</div>
					<hr>
					<div class="btn-group cart">						
					
					
						<!-- <button type="button" class="btn btn-success"> -->
												<a href="<c:url value="cart?value=${product.productid}"/>"
							class="btn btn-default" > <span
							class="glyphicon glyphicon-shopping-cart"></span> Add to cart
						</a>
						
							
					</div>
					<!-- <div class="btn-group wishlist">
						<button type="button" class="btn btn-danger">
							Add to wishlist 
							</div>
						</button> -->
					</div>
				</div>
			</div> 
		</div>
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
						<li><a href="#service-two" data-toggle="tab">PRODUCT INFO</a></li>
						<li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>
						
					</ul>
	<!-- 			<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
								The Corsair Gaming Series GS600 power supply is the ideal price-performance solution for building or upgrading a Gaming PC. A single +12V rail provides up to 48A of reliable, continuous power for multi-core gaming PCs with multiple graphics cards. The ultra-quiet, dual ball-bearing fan automatically adjusts its speed according to temperature, so it will never intrude on your music and games. Blue LEDs bathe the transparent fan blades in a cool glow. Not feeling blue? You can turn off the lighting with the press of a button.

								<h3>Corsair Gaming Series GS600 Features:</h3>
								<li>It supports the latest ATX12V v2.3 standard and is backward compatible with ATX12V 2.2 and ATX12V 2.01 systems</li>
								<li>An ultra-quiet 140mm double ball-bearing fan delivers great airflow at an very low noise level by varying fan speed in response to temperature</li>
								<li>80Plus certified to deliver 80% efficiency or higher at normal load conditions (20% to 100% load)</li>
								<li>0.99 Active Power Factor Correction provides clean and reliable power</li>
								<li>Universal AC input from 90~264V — no more hassle of flipping that tiny red switch to select the voltage input!</li>
								<li>Extra long fully-sleeved cables support full tower chassis</li>
								<li>A three year warranty and lifetime access to Corsair’s legendary technical support and customer service</li>
								<li>Over Current/Voltage/Power Protection, Under Voltage Protection and Short Circuit Protection provide complete component safety</li>
								<li>Dimensions: 150mm(W) x 86mm(H) x 160mm(L)</li>
								<li>MTBF: 100,000 hours</li>
								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>
							</section>
 -->										  
						</div>
					<div class="tab-pane fade" id="service-two">
						
						<section class="container">
								
						</section>
						
					</div>
					<div class="tab-pane fade" id="service-three">
												
					</div>
				</div>
				<hr>
			</div>
		</div>
	</div>
</div>


    
<%-- 	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-6">
<img src="<c:url value="/resources/images/${product.imagename}.jpg"/>">
			
			<div class="col-md-6">
				<center>
					<h1>${product.categoryname}${product.productname}</h1>
				</center>
				<hr>
				<center>
					<h3>
						<i class="fa fa-inr" style="color: white"><fmt:formatNumber
								value="${product.discountPrice}" type="currency"
								pattern="#,##,##,##,###.00" /></i>
					</h3>
				</center>
				<hr>

				<center>
					<div class="col-md-12">
						<a href="<c:url value='addtocart/${product.productid}'/>"
							class="btn btn-default" onclick="return Validate()"> <span
							class="glyphicon glyphicon-shopping-cart"></span> Add to cart
						</a>
					</div>
				</center>
			</div>
		</div>


		<div class="row">
			<div class="col-xs-12">
				<ul id="myTab" class="nav nav-tabs nav_tabs">
					<li class="active"><a href="" data-toggle="tab">DESCRIPTION</a></li>

				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-12">
				<ul>${product.productdescription}</ul>
			</div>
		</div>
	</div>
	<hr>
	<div class="container">
	<H2>Reviews</H2>
	<security:authorize access="hasRole('ROLE_USER')">
	<a href="<c:url value="/review/${product.productid}"/>"><button
			type="button" class="btn btn-success">Write Review</button></a>
			<hr>
			</security:authorize>
	 <c:forEach items="${reviewlist}" var="review">
		<div class="w3-col m7"> 
      <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <span class="w3-right w3-opacity">${review.date} ${review.time}</span>
        <h4>${review.name}</h4>
        <h5>${review.title}</h5><br>
        <hr class="w3-clear">
        <p>${review.description}</p>
          <div class="w3-row-padding" style="margin:0 -16px">
        </div>
      </div>
    </div>
    </c:forEach>
    </div>
  </div>
 --%>  
</body>

</html>
