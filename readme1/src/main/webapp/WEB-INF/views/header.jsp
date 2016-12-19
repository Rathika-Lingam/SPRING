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
/* body {
	background-color:#ffc1c1;
}
 */


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
				<a class="navbar-brand" href="#" style="color:white"><b>DAZZLEWORLD</b></a>
			</div>
			<ul class="nav navbar-nav navbar-left">
				<li><a href="index" style="color:white"><b>Home</b></a></li>
				<!-- <li><a href="#">About us</a></li> -->
				<li><a href="contact" style="color:white"><b>Contact</b></a></li>
			</ul>
		
		<ul class="nav navbar-nav navbar-right">
		    
		
			<li><a href="register"  style="color:white"><span
					class="glyphicon glyphicon-user"></span> <b>Sign Up</b></a></li>
			
					  <sec:authorize access="isAnonymous()">
			<li><a href="login" style="color:white"><span class="glyphicon glyphicon-log-in"></span>
					<b>Login</b></a></li>
				</sec:authorize>	
				  <c:if test="${pageContext.request.userPrincipal.name != null}">
                 <li class="active"><a><b>Welcome: ${pageContext.request.userPrincipal.name}</b></a></li>
				
      <li><a href="<c:url value="logout"   />"  style="color:white"><span class="glyphicon glyphicon-log-out"></span><b>Logout</b></a></li>
  		  		
	</c:if>
	
	
	<li><a href="checkout.obj"  style="color:white"><span
					class="glyphicon glyphicon-user"></span> <b>Checkout</b></a></li>
	
	
 <%--  <div class="modal fade" id="myModal3" role="dialog">
       <div class="modal-dialog">
       <div class="modal-header" style="padding:35px 50px;">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
                 <div class="modal-body" style="padding:40px 50px;">
                 <h2>${message}</h2>
        
                 </div>`
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
      
    </div>
 
<c:if test="${message=='Logged Out successfully, login again to continue !'}">
  <script type="text/javascript">
    $(window).load(function(){
        $('#myModal3').modal('show');    });
</script>
 </c:if>


 --%>
					      
	</ul>
		    <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" style="color:white" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><b>Catogories</b> <span class="caret"></span></a>
          <ul class="dropdown-menu">
         
        <c:forEach items="${categoryList}" var="user">
        
        <li><a href="allproduct?val=${user.categoryname}">${user.categoryname}</a></li>
           
   
   </c:forEach>
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
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
              </ul>
        </li>
    </sec:authorize>
	 </ul>
		<div class="col-sm-6 col-sm-offset-3">
			<div id="imaginary_container">
				<div class="input-group stylish-input-group">
					<input type="text" class="form-control" placeholder="Search">
					<span class="input-group-addon">
						<button type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
					</div>
			</div>
		</div>
					  <sec:authorize access="hasRole('ROLE_USER')">
					  
					  <li >
      <a  href="cart" class="btn btn-default btn-sm"> <span
							class="glyphicon glyphicon-shopping-cart"></span><i><b>My Cart</b></i></a>
     
    </li>      
					  
								</sec:authorize>	
								</div>			
		     </nav>