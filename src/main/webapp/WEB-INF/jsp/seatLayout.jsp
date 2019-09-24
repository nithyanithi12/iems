<!DOCTYPE html>
<html>
<head>
<title>Seat</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" type="text/css" href="/css/seat.css" >
<script src="/js/pagetemp.js"></script>

</head>
<body style="background-color: #dae1eb">
	<div class="modal fade" id="modalForm" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<form action="assign" method="post">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header text-center">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body mx-3">
						<div class="md-form mb-5">
						    <input type="hidden" id="boxid" name="boxid" value="boxid" class="form-control validate">
							<input type="text" id="employeeId"  name="employeeId"class="form-control validate"
								placeholder="Enter employee Id">
						</div>
					</div>
					<div class="modal-footer d-flex justify-content-center">
						<button type="submit" class="btn btn-default">Assign</button>
					</div>
				</div>
			</div>
		</form>
	</div>

	<div class="chat-popup" id="myForm">
		<form action="/action_page.php" class="form-container">
			<h1>Chat</h1>

			<label for="msg"><b>Message</b></label>
			<textarea placeholder="Type message.." name="msg" required></textarea>

			<button type="submit" class="btn btn-success">Send</button>
			<button type="button" class="btn btn-danger" onclick="closeForm()">Close</button>
		</form>
	</div class ="chat-popup">
	<div class="maindiv">
		<table align="center">
			<tr>
				<td>
					<div>
						<ol class="borderimgr">
							<li class="row row--3">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="3AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3AL" /> <label
										for="3AL"></label></li>
									<li class="seatl"><input type="checkbox" id="3BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3BL" /> <label
										for="3BL"></label></li>
									<li class="seatl"><input type="checkbox" id="3CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3CL" /> <label
										for="3CL"></label></li>
									<li class="seatl"><input type="checkbox" id="3DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3DL" /> <label
										for="3DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="3EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3EL" /> <label
										for="3EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="3FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3FL"/> <label
										for="3FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--4">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="4AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4AL" /> <label
										for="4AL"></label></li>
									<li class="seatl"><input type="checkbox" id="4BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4BL" /> <label
										for="4BL"></label></li>
									<li class="seatl"><input type="checkbox" id="4CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4CL" /> <label
										for="4CL"></label></li>
									<li class="seatl"><input type="checkbox" id="4DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4DL" /> <label
										for="4DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="4EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4EL" /> <label
										for="4EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="4FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4FL" /> <label
										for="4FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--5">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="5AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5AL" /> <label
										for="5AL"></label></li>
									<li class="seatl"><input type="checkbox" id="5BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5BL" /> <label
										for="5BL"></label></li>
									<li class="seatl"><input type="checkbox" id="5CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5CL" /> <label
										for="5CL"></label></li>
									<li class="seatl"><input type="checkbox" id="5DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5DL" /> <label
										for="5DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="5EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5EL" /> <label
										for="5EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="5FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5FL" /> <label
										for="5FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--6">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="6AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6AL" /> <label
										for="6AL"></label></li>
									<li class="seatl"><input type="checkbox" id="6BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6BL" /> <label
										for="6BL"></label></li>
									<li class="seatl"><input type="checkbox" id="6CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6CL" /> <label
										for="6CL"></label></li>
									<li class="seatl"><input type="checkbox" id="6DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6DL" /> <label
										for="6DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="6EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6EL" /> <label
										for="6EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="6FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6FL" /> <label
										for="6FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<br>
							<li class="row row--7">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="7AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="7AL" /> <label
										for="7AL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="7BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="7BL" /> <label
										for="7BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="7CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="7CL" /> <label
										for="7CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="7DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="7DL" /> <label
										for="7DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="7EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="7EL" /> <label
										for="7EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="7FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="7FL" /> <label
										for="7FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--8">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="8AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="8AL" /> <label
										for="8AL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="8BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="8BL" /> <label
										for="8BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="8CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="8CL" /> <label
										for="8CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="8DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="8DL" /> <label
										for="8DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="8EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="8EL" /> <label
										for="8EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="8FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="8FL" /> <label
										for="8FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--9">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="9AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="9AL" /> <label
										for="9AL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="9BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="9BL" /> <label
										for="9BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="9CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="9CL" /> <label
										for="9CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="9DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="9DL" /> <label
										for="9DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="9EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="9EL" /> <label
										for="9EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="9FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="9FL" /> <label
										for="9FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--10">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="10AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="10AL" />     <label for="10AL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="10BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="10BL" /> <label for="10BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="10CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="10CL" /> <label for="10CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="10DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="10DL" /> <label for="10DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="10EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="10EL" /> <label for="10EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="10FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="10FL" /> <label for="10FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--11">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="11AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="11AL" />     <label for="11AL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="11BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="11BL" /> <label for="11BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="11CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="11CL" /> <label for="11CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="11DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="11DL" /> <label for="11DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="11EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="11EL" /> <label for="11EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="11FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="11FL" /> <label for="11FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<br>
							<br>
							<br>
							<br>
							<br>
							<li class="row row--12">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="12AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="12AL" />     <label for="12AL"></label></li>
									<li class="seatl"><input type="checkbox" id="12BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="12BL" /> <label for="12BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="12CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="12CL" /> <label for="12CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="12DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="12DL" /> <label for="12DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="12EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="12EL" /> <label for="12EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="12FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="12FL" /> <label for="12FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--13">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="13AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="13AL" />     <label for="13AL"></label></li>
									<li class="seatl"><input type="checkbox" id="13BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="13BL" /> <label for="13BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="13CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="13CL" /> <label for="13CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="13DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="13DL" /> <label for="13DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="13EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="13EL" /> <label for="13EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="13FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="13FL" /> <label for="13FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--14">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="14AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="14AL" />     <label for="14AL"></label></li>
									<li class="seatl"><input type="checkbox" id="14BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="14BL" /> <label for="14BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="14CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="14CL" /> <label for="14CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="14DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="14DL" /> <label for="14DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="14EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="14EL" /> <label for="14EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="14FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="14FL" /> <label for="14FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--15">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="15AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="15AL" />     <label for="15AL"></label></li>
									<li class="seatl"><input type="checkbox" id="15BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="15BL" /> <label for="15BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="15CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="15CL" /> <label for="15CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="15DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="15DL" /> <label for="15DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="15EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="15EL" /> <label for="15EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="15FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="15FL" /> <label for="15FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<li class="row row--16">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="16AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="16AL" />     <label for="16AL"></label></li>
									<li class="seatl"><input type="checkbox" id="16BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="16BL" /> <label for="16BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="16CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="16CL" /> <label for="16CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="16DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="16DL" /> <label for="16DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="16EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="16EL" /> <label for="16EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="16FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="16FL" /> <label for="16FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>							
							<li class="row row--17">
								<ol class="seats">
									<li class="seatl"><input type="checkbox" id="17AL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="17AL" />     <label for="17AL"></label></li>
									<li class="seatl"><input type="checkbox" id="17BL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="17BL" /> <label for="17BL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="17CL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="17CL" /> <label for="17CL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="17DL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="17DL" /> <label for="17DL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatl"><input type="checkbox" id="17EL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="17EL" /> <label for="17EL"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatl"><input type="checkbox" id="17FL" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="17FL" /> <label for="17FL"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
								</ol>
							</li>
							<br>
						</ol>
					</div>
				</td>
				<td>						
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br><ol class="borderimgl" >
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
							<li class="row row--1">
								<ol class="seats">
									<li class="seatr"><input type="checkbox" id="1AR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="1AR" /> <label
										for="1AR"></label></li>
									<li class="seatr"><input type="checkbox" id="1BR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="1BR" /> <label
										for="1BR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="1CR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="1CR" /> <label
										for="1CR"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" disabled id="1DR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="1DR" />
										<label for="1DR"><i
											class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="1ER" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="1ER" /> <label
										for="1ER"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="1FR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="1FR" /> <label
										for="1FR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
								</ol>
							</li>
							<li class="row row--2">
								<ol class="seats">
									<li class="seatr"><input type="checkbox" id="2AR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="2AR" /> <label
										for="2AR"></label></li>
									<li class="seatr"><input type="checkbox" id="2BR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="2BR" /> <label
										for="2BR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="2CR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="2CR" /> <label
										for="2CR"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="2DR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="2DR" /> <label
										for="2DR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="2ER" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="2ER" /> <label
										for="2ER"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="2FR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="2FR" /> <label
										for="2FR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
								</ol>
							</li>
							<li class="row row--3">
								<ol class="seats">
									<li class="seatr"><input type="checkbox" id="3AR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3AR" /> <label
										for="3AR"></label></li>
									<li class="seatr"><input type="checkbox" id="3BR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3BR" /> <label
										for="3BR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="3CR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3CR" /> <label
										for="3CR"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="3DR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3DR" /> <label
										for="3DR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="3ER" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3ER" /> <label
										for="3ER"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="3FR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="3FR" /> <label
										for="3FR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
								</ol>
							</li>
							<li class="row row--4">
								<ol class="seats">
									<li class="seatr"><input type="checkbox" id="4AR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4AR" /> <label
										for="4AR"></label></li>
									<li class="seatr"><input type="checkbox" id="4BR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4BR" /> <label
										for="4BR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="4CR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4CR" /> <label
										for="4CR"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="4DR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4DR" /> <label
										for="4DR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="4ER" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4ER" /> <label
										for="4ER"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="4FR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="4FR" /> <label
										for="4FR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
								</ol>
							</li>
							<li class="row row--5">
								<ol class="seats">
									<li class="seatr"><input type="checkbox" id="5AR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5AR" /> <label
										for="5AR"></label></li>
									<li class="seatr"><input type="checkbox" id="5BR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5BR" /> <label
										for="5BR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="5CR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5CR" /> <label
										for="5CR"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="5DR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5DR" /> <label
										for="5DR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="5ER" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5ER" /> <label
										for="5ER"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="5FR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="5FR" /> <label
										for="5FR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
								</ol>
							</li>
							<li class="row row--6">
								<ol class="seats">
									<li class="seatr"><input type="checkbox" id="6AR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6AR" /> <label
										for="6AR"></label></li>
									<li class="seatr"><input type="checkbox" id="6BR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6BR" /> <label
										for="6BR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="6CR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6CR" /> <label
										for="6CR"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="6DR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6DR" /> <label
										for="6DR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
									<li class="seatr"><input type="checkbox" id="6ER" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6ER" /> <label
										for="6ER"><i class="fas fa-chair chair fa-rotate-270"></i></label></li>
									<li class="seatr"><input type="checkbox" id="6FR" data-toggle="modal" class="checkbox"  data-target="#modalForm" data-id="6FR" /> <label
										for="6FR"><i class="fas fa-chair chair fa-rotate-90"></i></label></li>
								</ol>
							</li>
						</ol>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>