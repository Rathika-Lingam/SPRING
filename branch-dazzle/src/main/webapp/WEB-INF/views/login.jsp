

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp"%>
 
 
<html>
   <head>
      <title>Login</title>
      <style>
    
	  hr {
width: 100%;
height: 8px;
margin-left: auto;
margin-right: auto;
background-color:grey;
color:grey;
border: 0 none;
}
	 	  
      
      
/*       
      /* body {
	background-image: url(resources/images/b1.jpg);
    background-size: cover;
	background-repeat:no-repeat;
}

  */     
   .form-signin
{
    max-width: 330px;
    padding: 15px;
    margin: 0 auto;
}
.form-signin .form-control
{
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.form-signin .form-control:focus
{
    z-index: 2;
}
.form-signin input[type="text"]
{
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}
.form-signin input[type="password"]
{
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
.account-wall
{
    margin-top: 20px;
    padding: 40px 0px 20px 0px;
    background-color: #f7f7f7;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}
      
    </style>
      </head>
   <body>
  <form method="post" action="<c:url value='/login' />">
                        
      <div class="container">
    <div class="row">
<!--        <div class="col-sm-6 col-md-4 col-md-offset-4"> -->
        <div class="col-xs-12 col-sm-12 col-md-4 col-sm-offset-4 col-md-offset-4">
          
            <div class="account-wall">
         
  <h2 class="text-center login-title">PLEASE LOGIN</h2>
 <hr>
               <form class="form-signin">
                	<div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
                </div>
                	<div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Password" required>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    LOGIN</button>
                </form>
            </div>
           
        </div>
    </div>
</div>

</form>
      <input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
   </body>
</html>
   
 
   
         