<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Performeter</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<form action="/Performeter/Login" method="post">
		<input type="hidden" name="action" value="dologin"/>
		Employee ID:<input type="text" name="employeeId" value="<%=request.getAttribute("employeeId")==null?"":request.getAttribute("employeeId") %>"/>
		Password:<input type="text" name="employeePassword" value="<%=request.getAttribute("employeePassword")==null?"":request.getAttribute("employeePassword") %>"/>
		<input type="submit" value="login">
	</form>
	<h4><%=request.getAttribute("validationMessage")==null?"":request.getAttribute("validationMessage")%></h4>
</body>
</html>