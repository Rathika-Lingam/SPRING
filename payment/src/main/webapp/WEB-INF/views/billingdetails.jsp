<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing Details</title>
<style>
	  /* hr {
width: 100%;
height: 8px;
margin-left: auto;
margin-right: auto;
background-color:black;
color:#FF0066;
border: 0 none;
} */


  .card-container.card {
	max-width: 700px;
	padding: 40px 40px;
}

.profile-name-card {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	margin: 10px 0 0;
	min-height: 1em;
}


	  </style>
	  



</head>
<body>
<a href="${flowExecutionUrl}&_eventId_home">Home</a>
        
				<form:form modelAttribute="bs"><br />

        
      
        <form class="form-horizontal">
<div class="container">

<div class="card card-container">
 <p id="profile-name" class="profile-name-card"></p> 
      <div class="well well-lg">
                  <div class="row">
                    <div class="col-md-12">
    
              <h3>Shipping Address:</h3>
                <hr />
        <div class="form-group">
            <label class="col-md-4 control-label" for="billingStreet">Street Name</label>
             <div class="col-md-12">
            <form:input path="streetName" id="billingStreet" class="form-Control" />
            					<!-- to display validation messages -->
			<%-- 		<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('streetName')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
             --%></div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="billingPlotNumber">Plot Number</label>
             <div class="col-md-12">
            <form:input path="plotNo" id="billingApartmentNumber" class="form-Control" />
        					<!-- to display validation messages -->
					<%-- <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('plotNo')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /> --%>
        </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="billingCity">City</label>
             <div class="col-md-12">
            <form:input path="city" id="billingCity" class="form-Control" />
       					<!-- to display validation messages -->
				<%-- 	<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
  --%>      </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="billingState">State</label>
             <div class="col-md-12">
            <form:input path="state" id="billingState" class="form-Control" />
            					<!-- to display validation messages -->
				<%-- 	<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('State')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
        --%>     </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="billingCountry">Country</label>
             <div class="col-md-12">
            <form:input path="country" id="billingCountry" class="form-Control" />
        </div>
      
</div>
     
        <input type="hidden" name="_flowExecutionKey" />

       	<div class="row">
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
			

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_submit" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
        </div>  </div></div></div></div></div></div></div>
</form>
        </form:form>
      


</body>
</html>
<%@ include file="footer.jsp" %>