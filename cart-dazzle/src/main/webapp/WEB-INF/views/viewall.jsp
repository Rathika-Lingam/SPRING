<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Black+Ops+One&effect=wallpaper">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW ALL</title>

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
	  
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js">      </script> 
<script>
	
 angular.module('myApp', [])
 .controller('MyController', ['$scope', '$http', function($scope, $http) {
alert("its controller");
    $http.get("sony").success(function(data){
    	alert("its get method page");
         $scope.person = data;
    });

 }]);
</script>
    
</head>
<body>
 <div class="container" ng-app="myApp" ng-controller="MyController"> 
 <div class="col-sm-6 col-sm-offset-3">
			<div id="imaginary_container">
				<div class="input-group stylish-input-group">
					<input type="text" class="form-control" placeholder="Search" ng-model="SearchProduct">
					<span class="input-group-addon">
						<button type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
					</div>
			</div>
		</div>
			

<h1 align="center">ALL PRODUCT</h1>
<hr/>
	  <div class="row">
        <div ng-repeat="prod in person | filter:SearchProduct">   <!-- instead of foreach -->
      
 <!-- <div class="container"> -->
		<div class="col-xs-3">
			<div class="thumbnail zoom" id="ex1">
     
    <img src="<c:url value="/resources/images/{{prod.imagename}}.jpg"/>"class="img-responsive">
    
    				<div class="caption">
					<div class="row">
						<div class="font-effect-wallpaper" class="col-md-12 col-xs-12" style="color:red">
    
    
    <div class="producttitle"><a href="#">{{prod.productname}}</a></div>
    <div class="productprice"><a href="#">&#x20B9<strong>{{prod.productprice}}</strong></a></div>
    
    
    
    					<div class="row">
						<div class="col-md-12">
							<center><a href="<c:url value="productdetails?pdt={{prod.productid}}"/>" class="btn btn-default "><span class="glyphicon glyphicon-th-list"></span>view in detail</a></center>
						</div>
					</div>
    
       
    
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<div class="row">
						<div class="col-md-6">
							<a href="<c:url value='edit/${prod.productid}'/>" class="btn btn-default "><span
								class="		glyphicon glyphicon-pencil"></span> edit</a>
						</div>
						
						<div class="col-md-6">
							<a href="<c:url value='delete/${prod.productid}'/>" class="btn btn-default"><span
								class="	glyphicon glyphicon-trash"></span> Delete</a>
						</div>
					</div>
				</sec:authorize></div></div></div></div>
</div>


</div>
</div>
</div>




</body>
</html>