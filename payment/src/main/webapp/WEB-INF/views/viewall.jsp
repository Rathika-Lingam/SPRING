<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="resources/js/js.txt"></script>
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Black+Ops+One&effect=wallpaper">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW ALL</title>

  <style>
  
  

.mag {
    width:200px;
    margin: 0 auto;
    float: none;
}
    
.mag img {
    max-width: 100%;
}
        
  

.magnify {
    position: relative;
    cursor: none
}

.magnify-large {
    position: absolute;
    display: none;
    width: 175px;
    height: 175px;

    -webkit-box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
       -moz-box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
            box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
    
    -webkit-border-radius: 100%;
       -moz-border-radius: 100%;
             border-radius: 100%
}

  
  
  
  
	  hr {
width: 100%;
height: 8px;
margin-left: auto;
margin-right: auto;
background-color:#8B3A62;                           /* #FF0066 */
color:#FF0066;
border: 0 none;
}
</style>
	  
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js">      </script> 
<script>
	
 angular.module('myApp', [])
 .controller('MyController', ['$scope', '$http', function($scope, $http) {

    $http.get("light").success(function(data){
    	
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
		
		<div class="col-md-4">
		
					
			<div class="thumbnail zoom" id="ex1"> 
		<div class="div1">	
     
    <img  src="<c:url value="/resources/images/{{prod.imagename}}.jpg"/>"class="img-responsive" style="width: 4000px; height: 300px">
    </div>
    				<div class="caption">
					<div class="row">
						<div class="font-effect-wallpaper" class="col-md-12 col-xs-12" style="color:#8B3A62">
						
						
						
						
							<center>{{prod.productname}}</center>
							
						</div>
					</div>
					
					
					<sec:authorize access="hasAnyRole('ROLE_ADMIN')"> 
					<div class="row">
						<div class="col-md-12">
						<h4>
						<center>Qty:{{prod.productquantity}}</center>
						</h4>
						</div>
					</div>
					</sec:authorize>
					
					
					
    
    <div class="row">
						<div class="col-md-12 col-xs-12 price">

								
    
    <a href="#">&#x20B9<strong>{{prod.productprice}}</strong></a></div>
    
      
    					<div class="row">
						<div class="col-md-12">
							<center><a href="<c:url value="productdetails?pdt={{prod.productid}}"/>" class="btn btn-success ">view in detail</a></center>
						</div>
					</div>
    
       <br>
    
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<div class="row"><center>
						<div class="col-md-4">
						
							<a href="<c:url value="edit?val={{prod.productid}}"/>"><span
								class="		glyphicon glyphicon-pencil"></span></a>
						</div>
						
						<div class="col-md-4">
							<a href="<c:url value="delete?val={{prod.productid}}"/>" ><span
								class="	glyphicon glyphicon-trash"></span> </a>
								
						</div>
	</center>				</div>
				</sec:authorize></div></div></div></div>
</div>


</div>
</div>





</body>
</html>