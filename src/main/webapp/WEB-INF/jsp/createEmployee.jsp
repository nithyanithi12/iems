<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/empcreate.css">
<script src="/js/applicationScript.js"></script>
</head>
<body>
	<form name="setEmployeeDetails" action="setEmployeeDetails"
		method="post" onSubmit="return employeeInputValidation();">
		<table cellpadding="10px">
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" maxlength="30" autofocus
					required /></td>
				<td colspan="2" align="center">Address</td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="gender" value="Male" required>Male</input>
					<input type="radio" name="gender" value="Female" required>Female</input>
				</td>
				<td>Door No</td>
				<td><input type="text" name="doorNo" maxlength="5" required /></td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td><input type="date" name="dob" maxlength="30"
					min="1970-01-01" max="2001-01-01" width="100%" style="width: 100%"
					required /></td>
				<td>Street Name</td>
				<td><input type="text" name="street" maxlength="30" required /></td>
			</tr>
			<tr>
				<td>Blood Group</td>
				<td><select name="bloodGroup" style="width: 100%;" required />
					<option value="">Select</option>
					<option value="A+ve">A+</option>
					<option value="A-ve">A-</option>
					<option value="A1+ve">A1+</option>
					<option value="A1-ve">A1-</option>
					<option value="A1B+ve">A1B+</option>
					<option value="A1B-ve">A1B-</option>
					<option value="A2+ve">A2+</option>
					<option value="A2-ve">A2-</option>
					<option value="A2B+ve">A2B+</option>
					<option value="A2B-ve">A2B-</option>
					<option value="AB+ve">AB+</option>
					<option value="AB-ve">AB-</option>
					<option value="B+ve">B+</option>
					<option value="B-ve">B-</option>
					<option value="O+ve">O+</option>
					<option value="O-ve">O-</option> </select></td>
				<td>Locality</td>
				<td><input type="text" name="locality" id="temporaryLocality"
					maxlength="30" required /></td>
			<tr>
				<td>Mobile Number</td>
				<td><input type="tel" name="mobileNumber" maxlength="15"
					required /></td>
				<td>City Name</td>
				<td><input type="text" name="city" id="temporaryCityName"
					maxlength="30" required /></td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td><input type="email" name="email" maxlength="30" required /></td>
				<td>State Name</td>
				<td><select name="state" id="temporaryStateName" maxlength="30"
					style="width: 100%;" required>
						<option value="">SELECT STATE</option>
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Dadra and Nagar Haveli">Dadra and Nagar
							Haveli</option>
						<option value="Daman and Diu">Daman and Diu</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Orissa">Orissa</option>
						<option value="Puducherry">Puducherry</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Telangana">Telangana</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Uttarakhand">Uttarakhand</option>
						<option value="West Bengal">West Bengal</option>
				</select></td>
			</tr>
			<tr>
				<td>Date of Join</td>
				<td><input type="date" name="doj" maxlength="30"
					min="2008-01-01" max="2019-06-31" style="width: 100%" required />
				</td>
				<td>Pincode</td>
				<td><input type="text" name="pincode" id="temporaryPincode"
					maxlength="30" required /></td>
			</tr>
			<tr>

				<td>Role</td>
				<td><input type="text" name="role" maxlength="30" required /></td>
			</tr>
			<tr>
				<td>Salary</td>
				<td><input type="text" name="salary" maxlength="10" required /></td>
			</tr>
			<tr>
				<td>ICE Number</td>
				<td><input type="tel" name="iceNumber" maxlength="15" required /></td>
			</tr>
		</table>
		<button type="reset" class="button buttonbackground">Reset</button>
		<button type="submit" target="_self" class="button buttonbackground">
			Create</button>
		<input type="button" value="Back" class="button buttonbackground"
			onclick="location.href='displayAllEmployeeRedirect.jsp';">
	</form>
</body>
</html>