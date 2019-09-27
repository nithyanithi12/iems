<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <title> Employee management </title>
    <link rel="stylesheet" type="text/css" href="/css/employee.css" >
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="/js/applicationScript.js" ></script>    
    <script>
      function openurl(url){
        document.getElementById('iframe').src =url;
      }     
    </script>
  </head>
  <body>
    <div class = "empheader">
      <img class = "emplogo" src="/img/Ideas.png" alt="Ideas2it logo" width="150px" onclick="goBack();"/>
      <button class="empback" onclick="goBack();"><i class="fa fa-angle-double-left"></i></button>
      <h1 class = "empheadertext">Employee Management</h1>
    </div>
    <div class="empsidediv">
      <input type="submit" class = "button buttonbackground" target ="_self" value="Display All Employee" onclick="openurl('displayAllEmployeeRedirect')" /><br>
      <input type="submit" class = "button buttonbackground" target ="_self"  value="Create Employee" onclick="openurl('createEmployeeRedirect')" /><br>
      <input type="button" class = "button buttonbackground" value="Exit" onclick="location.href='exit'" />
      <form action="showmyactivities">
        <input type="submit" class = "button buttonbackground" value="YOUR ACTIVITIES" />
      </form>
    </div>
    <div class="empmaindiv">
      <iframe style="border-radius: 10px; border:none;" scrolling="yes" src="displayAllEmployeeRedirect.jsp" id="iframe" />
    </div>
  </body>
</html>
