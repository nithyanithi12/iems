<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it <span> &#128522;</span></title>
    <link rel="stylesheet" type="text/css" href="/css/getId.css" >
  </head>
  <body>
    <form action="addProjectRedirect" method="post">
      <table id="getIdTable" align="center" cellpadding="20px 0px 20px 0px">
        <tr>
          <td colspan=2 align= "right">Enter Client Id :</td>
          <td><input type="text" name="clientId" maxlength="10" required autofocus /></td>
        </tr>
        <tr>
          <td colspan=3 align= "center" >
            <input type = "reset" value = "Reset" class="button buttonbackground" />
            <button type = "submit" class="button buttonbackground" cellpadding="0px 0px 0px 3px">Go</button>
            <input type="button"  value= "Exit" class="button buttonbackground" onclick="location.href='displayAllClientRedirect.jsp';" />
          </td>
        </tr>
      </table>
      <img src="Ideas1.png" alt="Ideas2it logo" style="float:right;width:15%;height:15%;">
    </form>
  </body>
</html>
