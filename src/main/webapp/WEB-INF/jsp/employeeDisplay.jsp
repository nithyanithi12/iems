<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>welcome to ideas2it</title>
<link rel="stylesheet" type="text/css" href="/css/employeeDisplay.css">
</head>
<body>
	<table cellpadding="20px">
		<tr>
			<td><b>ID</b></td>
			<td>${employee.id}</td>
			<td><b>Salary</b></td>
			<td>${employee.salary}</td>
		</tr>
		<tr>
			<td><b>Name</b></td>
			<td>${employee.name}</td>
			<td><b>Date of Join</b></td>
			<td>${employee.doj}</td>
		</tr>
		<tr>
			<td><b>Gender</b></td>
			<td>${employee.gender}</td>
			<td><b>ICE Number</b></td>
			<td>${employee.iceNumber}</td>
		</tr>
		<tr>
			<td><b>Blood Group</b></td>
			<td>${employee.bloodGroup}</td>
			<td><b>Address </b></td>
			<td></td>
		</tr>
		<tr>
			<td><b>Date of Birth</b></td>
			<td>${employee.dob}</td>
			<td><b>Door No</b></td>
			<td>${employee.address.doorNo}</td>
		</tr>
		<tr>
			<td><b>Age</b></td>
			<td>${employee.age}</td>
			<td><b>Street</b></td>
			<td>${employee.address.street}</td>
		</tr>
		<tr>
			<td><b>Experience</b></td>
			<td>${employee.experience}</td>
			<td><b>Locality</b></td>
			<td>${employee.address.locality}</td>
		</tr>
		<tr>
			<td><b>Mobile Number</b></td>
			<td>${employee.mobileNumber}</td>
			<td><b>City Name</b></td>
			<td>${employee.address.city}</td>
		</tr>
		<tr>
			<td><b>E-Mail</b></td>
			<td>${employee.email}</td>
			<td><b>State Name</b></td>
			<td>${employee.address.state}</td>
		</tr>
		<tr>
			<td><b>Role</b></td>
			<td>${employee.role}</td>
			<td><b>Pincode</b></td>
			<td>${employee.address.pincode}</td>
		</tr>
	</table>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>
	<input type="button" value="Ok" class="button buttonbackground"
		onclick="goBack();">
</body>
</html>
