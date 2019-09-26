<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="/css/empcreate.css" >
    <script src="/js/applicationScript.js"></script>
  </head>
  <body>
    <form action="createClient" id= clientCreateForm method="post" onSubmit="return clientInputValidation();" >
      <table id="createTable" align="center" cellpadding="20px">
        <tr>
          <td>Client Id</td>
          <td><input type="text" name="id" maxlength="30" required autofocus /></td>
        </tr>
        <tr>
          <td>Client Name</td>
          <td><input type="text" name="name" maxlength="30" required /></td>
        </tr>
        <tr>
          <td>Contact Mobile Number</td>
          <td> <input type="text" name="mobileNumber" maxlength="30" required /></td>
        </tr>
        <tr>
          <td>Contact E-mail</td>
          <td> <input type="email" name="email" maxlength="30" required /></td>
        </tr>
      </table>
       <table align="left" cellpadding="15px">
        <tr>
          <td>Address </td>
          <td>
          
          </td>
        </tr>
        <tr>
          <td>Door No</td>
          <td><input type="text" name="doorNo" id="temporaryDoorNo" maxlength="5" required /></td>
        </tr>
        <tr>
          <td>Street Name</td>
          <td><input type="text" name="street" id="temporaryStreetName" maxlength="30" required /></td>
        </tr>
        <tr>
          <td>Locality</td>
          <td> <input type="text" name="locality" id="temporaryLocality" maxlength="30" required /></td>
        </tr>
        <tr>
          <td>City Name</td>
          <td><input type="text" name="city" id="temporaryCityName" maxlength="30" required /></td>
        </tr>
        <tr>
          <td>State Name</td>
          <td>
            <select name="state" id ="temporaryStateName" maxlength="30" style="width:100%;" required>
              <option value="">SELECT STATE</option>
              <option value="Andhra Pradesh">Andhra Pradesh</option>
              <option value="Arunachal Pradesh">Arunachal Pradesh</option>
              <option value="Assam">Assam</option>
              <option value="Bihar">Bihar</option>
              <option value="Chhattisgarh">Chhattisgarh</option>
              <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
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
            </select>
          </td>
        </tr>
        <tr>
          <td>Pincode</td>
          <td> <input type="text" name="pincode" id="temporaryPincode" maxlength="30" required /></td>
        </tr>
      </table>
        <button type = "reset" class="button buttonbackground" > Reset </button>
        <button type = "submit" name="operation" value="Create" target="_self"class="button buttonbackground" > Create </button>
        <input type="button"  value= "Back" class="button buttonbackground" onclick="location.href='displayAllClientRedirect.jsp';">
    </form>
  </body>
</html>
