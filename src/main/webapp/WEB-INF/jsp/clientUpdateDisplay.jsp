<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/empcreate.css" >
    <script src="applicationScript.js"></script>
  </head>
  <body>
    <form name="clientCreateForm" action="updateClient" method="post" onSubmit="return clientInputValidation();">
      <table cellpadding="20px">
        <tr>
          <td>Name</td>
          <td><input type="text" name="clientName" maxlength="30" autofocus required value="${client.name}" /></td>
        </tr>
        <tr>
          <td>Mobile Number</td>
          <td> <input type="text" name="contactMobileNumber" maxlength="30" value="${client.mobileNumber}" required /></td>
        </tr>
        <tr>
          <td>E-mail</td>
          <td>
            <input type="text" name="contactEmail" maxlength="30" value="${client.contactEmail}" required />
          </td>
        </tr>
      </table>
      <table align="left" cellpadding="25px">
        <tr>
          <td>Address </td>
          <td></td>
        </tr>
        <tr>
          <td>Door No</td>
          <td><input type="text" name="doorNo"  maxlength="10" value="${address.doorNo}" required /></td>
        </tr>
        <tr>
          <td>Street Name</td>
          <td><input type="text" name="street" pattern="[A-Za-z ]+" value="${address.street}" maxlength="30" required /></td>
        </tr>
        <tr>
          <td>Locality</td>
          <td> <input type="text" name="locality" maxlength="30" value="${address.locality}" required /></td>
        </tr>
        <tr>
          <td>City Name</td>
          <td><input type="text" name="city" maxlength="30" value="${address.city}" required /></td>
        </tr>
        <tr>
          <td>State Name</td>
          <td>
            <select name="state" maxlength="30" style="width:100%;" required>
              <option selected hidden>${address.state}</option>
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
          <td> <input type="text" name="pincode" maxlength="30" value="${address.pincode}" required /></td>
        </tr>
      </table>
      <input type="hidden" name="clientId" autofocus required value="${client.clientId}" />
      <input type="button"  value= "Cancel" class="button buttonbackground"  onclick="location.href='displayAllClientRedirect.jsp';" />
      <button type = "submit" class="button buttonbackground" > Update </button>
    </form>
  </body>
</html>
