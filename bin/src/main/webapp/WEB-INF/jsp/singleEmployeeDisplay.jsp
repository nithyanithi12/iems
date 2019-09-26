<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it</title>
    <link rel="stylesheet" type="text/css" href="/css/singleEmp.css" >
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body id="empBody">
    <div class="empheader"><a><img class = "emplogo" src="/img/Ideas.png" alt="Ideas2it logo" width="150px" /></a>
      <h1 class = "empheadertext">Employee Details</h1>
      <form action="logoutUser" method="post">
          <button type="submit" class="emplogout" name ="operation" value= "Logout" ><i class="fa fa-sign-out"><span class="tooltiptext">log out</span></i></button>
      </form>
    </div>
    <div id="empdiv">
    <div>
    <form >
      <table cellpadding="13px">
        <tr>
          <td>ID</td>
          <td>${employee.id}</td>
          <td>Experience</td>
          <td>${employee.experience}</td>
        </tr>
        <tr>
          <td>Name</td>
          <td>${employee.name}</td>
          <td>Mobile Number</td>
          <td>${employee.mobileNumber}</td>
        </tr>
        <tr>
          <td>Gender</td>
          <td>${employee.gender}</td>
          <td>E-Mail</td>
          <td>${employee.email}</td>
        </tr>
        <tr>
          <td>Blood Group</td>
          <td>${employee.bloodGroup}</td>
          <td>Role</td>
          <td>${employee.role}</td>
        </tr>
        <tr>
          <td>Date of Birth</td>
          <td>${employee.dob}</td>
          <td>Salary</td>
          <td>${employee.salary}</td>
        </tr>
        <tr>
          <td>Age</td>
          <td>${employee.age}</td>
          <td>ICE Number</td>
          <td>${employee.iceNumber}</td>
        </tr>
        <tr>
          <td>Date of Join</td>
          <td>${employee.doj}</td>
        </tr>
      </table>
      <c:forEach var="address" items="${employee.addresses}">
      <br>
        <table align="left" cellpadding="12px">
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
    </form>
    </div>
    </div>
  </body>
</html>
