<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	


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

<div class="container">

<div class="card card-container">
 <p id="profile-name" class="profile-name-card"></p> 

	<div class="content">
	 <div class="well well-lg">
		
		<!-- 	<legend>Confirm Details</legend> -->
		<h2>Confirm Details</h2>
			 <a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
 	<form:form modelAttribute="bs">
				<form:label path="streetName">StreetName:</form:label>${bs.streetName}
					<br />
				<br />
				<form:label path="plotNo">PlotNo :</form:label>${bs.plotNo}
					<br />
				<br />
				<form:label path="city">City :</form:label>${bs.city}
					<br />
				<br />
				<form:label path="state">State :</form:label>${bs.state}
					<br />
				<br />
								
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</form:form>
</div>
	</div></div></div>
</body>
</html> 