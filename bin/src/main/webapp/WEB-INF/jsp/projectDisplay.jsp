<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@page import="com.ideas2it.iems.model.Project" %>
<html>
  <head>
    <h1>
      <center style="color:#cc0088;">
      Displaying Project Details</center> 
    </h1>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="/css/employeeDisplay.css" >
  </head>
  <body>
    <form action="projectController" method="post">
      <table id="createTable" align="center" cellpadding="20px">
        <tr>
          <td><b>Project Id</b></td>
          <td>${project.projectId}</td>
        </tr>
        <td><b>Project Name</b></td>
        <td>${project.projectName}</td>
        </tr>
        <tr>
          <td><b>Project Descreption Name</b></td>
          <td>${project.projectDescription}</td>
        </tr>
        <td><b>Start Date</b></td>
        <td>${project.startDate}</td>
        </tr>
        <tr>
          <td><b>Expected End Date</b></td>
          <td>${project.expectedEndDate}</td>
        </tr>
        <tr>
          <td><b>Project Head Id</b></td>
          <td>${project.projectHeadId}</td>
        </tr>
        <tr>
          <td><b>Client Id</b></td>
          <td> ${client.id}</td>
        </tr>
        <td colspan="2" align= "center" >
          <input type="button"  value= "Ok" class="button buttonbackground" onclick="location.href='displayAllProjectRedirect.jsp';">
        </td>
        </tr>
      </table>
    </form>
  </body>
</html>
