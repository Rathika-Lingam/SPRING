<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp"%>
<html>
<head>
<style>

body {
	background-image: url(resources/images/back1.jpg);
    background-size: cover;
	background-repeat:no-repeat;
}


/* body{
    background-color: #525252;
}
 */.centered-form{
	margin-top:100px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}

����.error {
��������color: red; font-weight: bold;
����}
</style>



</head>
<body>

<form:form class="form-horizontal" action="user.do" commandName="user" method="POST" >

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-12 col-md-4 col-sm-offset-4 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Create Account</h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
	 	   
			    					
  					
			    			<div class="form-group">					    					
			                <form:input type="text" path="username"  class="form-control input-sm" placeholder="UserName" /> 
			                <form:errors path="username" cssClass="error"/>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<form:input type="text" path="phonenumber" id="phonenumber" class="form-control input-sm" placeholder="phonenumber" />
			    					 <form:errors path="phonenumber" cssClass="error"/>
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    			
			    			
			    			
			    				<form:input type="email" path="email" class="form-control input-sm" placeholder="Email Address" />
			    			<form:errors path="email" cssClass="error"/>
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<form:input type="password" path="password" id="password" class="form-control input-sm" placeholder="Password" />
			    					<form:errors path="password" cssClass="error"/>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<form:input type="password" path="confirmpassword" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password" />
			    					
			    					<form:errors path="password" cssClass="error"/>
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<input type="submit" name="action" value="Register"  class="btn btn-info btn-block">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
    </form:form>
</body>
</html>

</body>
</html>