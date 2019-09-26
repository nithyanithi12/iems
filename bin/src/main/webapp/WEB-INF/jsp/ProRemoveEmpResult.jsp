<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="/css/result.css" >
  </head>
  <body>
    <form action="displayProjectEmployee" method="post">
      <table align="center" >
        <tr>
          <td colspan=4 align= "center">
            <h2> Employee Removed from ${projectId} Successfully!! </h2>
          </td>
        </tr>
        <tr>
          <td><input type="hidden" name="projectId" value="${projectId}" /></td>
        </tr>
        <tr>
          <td colspan=4 align= "center" >
            <input type="submit"  name ="operation" value= "Ok" class="button buttonbackground" >
            <input type="button"  value= "Exit" class="button buttonbackground" onclick="location.href='project.jsp';">
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>
