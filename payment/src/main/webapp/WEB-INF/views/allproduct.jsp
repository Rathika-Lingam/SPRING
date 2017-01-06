<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="resources/js/js.txt"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

  
  
  








	  </style>
	  



</head>
<body>




<h1 align="center">ALL PRODUCT</h1>
<hr/>
	 	  
  
        

<div class="container">
<div class="row">
<c:forEach items="${productList}" var="prod">
<div class="col-md-4">
		
					
			<div class="thumbnail zoom" id="ex1"> 
		<div class="div1">	
     
      <div class="mag">
    <img data-toggle="magnify"  src="<c:url value="/resources/images/${prod.imagename}.jpg"/>"class="img-responsive">
    <div class="producttitle"><a href="#">${prod.productname}</a></div>
    <div class="productprice">
	<div class="pricetext"><a href="#">${prod.productprice}</a></div>
	</div>
	</div>
	<div class="row">
						<div class="col-md-12">
							<center><a href="<c:url value="productdetails?pdt=${prod.productid}"/>" class="btn btn-success ">view in detail</a></center>
						</div>
					</div>
	
                 </a></div></div>
</div>

</c:forEach></div>
</div>




</body>
</html>