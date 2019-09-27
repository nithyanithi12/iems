<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="/css/getId.css" >
    <script src="applicationScript.js" ></script>
  </head>
  <body>
    <form action="addEmployeeToProject" method="post">
      <table align="left" cellpadding="10px 0px 0px 5px">
        <tr>
          <td><input type="hidden" name="projectId" value="${projectId}" /></td>
        </tr>
        <tr>
            <center>
          <td colspan=2 >
              Enter Employee Id 
          </td>
          <td><input type="text" name="employeeId" maxlength="10" /></td> 
          </center>
        </tr>
        <tr>
          <td colspan="3" align= "center" >
            <input type="submit" name="operation" value= "Add Employee" class="button buttonbackground" />
            <input type="button"  value= "Back " class="button buttonbackground" onclick="goBack();" />
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>
