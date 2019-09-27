<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/result.css" >
    <title> welcome to ideas2it </title>
  </head>
  <body>
      <br>
      <br>
      <table align="center" >
        <tr>
          <td colspan=4 align= "center">
            <h2>Employee Added Successfully for ${projectId}</h2>
          </td>
        </tr>
      <br>
        <tr>
          <td colspan=2 align= "center" >
         <form action="addEmployeeToProjectRedirect" method="post">
          <input type="hidden" name="projectId" value="${projectId}" />
            <button type="submit" name="operation" value= "Add Employee Redirect" class="button buttonbackground" />Add More</button>
            </form>
            </td>
        </tr>
        <tr>  
          <td colspan=2 align= "center" >
         <form action="displayProjectEmployee" method="post">
          <input type="hidden" name="projectId" value="${projectId}" />
            <button type="submit" class="button buttonbackground" > Ok </button> 
         </form>
         </td>
        </tr>
      </table>
  </body>
</html>
