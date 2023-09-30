<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help Page</title>
</head>
<body>
	<h1>This is Help page.</h1>
	<%
	String name = (String) request.getAttribute("name");
	List<String> friends = (List<String>) request.getAttribute("friends");
	%>
	<h1>
		Name is :
		<%=name%></h1>

	<ul>
		<%
		for (String f : friends) {
		%>
		<li><%=f%></li>
		<%
		}
		%>
	</ul>
</body>
</html>