<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
      
 <div class="container">


 <%-- <c:forEach items="${productList}" var="prod"> --%>
<!-- <div class="col-xs-6 col-sm-3"> -->
  <div class="col-md-3 column productbox">
    <!--   <div class="col-md-4 column productbox"> -->
      <div class="thumbnail">
    <img src="<c:url value="/resources/images/{{prod.imagename}}.jpg"/>"class="img-responsive">
    <div class="producttitle"><a href="#">{{prod.productname}}</a></div>
    <div class="productprice"><a href="#">&#x20B9<strong>{{prod.productprice}}</strong></a></div>
    <div class="#"><div class="pull-right"><a href="#"><button type="button" class="btn btn-default">BUY	</button></a></div>
						
	
	
	<a href="#">
	<button type="button" class="btn btn-default">
				Add to cart
			</button>
	
                 </a></div></div>
</div>


</div>
</div>
</div>

</div>


</body>
</html>