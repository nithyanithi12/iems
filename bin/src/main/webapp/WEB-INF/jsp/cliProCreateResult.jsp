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
    <link rel="stylesheet" type="text/css" href="/css/style.css" >
    <title> welcome to ideas2it </title>
  </head>
  <body>
    <form action="addProjectRedirect" method="post">
      <table align="center" >
        <tr>
          <td colspan=4 align= "center">Hai, <%= request.getParameter("clientId") %>!!</td>
        </tr>
        <tr>
          <td align="center">Project Created Successfully!!</td>
        </tr>
        <tr>
          <td colspan=4 align= "center" >
            <input type="hidden" name="clientId"  value ="${clientId}" >
            <button type="submit" class="button buttonbackground" >Add another Project </button>
            <input type="button"  value= "Exit" class="button buttonbackground" onclick="location.href='displayAllClientRedirect.jsp';">
        </td>
      </tr>
    </table>
  </body>
</html>
