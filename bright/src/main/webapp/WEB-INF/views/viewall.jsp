<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">ALL PRODUCT</h1>
<hr/>
	  <style>
	  hr {
width: 100%;
height: 8px;
margin-left: auto;
margin-right: auto;
background-color:#FF0066;
color:#FF0066;
border: 0 none;
}
	  </style>
  <c:forEach items="${productList}" var="prod">
        
  <!--    
      <div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="/w3images/lights.jpg">
        <img src="/w3images/lights.jpg" alt="Lights" style="width:100%">
        <div class="caption">
          <p>Lorem ipsum...</p>
        </div>
      </a>
    </div>
  </div>
  
 -->
<div class="container">
<div class="row">
      <div class="col-md-4 column productbox">
      <div class="thumbnail">
    <img src="<c:url value="/resources/images/${prod.imagename}.jpg"/>"class="img-responsive">
    <div class="producttitle"><a href="#">${prod.productname}</a></div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-xs" role="button">BUY</a></div>
	<div class="pricetext"><a href="#">${prod.productprice}</a></div>
	<a href="#">
	<button type="button" class="btn btn-default">
				Add to cart
			</button>
	
                 </a></div></div>
</div>
</div>
</div>
</c:forEach>



</body>
</html>