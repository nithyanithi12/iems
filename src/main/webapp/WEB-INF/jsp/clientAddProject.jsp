<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <h1>
      <center style="color:#cc0088;">
      Add Project</cenetr> 
    </h1>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/getId.css" >
    <title> welcome to ideas2it </title>
  </head>
  <body>
    <form action="addProject" method="post">
      <table id="createTable" align="center" cellpadding="20px">
        <tr>
          <td>Project Id</td>
          <td><input type="text" name="projectId" maxlength="30" required autofocus /></td>
        </tr>
        <td>Project Name</td>
        <td><input type="text" name="projectName" maxlength="30" required /></td>
        </tr>
        <tr>
          <td>Project Descreption Name</td>
          <td><input type="text" name="projectDescription" maxlength="30" required /></td>
        </tr>
        <td>Start Date</td>
        <td> <input type="date" name="startDate" maxlength="30" required /></td>
        </tr>
        <tr>
          <td>Expected End Date</td>
          <td> <input type="date" name="expectedEndDate" maxlength="30" required /></td>
        </tr>
        <td>Project Head Id</td>
        <td><input type="text" name="headId" maxlength="30" required /></td>
        <tr>
          <td colspan="2" align= "center" >            
            <input type="hidden" name="clientId" value="${client.clientId}">
            <input type = "reset" value = "Reset" class="button buttonbackground">
            <input type = "submit" class="button buttonbackground" cellpadding="0px 0px 0px 10px">
            <input type="button"  value= "Back" class="button buttonbackground" onclick="location.href='getClientIdForProject.jsp';">
          </td>
        </tr>
      </table>
      <img src="Ideas1.png" alt="Ideas2it logo" style="float:right;width:15%;height:15%;">
    </form>
  </body>
</html>
