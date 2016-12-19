


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>category DETAIALS</h2>
 

  <div style="color: teal; font-size: 30px"></div>

  <c:if test="${!empty categoryList}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>categoryid</td>
     <td>categoryname</td>
    
      <td>categorydescription</td>
     
    </tr>
    <c:forEach items="${categoryList}" var="user">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${user.categoryid}" />
      </td>
      <td><c:out value="${user.categoryname}" />
      </td>
      <td><c:out value="${user.categorydescription}" />
            </tr>
    </c:forEach>
   </table>
  </c:if>
</body>
</html>
