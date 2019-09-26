<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <h2>
      <center style="color:#cc0088;">
      Ideas2it Technologies</cenetr> 
    </h2>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="css/style.css" >
  </head>
  <body>
    <table align="center" >
      <tr>
        <td colspan=4 align= "center"><h2>Project, <%= request.getParameter("projectName") %></h2></td>
      </tr>
      <tr>
        <td align="center"><h3>Updated Successfully!!</h3></td>
      </tr>
      <tr>
        <td align="center">  </td>
      </tr>
      <tr>
        <td colspan=4 align= "center" >
          <input type="button"  value= "Exit" class="button buttonbackground" onclick="location.href='displayAllProjectRedirect.jsp';">
        </td>
      </tr>
    </table>
    <img src="Ideas1.png" alt="Ideas2it logo" style="float:right;width:15%;height:15%;">
  </body>
</html>
