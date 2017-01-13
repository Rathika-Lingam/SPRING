<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<script src="resources/jquery/jquery-3.1.1.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="resources/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<!-- jQuery library -->

 <style>


/* .container {
    margin-top: 20px;
} */


.carousel-inner img {
    width: 100%;
    max-height: 280px
}

 div.c-wrapper{
    width: 100%; 
    margin: auto;
}


.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}


image gallery
*/

div.img {
    border: 1px solid #ccc;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}

.responsive {
    padding: 0 6px;
    float: left;
    width: 24.99999%;
}

@media only screen and (max-width: 700px){
    .responsive {
        width: 49.99999%;
        margin: 6px 0;
    }
}

@media only screen and (max-width: 500px){
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}


</style>


</head>
<body>

		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
			
						
			
			<a class="navbar-brand" href="<c:url value="/home"/>"><img class="img-responsive logo" src="<c:url value="resources/images/logo1.jpg"/>" alt="" width="30" height="30"></a>
				<a class="navbar-brand" style="color: white" href="<c:url value="/home"/>">DAZZLEWORLD</a>
			</div>
			
			
				<ul class="nav navbar-nav navbar-left">
				<li><a href="index" style="color:white"><b>Home</b></a></li>
				<!-- <li><a href="#">About us</a></li> -->
				<!-- <li><a href="contact" style="color:white"><b>Contact</b></a></li> -->
			</ul>
		
		<ul class="nav navbar-nav navbar-right">
		    
		<sec:authorize access="isAnonymous()">
			<li><a href="memberShip.obj"  style="color:white"><span
					class="glyphicon glyphicon-user"></span> <b>Sign Up</b></a></li>
			</sec:authorize>
					  <sec:authorize access="isAnonymous()">
			<li><a href="login" style="color:white"><span class="glyphicon glyphicon-log-in"></span>
					<b>Login</b></a></li>
				</sec:authorize>	
				  <c:if test="${pageContext.request.userPrincipal.name != null}">
                 <li class="active"><a><b>Welcome: ${pageContext.request.userPrincipal.name}</b></a></li>
				
      <li><a href="<c:url value="logout"   />"  style="color:white"><span class="glyphicon glyphicon-log-out"></span><b>Logout</b></a></li>
  		  		
	</c:if>
	
	
</ul>
		    <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" style="color:white" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><b>Catogories</b> <span class="caret"></span></a>
          <ul class="dropdown-menu">
                 <c:forEach items="${categoryList}" var="user">
                <li><a href="allproduct?val=${user.categoryname}">${user.categoryname}</a></li> <!--RequestParam is used here -->
   </c:forEach>                 <!--Now the categoryname are stored in val -->
        </ul>
        </li>
       
       <li>     
        
        <li>
    <a href="viewall" style="color:white">
					<b>View All</b></a></li>
			
					<sec:authorize access="hasRole('ROLE_ADMIN')">
					 <li class="dropdown">
          <a href="#" style="color:white" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><b>Admin </b><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="product" >Add Product</a></li>
             <li><a href="category" >Add Category</a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
              </ul>
        </li>
    </sec:authorize>
	
	 
					  <sec:authorize access="hasRole('ROLE_USER')">
			<li>	<a href="<c:url value="/cart"/>" style="color: white"><span
					class="glyphicon glyphicon-shopping-cart"><span class="badge"> ${cartlength} </span></span> My Cart</a></li>
					      
										</sec:authorize>	
								</div>	 
		     </nav>