<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="/css/procreate.css" >
  </head>
  <body>
    <form action="createProject" method="post">
      <table cellpadding="10px">
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
        <td> <input type="date" name="startDate" maxlength="30" style="width:100%" required /></td>
        </tr>
        <tr>
          <td>Expected End Date</td>
          <td> <input type="date" name="expectedEndDate" maxlength="30" style="width:100%" required /></td>
        </tr>
        <tr>
        <td>Project Head Id</td>
        <td><input type="text" name="projectHeadId" maxlength="30" required /></td>
        </tr>
        <tr>
        <td><input type="hidden" name="clientId" maxlength="30" value="N/A" required /></td>
        </tr>
        <tr>
          <td colspan="2" align= "center" >
            <input type = "reset" value = "Reset" class="button buttonbackground">
            <input type = "submit" name="operation" value="Create" class="button buttonbackground" cellpadding="0px 0px 0px 10px">
            <input type="button"  value= "Back" class="button buttonbackground" onclick="location.href='displayAllProjectRedirect.jsp';">
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>
