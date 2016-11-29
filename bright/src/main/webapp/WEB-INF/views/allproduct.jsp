<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	  
	  
  
        

<div class="container">

<c:forEach items="${productList}" var="prod">
<div class="row">
      <div class="col-md-3 column productbox">
      <div class="thumbnail">
    <img src="<c:url value="/resources/images/${prod.imagename}.jpg"/>"class="img-responsive">
    <div class="producttitle"><a href="#">${prod.productname}</a></div>
    <div class="productprice">
	<div class="pricetext"><a href="#">${prod.productprice}</a></div>
	<a href="#">
	<button type="button" class="btn btn-default">
				Add to cart
			</button><div class="pull-right"><a href="#" class="btn btn-default" role="button">BUY</a></div>
	
                 </a></div></div>
</div>
</div>
</c:forEach>
</div>




</body>
</html>