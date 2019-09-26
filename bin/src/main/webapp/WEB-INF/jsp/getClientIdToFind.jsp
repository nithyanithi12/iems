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
    <title> welcome to ideas2it <span> &#128522;</span></title>
    <link rel="stylesheet" type="text/css" href="/css/style.css" >
  </head>
  <body>
    <form action="clientController" method="post">
      <table id="getIdTable" align="center" cellpadding="20px 0px 20px 0px">
        <tr>
          <td align= "Left">Enter Client Id</td>
          <td><input type="text" name="clientId" maxlength="10" required autofocus /></td>
        </tr>
        <tr>
          <td colspan=4 align= "center" >
            <input type = "submit" name="operation" value="View" class="button buttonbackground" cellpadding="0px 0px 0px 3px">
            <input type = "reset" value = "Reset" class="button buttonbackground">
            <input type="button"  value= "Exit" class="button buttonbackground" onclick="location.href='client.jsp';">
          </td>
        </tr>
      </table>
      <img src="Ideas1.png" alt="Ideas2it logo" style="float:right;width:15%;height:15%;">
    </form>
  </body>
</html>
