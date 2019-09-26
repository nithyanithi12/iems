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
    <style>
      body {
      background-image: linear-gradient(#b3ffff 50%, #1ab2ff);
      font-family: Aclonica;
      background-repeat: repeat;
      margin: 20px 0px 0px 30px;
      }
      table {
      border:2px;
      border-style:inset;
      background-image:url(images.jpeg);
      background-repeat: no-repeat;
      background-size:370px 150px;
      width:300px;
      height:150px;;
      border-radius:5px;
      }
      .button {
      background-color: #7ed7ed;
      width:auto;
      height:25px;
      border-radius:10px;
      color:Black;
      }
      .buttonbackground {
      background-color: white;
      color: black;
      border: 2px solid #555555;
      }
      .buttonbackground:hover {
      background-image:linear-gradient(#b3ffff 50%, #1ab2ff);
      color: Black;
      }
    </style>
  </head>
  <body>
    <form action="projectController" method="post">
      <table align="center" cellpadding="10px 0px 10px 0px">
        <tr>
          <td colspan=4 align= "center">${projectId} does not Exist!!</td>
        </tr>
        <tr>
          <td colspan=4 align= "center" >
            <input type = "button" name="operation" value="Try Again" class="button buttonbackground" onclick="location.href='getProjectIdToManipulateEmployee.jsp'">
            <input type="button"  value= "Exit" class="button buttonbackground" onclick="location.href='project.jsp';">
            <input type="button"  value= "Home" class="button buttonbackground" onclick="location.href='index.jsp';">
          </td>
        </tr>
      </table>
      <img src="Ideas1.png" alt="Ideas2it logo" style="float:right;width:15%;height:15%;">
    </form>
  </body>
</html>
