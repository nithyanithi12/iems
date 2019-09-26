<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="/css/getId.css" >
  </head>
  <body>
    <form action="displayProjectEmployee" method="POST">
      <table align="left" cellpadding="10px 0px 0px 5px">
        <tr>
          <td colspan=3 >Enter Project Id</td>
          <td><input type="text" name="projectId" maxlength="10" required autofocus /></td>
        </tr>
        <tr>
          <td colspan=4 align= "center" >
            <input type = "reset" value = "Reset" class="button buttonbackground">
            <button type = "submit" class="button buttonbackground" >Submit</button>
            <input type="button"  value= "cancel" class="button buttonbackground" onclick="location.href='displayAllProjectRedirect.jsp';">
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>
