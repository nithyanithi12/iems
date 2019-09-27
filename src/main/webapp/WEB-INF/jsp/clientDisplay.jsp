<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it</title>
    <link rel="stylesheet" type="text/css" href="/css/employeeDisplay.css" >
  </head>
  <body>
    <form action="clientController" method="post">
      <table cellpadding="20px">
        <tr>
          <td>ID</td>
          <td>${client.clientId}</td>
        </tr>
        <tr>
          <td>Name</td>
          <td>${client.clientName}</td>
        </tr>
        <tr>
          <td>Contact Person</td>
          <td>${client.contactPerson}</td>
        </tr>
        <tr>
          <td>Mobile Number</td>
          <td>${client.contactMobileNumber}</td>
        </tr>
        <tr>
          <td>E-mail</td>
          <td>${client.contactEmail}</td>
        </tr>
      </table>
      <c:forEach var="address" items="${client.addresses}">
        <table align="left" cellpadding="25px">
          <tr>
            <td>Address Type</td>
            <td>
              <c:out value="${address.addressType}"/>
            </td>
          </tr>
          <tr>
            <td>Door No</td>
            <td>
              <c:out value="${address.doorNo}"/>
            </td>
          </tr>
          <tr>
            <td>Street Name</td>
            <td>
              <c:out value="${address.streetName}"/>
            </td>
          </tr>
          <tr>
            <td>Locality</td>
            <td>
              <c:out value="${address.locality}"/>
            </td>
          </tr>
          <tr>
            <td>City Name</td>
            <td>
              <c:out value="${address.cityName}"/>
            </td>
          </tr>
          <tr>
            <td>State Name</td>
            <td>
              <c:out value="${address.stateName}"/>
            </td>
          </tr>
          <tr>
            <td>Pincode</td>
            <td>
              <c:out value="${address.pincodeNo}"/>
            </td>
          </tr>
        </table>
      </c:forEach>
      <input type="button"  value= "Ok" class="button buttonbackground" onclick="location.href='displayAllClientRedirect.jsp';">
      <img src="Ideas1.png" alt="Ideas2it logo" style="float:right;width:15%;height:15%;">  
    </form>
  </body>
</html>
