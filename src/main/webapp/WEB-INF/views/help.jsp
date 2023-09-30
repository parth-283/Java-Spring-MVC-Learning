<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help Page</title>
</head>
<body>
	<h1>This is Help page.</h1>
	<h1>Name is : ${name}</h1>

	<ul>
		<c:forEach var="item" items="${friends}">
			<%-- <li>${item}</li> --%>
			<li><c:out value="${item}"></c:out></li>
		</c:forEach>
	</ul>
</body>
</html>