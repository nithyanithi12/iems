<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head >
    <h1>
      <center style="color:#cc0088;">Project Management </center>
    </h1>
    <meta charset="UTF-8" />
    <title> Project management </title>
    <style>
      h1 {
      text-shadow:2px 3px 3px Red;
      }
      body {
      background-image: linear-gradient(#b3ffff 50%, #1ab2ff);
      background-repeat: no-repeat;
      background-size:cover;
      margin: 20px 0px 0px 30px;
      }
      h2,h3 {
      text-shadow: 0px 0px 7px #f702db;
      }
      .navigation {
      background-color: #4CAF50;
      border: none;
      color: sky-blue;
      padding: 16px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 0px 0px; 
      transition-duration: 0.10s;
      cursor: pointer;
      width:18%;
      height:7%;
      border-radius:15px;
      }
      .button {
      background-color: #4CAF50;
      border: none;
      color: sky-blue;
      padding: 16px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 10px 10px; 
      transition-duration: 0.10s;
      cursor: pointer;
      width:40%;
      height:10%;
      border-radius:40px;
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
    <center>
      <div style="padding: 20px 25% 0 25%;">
        <fieldset width= 50px height="50px">
          <legend>
            <center><img src="Ideas1.png" width=100px height=75px></center>
          </legend>
          <input type="button" class = "button buttonbackground" value="Add Employee to Project" onclick="location.href='createOwnProject.jsp'" /><br>
          <input type="button" class = "button buttonbackground" value="Remove Employee from Project" onclick="location.href='getProjectIdToManipulateEmployee.jsp'" /><br>
          <input type="button" class = "button buttonbackground" value="Display Employees in Project" onclick="location.href='getProjectIdToManipulateEmployee.jsp'" /><br><br>
          <input type="button" class = "navigation buttonbackground" value="Home" onclick="location.href='index.jsp'" />
          <input type="button" class = "navigation buttonbackground" value="Back" onclick="location.href='project.jsp'" />
        </fieldset>
      </div>
    </center>
    <img src="Ideas1.png" alt="Ideas2it logo" style="float:right;width:15%;height:15%;">
  </body>
</html>
