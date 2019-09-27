<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head >
    <meta charset="UTF-8" />
    <title> Project management </title>
    <link rel="stylesheet" type="text/css" href="/css/project.css" >
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script>
      function openurl(url){
        document.getElementById('iframe').src =url;
      }
    </script>
  </head>
  <body>
    <div class = "proheader">
      <a href="main.jsp"><img class = "prologo" src="/img/Ideas.png" alt="Ideas2it logo" width="150px" /></a>
      <a class="proback" href="main.jsp"><i class="fa fa-angle-double-left"></i></a>
      <h1 class = "proheadertext">project Management</h1>    
    </div>
    <div class="prosidediv">
      <input type="button" class = "button buttonbackground" name="operation" value="Display All Project"  onclick="openurl('displayAllProjectRedirect.jsp')"/><br>
      <input type="button" class = "button buttonbackground" value="Create Own Project" target="_self" onclick="openurl('createOwnProjectRedirect.jsp')" /><br>
      <input type="button" class = "button buttonbackground" value="Manage Employees" target="_self" onclick="openurl('getProjectIdToManipulateEmployee.jsp')" /><br>
      <input type="button" class = "button buttonbackground" value="Exit" onclick="location.href='exit'" />
    </div>
    <div class="promaindiv">
      <iframe style="border-radius: 10px; border:none;" scrolling="yes" id="iframe" src="displayAllProjectRedirect.jsp"/>
    </div>    
  </body>
</html>
