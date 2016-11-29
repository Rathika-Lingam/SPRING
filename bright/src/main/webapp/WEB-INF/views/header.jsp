<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
    max-height: 460px
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
				<a class="navbar-brand" href="#">DAZZLEWORLD</a>
			</div>
			<ul class="nav navbar-nav navbar-left">
				<li><a href="index"><span class="glyphicons glyphicons-home"></span>Home</a></li>
				<li><a href="regi"><span
						class="glyphicons glyphicons-roundabout"></span>About us</a></li>
				<li><a href="contact">Contact</a></li>
			</ul>
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="register"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li>
		</ul>
		</div>
		
		    <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Catogories <span class="caret"></span></a>
          <ul class="dropdown-menu">
         
        <c:forEach items="${categoryList}" var="user">
        
        <li><a href="allproduct?val=${user.categoryname}">${user.categoryname}</a></li>
           
   
   </c:forEach>
        </ul>
        </li>
       
       <li>     
        
        <li>
    <a href="viewall">
					View All</a></li>
			
					
					 <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="product">Add Product</a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
              </ul>
        </li>
    
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
</nav>