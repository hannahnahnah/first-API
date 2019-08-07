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
<title>Tiny Display</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<ul class="navbar-nav ml-auto" >
		<li class="nav-item"><a class="nav-link" href="/complete">Innovators List<span class="sr-only">(current)</span></a></li>
		<li class="nav-item"><a class="nav-link" href="/">Inventors List</a></li>
	</ul>
</nav>

<div class="container">
<h1>Inventors</h1>
<table class="table">
	<thead>
	<tr>
		<th>Name</th>
		<th>Invention</th>
		<th>Year</th>
	</tr>
	</thead>
	
	<tbody>
		<c:forEach var="inventors" items="${inventors}">
		<tr>
			<td>${inventors.name }</td>
			<td>${inventors.invented }</td>
			<td>${inventors.year }</td>
		<tr>
		</c:forEach>
	</tbody>
</table>

<a href="/complete" class="btn btn-primary btn-lg btn-block">Go to Inventors List</a>
</div>
</body>
</html>