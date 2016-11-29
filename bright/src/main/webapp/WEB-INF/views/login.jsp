

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  isELIgnored="false"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp"%>
 
 
<html>
   <head>
      <title>Spring Security Demo - jCombat</title>
   </head>
   <body>
     
         <h2>Demo login Page</h2>
         <div style="text-align: center; padding: 30px;border: 1px solid green;width: 250px;">
            <form method="post" action="<c:url value='/login' />">
             <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> --%> 
             
               <table>
                  <tr>
                     <td colspan="2" style="color: red">${message}</td>
                  </tr>
                  <tr>
                     <td>Username:</td>
                     <td><input type="text" name="username" /></td>
                  </tr>
                  <tr>
                     <td>Password:</td>
                     <td><input type="password" name="password" /></td>
                  </tr>
                  <tr>
                     <td colspan="2"><input type="submit" value="Login" /></td>
                  </tr>
                  
                 
                  
               </table>
            </form>
         </div>
     
   </body>
</html>