<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
<title>IEMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<script>
	function openurl(url) {
		document.getElementById('iframe').src = url;
	}
</script>
<link rel="stylesheet" type="text/css" href="/css/main.css">
</head>
<body style="background-color: #1e72fa;">

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href=""><i class="fa fa-home" aria-hidden="true"></i></a>
			</div>
			
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="dropdown "><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Activities</a></li>
						
					<li class="dropdown"><a  class="dropdown-toggle"
						data-toggle="dropdown">Project</a></li>
						
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Client</a></li>
						
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Queries <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="show-solved-query">Solved Queries</a></li>
							<li><a href="show-employee-query">All Queries</a></li>
						</ul></li>
						
						<li><a onclick="openurl('displayLayout')">Layout</a></li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					
					<li><a onclick="openurl('/getProfile')"><i class="fa fa-user" style="font-size:25px""; aria-hidden="true"></i></a></li>
					
					<li><a href="/logoutUser"><span class="glyphicon glyphicon-log-in"></span>
							Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="empmaindiv">
		<iframe style="border-radius: 10px; border: none;" scrolling="yes" src="getActivities" id="iframe" />
		<div>
			<footer class="container-fluid text-center">
				<p>Footer Text</p>
			</footer>
</body>
</html>
