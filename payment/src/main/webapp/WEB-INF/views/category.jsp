
<%@include file="header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
<style>body {
	background-image: ;
    background-size: cover;
	background-repeat:no-repeat;
}
</style>
</head>
<body>
  
	<h1>category Data</h1>
	<form:form action="category.do" method="POST" commandName="category">
		<table>
			<tr>
				<td>category ID</td>
				<td><form:input path="categoryid" /></td>
			</tr>
			<tr>
				<td>category name</td>
				<td><form:input path="categoryname" /></td>
			</tr>
			<tr>
				<td>category Description</td>
				<td><form:input path="categorydescription" /></td>
			</tr>

			
			<tr>
				<td colspan="2"><input type="submit" name="action" value="Add" />
					<input type="submit" name="action" value="Edit" /> <input
					type="submit" name="action" value="Delete" /> <input type="submit"
					name="action" value="Search" /></td>
			</tr>
		</table>
	</form:form>
	
</body>

</html>
