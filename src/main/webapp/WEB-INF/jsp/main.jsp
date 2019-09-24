<!DOCTYPE html>
<html lang="en">
<head>
<title>iems</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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
				<a class="navbar-brand" href="pagetemp.html">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="dropdown "><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Employee <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Create</a></li>
							<li><a href="#">Display All</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Project <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Create Project</a></li>
							<li><a href="#">Display All</a></li>
							<li><a href="#">Manage Project Employee</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Client <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Create</a></li>
							<li><a href="#">Display All</a></li>
							<li><a href="#">Add project</a></li>
						</ul></li>
					<li><a onclick="openurl('seatLayout')">Layout</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="empmaindiv">
		<iframe style="border-radius: 10px; border: none;" scrolling="yes"
			src="" id="iframe" />
		<div>
			<footer class="container-fluid text-center">
				<p>Footer Text</p>
			</footer>
</body>
</html>
