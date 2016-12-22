<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %>
<html>
<head>
    <title> Add PRODUCTS</title>
	 <meta charset="utf-8">
  <style>
  .error {
	color:  #ff0033  ;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
<form:form action="product.do" method="POST" commandName="product" enctype="multipart/form-data">
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>ADD PRODUCTS</legend>

<!-- Text input-->
<div class="container">
		
<div class="form-group">
  <label class="col-lg-8 control-label" for="product_id">PRODUCT ID</label>  
  <div class="col-lg-8">
  <form:input  path="productid" class="form-control input-md" required="" ></form:input>
  <form:errors path="productid"  cssClass="error" />
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-lg-8 control-label" for="product_name">PRODUCT NAME</label>  
  <div class="col-lg-8">
  <form:input id="product_name" name="product_name" path="productname" class="form-control input-md" required="" ></form:input>
    <form:errors path="productname"  cssClass="error" />
  </div>
</div>



<div class="form-group">
  <label class="col-lg-8 control-label" >PRODUCT CATEGORY</label>
  <div class="col-lg-8">   
    <form:select path="categoryname" class="form-control">
    
     <c:forEach items="${categoryList}" var="user">
    
    <form:option value="${user.categoryname}"><%-- ${user.categoryname} --%></form:option>
  
    </c:forEach>
    <form:errors path="categoryname"  cssClass="error" />
  </form:select>
  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-lg-8 control-label" for="available_quantity">PRODUCT QUANTITY</label>  
  <div class="col-lg-8">
  <form:input id="available_quantity" name="available_quantity"  class="form-control input-md" required="" path="productquantity"></form:input>
    <form:errors path="productquantity" cssClass="error" />
  </div>
</div>



<!-- Text area -->
<div class="form-group">
  <label class="col-lg-8 control-label" for="product_description">PRODUCT DESCRIPTION</label>
  <div class="col-lg-8">                     
    <form:input path="productdescription" class="form-control" id="product_description"  required="" name="product_description"></form:input>
    <form:errors path="productdescription"  cssClass="error" />
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-lg-8 control-label" for="product_price">PRODUCT PRICE</label>  
  <div class="col-lg-8">
  <form:input id="product_price" name="product_price" path="productprice" class="form-control input-md" required="" ></form:input>
    <form:errors path="productprice"  cssClass="error" />
  </div>
</div>

 
<!-- File Button --> 
<div class="form-group">
  <label class="col-lg-8 control-label" >IMAGENAME</label>
  <div class="col-lg-8">
    <form:input path="imagename" class="form-control" required=""></form:input>
    <form:errors path="imagename"  cssClass="error" />
  </div>
</div>


 <div class="form-group">
  <label class="col-lg-8 control-label" >UPLOAD IMAGE</label>
  <div class="col-lg-8">
 
 		File to upload: <input type="file" name="file">
<!-- Button -->
<div class="form-group">
 
  <div class="col-lg-12">
  

  <input type="submit" name="action" value="Add"/>
 
  	<input type="submit" name="action" value="Edit" /> 
  	<input type="submit" name="action" value="Delete" />
  	
  	 <input type="submit" name="action" value="Search" />
  </div>
  
  </div>
  </div>
  </div>
  </div>
  
  
 
		
		</form>	
  
  
     
</fieldset>
</form>
</form:form>

<%-- <div>
<img src="<c:url value = '/resources/images/${img}.jpg'/>"alt="test" class="img-responsive" />
</div>
 --%>
<%@include file="footer.jsp" %>
</body>
</html>





