<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css"
	crossorigin="anonymous">
<title>Complete Display</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<ul class="navbar-nav ml-auto" >
		<li class="nav-item"><a class="nav-link" href="/complete">Innovators List<span class="sr-only">(current)</span></a></li>
		<li class="nav-item"><a class="nav-link" href="/">Inventors List</a></li>
	</ul>
</nav>

<div class="container">
<h1>Innovators</h1>
<table class="table">

	<thead>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Innovation</th>
			<th>Year</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var="innovators" items="${innovators}">
		<tr>
			<td>${innovators.firstName }</td>
			<td>${innovators.lastName }</td>
			<td>${innovators.innovation }</td>
			<td>${innovators.year }</td>
		</tr>	
		</c:forEach>
	</tbody>



</table>

<a href="/" class="btn btn-primary btn-lg btn-block">Go to Inventors List</a>
</div>
</body>
</html>