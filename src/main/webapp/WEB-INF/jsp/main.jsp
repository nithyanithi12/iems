<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="/css/index.css" >
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body id="indexBody">
    <div class="indexheader"><a href="main.jsp"><img class = "indexlogo" src="/img/Ideas.png" alt="Ideas2it logo" width="150px" /></a>
      <h1 class = "indexheadertext">Ideas2it Technologies</h1>
      <form action="logoutUser" method="post">
          <button type="submit" class="indexlogout" ><i class="fa fa-sign-out"><span class="tooltiptext">log out</span></i></button>
      </form>
    </div>
    <div id="indexdiv">
    <div>
      <h2>MENU</h2>
      <p>
      <h2>Welcome to Ideas2it Technologies</h2></p></center>
    </div>
    <br>
    <div class="maindiv">
      <div>
        <button class = "indexButton indexempbuttonbackground" value="Employee Manipulation " onclick="location.href='employee'">
          <span><p class="indexbuttontext">Employee</p></span>
        </button>
        <button class = "indexButton indexprobuttonbackground" value="Project Manipulation" onclick="location.href='project'">
          <span><p class="indexbuttontext">Project</p></span>
        </button>
        <button class = "indexButton indexcliButtonBackground" value="Client Manipulation" onclick="location.href='client'">
         <span><p class="indexbuttontext">Client</p></span>
        </button>
      </div>
    </div>   
    </div>
  </body>
</html>
