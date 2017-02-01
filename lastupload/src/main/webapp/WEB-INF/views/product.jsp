<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %>
<html>
<head>
    <title> Add PRODUCTS</title>
	 <meta charset="utf-4">
  <style>
  .error {
	color:  #ff0033  ;
	font-style: italic;
	font-weight: bold;
}
 body {
	background-color:black;
   
}


</style>
</head>
<body>
<form:form action="product.do" method="POST" commandName="product" enctype="multipart/form-data">
<form class="form-horizontal">
<fieldset>

    <div class="container">
        </div>
    

<!-- Form Name -->

<!-- Text input-->
<div class="container">
		<div class="row">
        <div class="col-lg-4">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-lg-4">
                       <div class="row">
          
                <h3><center>
                  ADD PRODUCT</h3></center>
            </div>
     <hr>
		
<div class="form-group">
  <label  for="product_id">PRODUCT ID</label>  
  <div class="col-lg-2">
  <form:input  path="productid" class="form-control input-lg" required="" ></form:input>
  <form:errors path="productid"  cssClass="error" />
  </div>
</div>
<br>
<!-- Text input-->
<div class="form-group">
  <label for="product_name">PRODUCT NAME</label>  
  <div class="col-lg-4">
  <form:input id="product_name" name="product_name" path="productname" class="form-control input-lg" required="" ></form:input>
    <form:errors path="productname"  cssClass="error" />
  </div>
</div>
<br>


<div class="form-group">
  <label class="col-lg-4 " >PRODUCT CATEGORY</label>
  <div class="col-lg-4">   
    <form:select path="categoryname" class="form-control">
    
     <c:forEach items="${categoryList}" var="user">
    
    <form:option value="${user.categoryname}"> ${user.categoryname} </form:option>
  
    </c:forEach>
   
  </form:select>
  
  </div>
</div>

<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-lg-4 control-label" for="available_quantity">PRODUCT QUANTITY</label>  
  <div class="col-lg-4">
  <form:input id="available_quantity" name="available_quantity"  class="form-control input-lg" required="" path="productquantity"></form:input>
   <%--  <form:errors path="productquantity" cssClass="error" /> --%>
  </div>
</div>


<br>
<!-- Text area -->
<div class="form-group">
  <label class="col-lg-4 control-label" for="product_description">PRODUCT DESCRIPTION</label>
  <div class="col-lg-4">                     
    <form:input path="productdescription" class="form-control" id="product_description"  required="" name="product_description"></form:input>
    <form:errors path="productdescription"  cssClass="error" />
  </div>
</div>
<br>
<!-- Text input-->
<div class="form-group">
  <label class="col-lg-4 control-label" for="product_price">PRODUCT PRICE</label>  
  <div class="col-lg-4">
  <form:input id="product_price" name="product_price" path="productprice" class="form-control input-lg" required="" ></form:input>
    <%-- <form:errors path="productprice"  cssClass="error" /> --%>
  </div>
</div>

 <br>
<!-- File Button --> 
<div class="form-group">
  <label class="col-lg-4 control-label" >IMAGENAME</label>
  <div class="col-lg-4">
    <form:input path="imagename" class="form-control" required=""></form:input>
    <form:errors path="imagename"  cssClass="error" />
  </div>
</div>

<br>
 <div class="form-group">
  <label class="col-lg-4 control-label" >UPLOAD IMAGE</label>
  <div class="col-lg-4">
 
 		File to upload: <form:input type="file" name="file" path="file"></form:input>
 		<%-- <form:errors path="file" cssClass="error" /> --%>
 		<br>
<!-- Button -->
<div class="form-group">
 
  <div class="col-lg-12">
  

<!--   <input type="submit" name="action" value="Add"/>
 
  	<input type="submit" name="action" value="" /> 
  	<input type="submit" name="action" value="Delete" />
 -->  	
  	
  	
  				<div class="row">
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" name="action" value="Add"
							class="btn btn-default">Add</button>
						<button type="submit" name="action" value="Edit"
							class="btn btn-default">Update</button>
					</div>
				</div>
			</div>
			
  	
  	
  	
  	
  </div>
  
  </div>
  </div>
  </div>
  </div>
  </div></form>
 </div> 
 </div>
 </div>
 </div>

		
		</form>	
  
  
     </form:form>

<%-- <div>
<img src="<c:url value = '/resources/images/${img}.jpg'/>"alt="test" class="img-responsive" />
</div>
 --%>
<%@include file="footer.jsp" %>
</body>
</html>





