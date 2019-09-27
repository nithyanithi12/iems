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
    <link rel="stylesheet" type="css/text" href="css/style.css" >
  </head>
  <body>
    <form action="projectController" method="post">
      <table align="center" cellpadding="10px 0px 10px 0px">
        <tr>
          <td colspan=4 align= "center">Employee already Exist in ${project.projectName}</td>
          <td><input type="hidden" name="projectId" value="${project.projectId}" /></td>
        </tr>
        <tr>
          <td colspan=4 align= "center" >
            <input type = "submit" name="operation" value="Ok" class="button buttonbackground" cellpadding="0px 0px 0px 3px">
            <input type="button"  value= "Exit" class="button buttonbackground" onclick="location.href='project.jsp';">
            <input type="button"  value= "Home" class="button buttonbackground" onclick="location.href='index.jsp';">
          </td>
        </tr>
      </table>
      <img src="Ideas1.png" alt="Ideas2it logo" style="float:right;width:15%;height:15%;">
    </form>
  </body>
</html>
