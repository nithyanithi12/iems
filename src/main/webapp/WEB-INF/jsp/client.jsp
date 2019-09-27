<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <title> Client management </title>
    <link rel="stylesheet" type="text/css" href="/css/client.css" >
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script>
      function openurl(url){
        document.getElementById('iframe').src =url;
      }
    </script>
  </head>
  <body>
    <div class = "cliheader">
      <a href="main.jsp"><img class = "clilogo" src="/img/Ideas.png" alt="Ideas2it logo" width="150px" /></a>
      <a class="cliback" href="main.jsp"><i class="fa fa-angle-double-left"></i></a>
      <h1 class = "cliheadertext">Client Management</h1>    
    </div>
    <div class="clisidediv">
      <input type="submit" class = "button buttonbackground" target ="_self" value="Display All Client"  onclick="openurl('displayAllClientRedirect.jsp')"/><br>
      <input type="submit" class = "button buttonbackground" value="Add Client" target="_self" onclick="openurl('createClientRedirect.jsp')" /><br>
      <input type="submit" class = "button buttonbackground" value="Add Project" target="_self" onclick="openurl('getClientIdForProject.jsp')" /><br>
      <input type="button" class = "button buttonbackground" value="Exit" onclick="location.href='exit'" />
    </div>
    <div class="climaindiv">
      <iframe style="border-radius: 10px; border:none;" scrolling="yes" id="iframe" src="displayAllClientRedirect.jsp"/>
    </div>    
  </body>
</html>
